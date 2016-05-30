package org.hank.harvest.restful;

import org.hank.harvest.domain.Process;
import org.hank.harvest.service.ProcessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by Administrator on 2016/5/29.
 */
@RestController
@RequestMapping("/api/1/processes")
public class ProcessAPI {

    private ProcessService processService;

    @Autowired
    public void setProcessService(ProcessService processService) {
        this.processService = processService;
    }

    @RequestMapping(method = RequestMethod.POST, consumes = "application/json")
    public Integer postOne(@RequestBody Process process) {
        return processService.saveProcess(process);
    }

    @RequestMapping(method = RequestMethod.GET)
    public Process getOneIndirect(Integer userID, Integer jobID) {
        return processService.findOneIndirect(userID, jobID);
    }

}
