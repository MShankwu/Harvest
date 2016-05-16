package org.hank.harvest.restful;

import org.hank.harvest.domain.Job;
import org.hank.harvest.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@RestController
@RequestMapping("/api/1/jobs")
public class JobAPI {

    private JobService jobService;

    @Autowired
    public void setJobService(JobService jobService) {
        this.jobService = jobService;
    }

    @RequestMapping(method = RequestMethod.GET)
    public List<Job> getList(Integer limit) {
        return jobService.findLatest(limit);
    }

}
