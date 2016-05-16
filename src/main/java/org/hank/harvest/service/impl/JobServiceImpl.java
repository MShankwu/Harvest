package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Job;
import org.hank.harvest.mapper.JobMapper;
import org.hank.harvest.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@Service
@Transactional
public class JobServiceImpl implements JobService {

    private JobMapper jobMapper;

    @Autowired
    public void setJobMapper(JobMapper jobMapper) {
        this.jobMapper = jobMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Job> findLatest(Integer limit) {
        return jobMapper.findLatest(limit);
    }

}
