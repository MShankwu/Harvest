package org.hank.harvest.controller;

import org.hank.harvest.service.JobService;
import org.hank.harvest.utils.JobConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Administrator on 2016/5/18.
 */
@Controller
@RequestMapping("/job")
public class JobPageController {

    private JobService jobService;

    @Autowired
    public void setJobService(JobService jobService) {
        this.jobService = jobService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public String showJob(Model model) {
        model.addAttribute("jobChoicesIDs", JobConditionUtil.JOB_CHOICES_IDS);
        model.addAttribute("jobChoices", JobConditionUtil.JOB_CHOICES);
        model.addAttribute("jobChoicesContents", JobConditionUtil.JOB_CHOICES_CONTENTS);
        return "job";
    }

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String showJobSearch(Integer salaryID, Integer experienceID,
                              Integer graduationID, Integer categoryID,
                              String keyword, Integer pageNum, Integer pageSize,
                              Model model) {
        JobConditionUtil jobConditions = new JobConditionUtil(salaryID, experienceID,
                graduationID, categoryID, keyword);
        model.addAttribute("jobList", jobService.findByConditions(jobConditions, pageNum, pageSize));
        return "job_list";
    }

    @RequestMapping(value = "/{id}")
    public String showJobID(@PathVariable("id") Integer id, Model model) {
        model.addAttribute("job", jobService.findOne(id));
        return "job_id";
    }

}
