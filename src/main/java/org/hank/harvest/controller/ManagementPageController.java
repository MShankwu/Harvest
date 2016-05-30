package org.hank.harvest.controller;

import org.hank.harvest.domain.*;
import org.hank.harvest.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Administrator on 2016/5/26.
 */
@Controller
@RequestMapping("/management")
public class ManagementPageController {

    private UserDetailService userDetailService;
    private UserService userService;
    private MessageService messageService;
    private ResumeService resumeService;
    private CompanyService companyService;
    private CompanyAuthenticationService companyAuthenticationService;
    private ProcessService processService;

    @Autowired
    public void setUserDetailService(UserDetailService userDetailService) {
        this.userDetailService = userDetailService;
    }

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
    }

    @Autowired
    public void setResumeService(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    @Autowired
    public void setCompanyService(CompanyService companyService) {
        this.companyService = companyService;
    }

    @Autowired
    public void setCompanyAuthenticationService(CompanyAuthenticationService companyAuthenticationService) {
        this.companyAuthenticationService = companyAuthenticationService;
    }

    @Autowired
    public void setProcessService(ProcessService processService) {
        this.processService = processService;
    }

    @RequestMapping(value = "/password", method = RequestMethod.GET)
    public String showManagementPassword() {
        return "management_password";
    }

    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String showManagementDetail(HttpSession httpSession, Model model) {
        User user = (User) httpSession.getAttribute("currentUser");
        UserDetail userDetail = userDetailService.findOneByUserID(user.getId());
        if (userDetail != null) {
            model.addAttribute("detail", userDetail);
        } else {
            model.addAttribute("detail", new UserDetail());
        }
        return "management_detail";
    }

    @RequestMapping(value = "/message", method = RequestMethod.GET)
    public String showManagementMessage(HttpServletRequest request, HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        model.addAttribute("receiveMessages", userService.findAllReceiveMessagesByID(currentUserID));
        model.addAttribute("sendMessages", userService.findAllSendMessagesByID(currentUserID));
        if (request.getParameter("email") != null) {
            model.addAttribute("targetEmail", request.getParameter("email"));
        }
        return "management_message";
    }

    @RequestMapping(value = "/message/{id}", method = RequestMethod.GET)
    public String showManagementMessageID(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("message", messageService.findOne(id));
        return "management_message_id";
    }

    @RequestMapping(value = "/authority", method = RequestMethod.GET)
    public String showManagementAuthority(HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        Authority authority = userService.findOne(currentUserID).getAuthority();
        model.addAttribute("authority", authority);
        return "management_authority";
    }

    @RequestMapping(value = "/authority/resume", method = RequestMethod.GET)
    public String showManagementAuthorityResume(HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        Authority authority = userService.findOne(currentUserID).getAuthority();
        model.addAttribute("authority", authority);
        Resume resume = resumeService.findOneByUserID(currentUserID);
        if (resume != null) {
            model.addAttribute("resume", resume);
        } else {
            model.addAttribute("resume", new Resume());
        }
        return "management_authority_resume";
    }

    @RequestMapping(value = "/authority/process", method = RequestMethod.GET)
    public String showManagementAuthorityProcess(HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        Authority authority = userService.findOne(currentUserID).getAuthority();
        model.addAttribute("authority", authority);
        model.addAttribute("processes", userService.findAllProcessesByID(currentUserID));
        return "management_authority_process";
    }

    @RequestMapping(value = "/authority/companyAuthentication", method = RequestMethod.GET)
    public String showManagementAuthorityCompanyAuthentication(HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        User currentUser = userService.findOne(currentUserID);
        Authority authority = currentUser.getAuthority();
        model.addAttribute("authority", authority);
        Company company = currentUser.getCompany();
        CompanyAuthentication companyAuthentication = companyAuthenticationService.findOneIndirectByUserID(currentUserID);
        if (company != null) {
            model.addAttribute("company", company);
        } else if (companyAuthentication != null) {
            model.addAttribute("companyAuthentication", companyAuthentication);
        } else {
            List<Company> choices = companyService.findAll();
            model.addAttribute("choices", choices);
        }
        return "management_authority_company_authentication";
    }

    @RequestMapping(value = "/authority/job", method = RequestMethod.GET)
    public String showManagementAuthorityJob(HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        User currentUser = userService.findOne(currentUserID);
        Authority authority = currentUser.getAuthority();
        Company company = currentUser.getCompany();
        model.addAttribute("authority", authority);
        if (company == null) {
            return "redirect:/management/authority/companyAuthentication";
        }
        company = companyService.findOne(company.getId());
        model.addAttribute("company", company);
        return "management_authority_job";
    }

    @RequestMapping(value = "/authority/process/hr", method = RequestMethod.GET)
    public String showManagementAuthorityProcessHR(HttpSession httpSession, Model model) {
        Integer currentUserID = ((User) httpSession.getAttribute("currentUser")).getId();
        User currentUser = userService.findOne(currentUserID);
        Authority authority = userService.findOne(currentUserID).getAuthority();
        Company company = currentUser.getCompany();
        model.addAttribute("authority", authority);
        if (company == null) {
            return "redirect:/management/authority/companyAuthentication";
        }
        model.addAttribute("processes", processService.findIndirectByCompanyID(company.getId()));
        return "management_authority_process_hr";
    }

}
