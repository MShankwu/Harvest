package org.hank.harvest.controller;

import org.hank.harvest.domain.User;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/5/27.
 */
@Controller
@RequestMapping("/action/management")
public class ManagementAction {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/password", method = RequestMethod.POST)
    public String doChange(String originPass, String targetPass, String targetPassSure, HttpSession httpSession, Model model) {
        User user = (User) httpSession.getAttribute("currentUser");
        if (user.getPassword().equals(originPass)) {
            user.setPassword(targetPass);
            userService.editOne(user);
            httpSession.setAttribute("currentUser", user);
            model.addAttribute("resultMsg", "成功修改密码!");
        } else {
            model.addAttribute("resultMsg", "原密码不正确!");
        }
        return "management_password";
    }

}
