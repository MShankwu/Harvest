package org.hank.harvest.service;

import org.hank.harvest.domain.Job;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
public interface JobService {

    List<Job> findLatest(Integer limit);

}
