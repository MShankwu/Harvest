package org.hank.harvest.controller;

import org.hank.harvest.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/4/17.
 */
@Controller
public class PageController {

    private JobService jobService;

    @Autowired
    public void setJobService(JobService jobService) {
        this.jobService = jobService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcome() {
        return "redirect:/index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String showIndex(Model model) {
        model.addAttribute("latestJobs", jobService.findLatest(10));
        return "index";
    }

    @RequestMapping(value = "/job", method = RequestMethod.GET)
    public String showJob() {
        return "job";
    }

    @RequestMapping(value = "/company", method = RequestMethod.GET)
    public String showCompany() {
        return "company";
    }

    @RequestMapping(value = "/talent", method = RequestMethod.GET)
    public String showTalent() {
        return "talent";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegister() {
        return "register";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showLogin() {
        return "login";
    }

}
