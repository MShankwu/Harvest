package org.hank.harvest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/5/18.
 */
@Controller
public class CompanyPageController {

    @RequestMapping(value = "/company", method = RequestMethod.GET)
    public String showCompany() {
        return "company";
    }

}
