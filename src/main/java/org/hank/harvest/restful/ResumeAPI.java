package org.hank.harvest.restful;

import org.hank.harvest.domain.Resume;
import org.hank.harvest.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/22.
 */
@RestController
@RequestMapping("/api/1/resumes")
public class ResumeAPI {

    private ResumeService resumeService;

    @Autowired
    public void setResumeService(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Resume getOne(@PathVariable("id") Integer id) {
        return resumeService.findOne(id);
    }

}
