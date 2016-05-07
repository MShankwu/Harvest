package org.hank.harvest.controller;

import org.hank.harvest.domain.user.UserEntity;
import org.hank.harvest.service.UserService;
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
    public String doLogin(String email, String password, RedirectAttributes redirect, HttpSession httpSession) {
        UserEntity currentUser = userService.findByEmailAndPassword(email, password);
        if (currentUser == null) {
            redirect.addFlashAttribute("errorMessage", "登录失败：邮箱地址或者密码不正确！");
            redirect.addFlashAttribute("userEmail", email);
            redirect.addFlashAttribute("userPassword", password);
            return "redirect:/login";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping(value = "/logout.do", method = RequestMethod.GET)
    public String doLogout() {
        return "redirect:/";
    }

    @RequestMapping(value = "/register.do", method = RequestMethod.POST)
    public String doRegister(@ModelAttribute UserEntity user, RedirectAttributes redirect) {
        UserEntity currentUser = userService.save(user);
        redirect.addFlashAttribute("hasRegisted", true);
        return "redirect:/register";
    }

}
