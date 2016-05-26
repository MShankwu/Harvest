package org.hank.harvest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/5/26.
 */
@Controller
@RequestMapping("/management")
public class ManagementPageController {

    @RequestMapping(value = "/password", method = RequestMethod.GET)
    public String showManagementPassword() {
        return "management_password";
    }

}
