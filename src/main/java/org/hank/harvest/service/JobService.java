package org.hank.harvest.service;

import org.hank.harvest.domain.Job;
import org.hank.harvest.domain.Tag;
import org.hank.harvest.utils.JobConditionUtil;

import java.util.List;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/16.
 */
public interface JobService {

    List<Job> findLatest(Integer latest);

    List<Job> findByConditions(JobConditionUtil jobConditions, Integer pageNum, Integer pageSize);

    List<Job> findAll(Integer pageNum, Integer pageSize);

    Set<Tag> findAllTagsByID(Integer id);

    Job findOne(Integer id);

}
