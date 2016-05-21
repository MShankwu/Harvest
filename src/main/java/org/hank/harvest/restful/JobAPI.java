package org.hank.harvest.restful;

import org.hank.harvest.domain.Job;
import org.hank.harvest.domain.Tag;
import org.hank.harvest.service.JobService;
import org.hank.harvest.utils.JobConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Set;

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
    public List<Job> getSome(HttpServletRequest request, Integer pageNum, Integer pageSize) {
        if (request.getParameter("service") != null) {
            String service = request.getParameter("service");
            switch (service) {
                case "latest":
                    Integer latest = Integer.valueOf(request.getParameter("latest"));
                    return jobService.findLatest(latest);
                case "jobConditions":
                    Integer salaryID = request.getParameter("salaryID") != null? Integer.valueOf(request.getParameter("salaryID")) : null;
                    Integer experienceID = request.getParameter("experienceID") != null? Integer.valueOf(request.getParameter("experienceID")) : null;
                    Integer graduationID = request.getParameter("graduationID") != null? Integer.valueOf(request.getParameter("graduationID")) : null;
                    Integer categoryID = request.getParameter("categoryID") != null? Integer.valueOf(request.getParameter("categoryID")) : null;
                    String keyword = request.getParameter("keyword") != null && !request.getParameter("keyword").equals("")? request.getParameter("keyword") : null;
                    JobConditionUtil jobConditions = new JobConditionUtil(salaryID, experienceID, graduationID, categoryID, keyword);
                    return jobService.findByConditions(jobConditions);
                default:
                    break;
            }
        }
        return jobService.findAll(pageNum, pageSize);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public Job getOne(@PathVariable("id") Integer id) {
        return jobService.findOne(id);
    }

    @RequestMapping(value = "/{id}/tags", method = RequestMethod.GET)
    public Set<Tag> getAllTags(@PathVariable("id") Integer id) {
        return jobService.findAllTagsByID(id);
    }

}
