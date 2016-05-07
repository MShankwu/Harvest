package org.hank.harvest.service;

import org.hank.harvest.domain.job.JobEntity;

/**
 * Created by Administrator on 2016/5/6.
 */
public interface JobService {

    JobEntity findById(Integer id);

}
