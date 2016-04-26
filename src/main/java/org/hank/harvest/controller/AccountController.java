package org.hank.harvest.controller;

import org.hank.harvest.domain.User;
import org.hank.harvest.service.UserService;
import org.hank.harvest.utils.CurrentUserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by Administrator on 2016/4/23.
 */
@Controller
public class AccountController {

    private UserService userService;

    @Autowired
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/login.do", method = RequestMethod.GET)
    public String doLogin(String userEmail, String userPassword, RedirectAttributes redirect, HttpSession httpSession) {
        User currentUser = userService.findByUserEmailAndUserPassword(userEmail, userPassword);
        if (currentUser == null) {
            redirect.addFlashAttribute("errorMessage", "登录失败：邮箱地址或者密码不正确！");
            redirect.addFlashAttribute("userEmail", userEmail);
            redirect.addFlashAttribute("userPassword", userPassword);
            return "redirect:/login";
        } else {
            CurrentUserUtils.getInstance().setCurrentUser(currentUser);
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String doLogout() {
        CurrentUserUtils.getInstance().removeCurrentUser();
        return "redirect:/";
    }

    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    public String doRegister(@ModelAttribute User user, RedirectAttributes redirect) {
        User currentUser = userService.save(user);
        CurrentUserUtils.getInstance().setCurrentUser(currentUser);
        redirect.addFlashAttribute("hasRegisted", true);
        return "redirect:/register";
    }

}
