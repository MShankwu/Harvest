package org.hank.harvest.controller;

import org.hank.harvest.domain.*;
import org.hank.harvest.domain.Process;
import org.hank.harvest.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2016/5/27.
 */
@Controller
@RequestMapping("/action/management")
public class ManagementAction {

    private UserService userService;
    private MessageService messageService;
    private ProcessService processService;
    private JobService jobService;
    private CompanyService companyService;
    private CompanyAuthenticationService companyAuthenticationService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
    }

    @Autowired
    public void setProcessService(ProcessService processService) {
        this.processService = processService;
    }

    @Autowired
    public void setJobService(JobService jobService) {
        this.jobService = jobService;
    }

    @Autowired
    public void setCompanyService(CompanyService companyService) {
        this.companyService = companyService;
    }

    @Autowired
    public void setCompanyAuthenticationService(CompanyAuthenticationService companyAuthenticationService) {
        this.companyAuthenticationService = companyAuthenticationService;
    }

    @RequestMapping(value = "/password", method = RequestMethod.POST)
    public String doChange(String originPass, String targetPass, String targetPassSure, HttpSession httpSession, Model model) {
        User user = (User) httpSession.getAttribute("currentUser");
        if (user.getPassword().equals(originPass)) {
            user.setPassword(targetPass);
            userService.editOne(user);
            httpSession.setAttribute("currentUser", user);
            model.addAttribute("resultMsg", "成功修改密码!");
        } else if (!targetPass.equals(targetPassSure)) {
            model.addAttribute("resultMsg", "两次新密码不一致!");
        } else {
            model.addAttribute("resultMsg", "原密码不正确!");
        }
        return "management_password";
    }

    @RequestMapping(value = "/userDetail", method = RequestMethod.POST)
    public String doSaveDetail(@ModelAttribute UserDetail userDetail, HttpSession httpSession, RedirectAttributes redirect) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        userService.saveOneDetail(currentUserID, userDetail);
        redirect.addFlashAttribute("resultMsg", "保存成功！");
        return "redirect:/management/detail";
    }

    @RequestMapping(value = "/message", method = RequestMethod.POST)
    public String doSendEmail(String title, String email, String content, HttpSession httpSession, RedirectAttributes redirect) {
        List<User> userList = userService.findIndirect(new User(email));
        if (userList.size() == 0) {
            redirect.addFlashAttribute("resultMsg", "发送失败：目标邮箱无效！");
        } else {
            User receiver = userList.get(0);
            User sender = ((User) httpSession.getAttribute("currentUser"));
            Message message = new Message(title, content, receiver, sender);
            messageService.saveOne(message);
            redirect.addFlashAttribute("resultMsg", "发送成功！");
        }
        return "redirect:/management/message";
    }

    @RequestMapping(value = "/resume", method = RequestMethod.POST)
    public String doSaveResume(@ModelAttribute Resume resume, HttpSession httpSession, RedirectAttributes redirect) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        userService.saveOneResume(currentUserID, resume);
        redirect.addFlashAttribute("resultMsg", "保存成功！");
        return "redirect:/management/authority/resume";
    }

    @RequestMapping(value = "/resume/send", method = RequestMethod.GET)
    public String doSendResume(Integer jobID, HttpSession httpSession, RedirectAttributes redirect) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        Process process = processService.findOneIndirect(currentUserID, jobID);
        if (process != null) {
            redirect.addFlashAttribute("resultMsg", "已经投递过这个岗位啦！");
            return "redirect:/job/" + jobID;
        } else {
            User user = userService.findOne(currentUserID);
            Job job = jobService.findOne(jobID);
            process = new Process();
            process.setUser(user);
            process.setJob(job);
            process.setStatus("简历待处理");
            processService.saveProcess(process);
            redirect.addFlashAttribute("resultMsg", "投递成功！");
            return "redirect:/management/authority/process";
        }
    }

    @RequestMapping(value = "/company/authentication", method = RequestMethod.POST)
    public String doCompanyAuthentication(Integer companyID, HttpSession httpSession, RedirectAttributes redirect) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        CompanyAuthentication thisCompanyAuthentication = companyAuthenticationService.findOneIndirectByUserID(currentUserID);
        if (thisCompanyAuthentication != null) {
            redirect.addFlashAttribute("resultMsg", "您已提交过认证，请静待审核！");
        } else {
            User currentUser = userService.findOne(currentUserID);
            Company company = companyService.findOne(companyID);
            CompanyAuthentication companyAuthentication = new CompanyAuthentication();
            companyAuthentication.setUser(currentUser);
            companyAuthentication.setCompany(company);
            companyAuthentication.setStatus("待认证");
            companyAuthenticationService.saveCompanyAuthentication(companyAuthentication);
            redirect.addFlashAttribute("resultMsg", "已提交认证！");
        }
        return "redirect:/management/authority/companyAuthentication";
    }

}
