package org.hank.harvest.controller;

import org.hank.harvest.domain.Message;
import org.hank.harvest.domain.User;
import org.hank.harvest.domain.UserDetail;
import org.hank.harvest.service.MessageService;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/5/27.
 */
@Controller
@RequestMapping("/action/management")
public class ManagementAction {

    private UserService userService;
    private MessageService messageService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @Autowired
    public void setMessageService(MessageService messageService) {
        this.messageService = messageService;
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

}
