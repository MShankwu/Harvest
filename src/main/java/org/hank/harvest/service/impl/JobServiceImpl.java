package org.hank.harvest.service.impl;

import com.github.pagehelper.PageHelper;
import org.hank.harvest.domain.Job;
import org.hank.harvest.domain.Tag;
import org.hank.harvest.mapper.JobMapper;
import org.hank.harvest.mapper.TagMapper;
import org.hank.harvest.service.JobService;
import org.hank.harvest.utils.JobConditionUtil;
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
    private TagMapper tagMapper;

    @Autowired
    public void setJobMapper(JobMapper jobMapper) {
        this.jobMapper = jobMapper;
    }

    @Autowired
    public void setTagMapper(TagMapper tagMapper) {
        this.tagMapper = tagMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Job> findLatest(Integer latest) {
        return jobMapper.selectLatest(latest);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Job> findByConditions(JobConditionUtil jobConditions, Integer pageNum, Integer pageSize) {
        if (pageNum != null) {
            PageHelper.startPage(pageNum, pageSize);
        }
        List<Job> jobList = jobMapper.selectByConditions(jobConditions);
        for (Job job : jobList) {
            job.setTags(tagMapper.selectByJobID(job.getId()));
        }
        return jobList;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Job> findAll(Integer pageNum, Integer pageSize) {
        if (pageNum != null) {
            PageHelper.startPage(pageNum, pageSize);
        }
        return jobMapper.selectAll();
    }

    @Override
    public List<Job> findAll() {
        return jobMapper.selectAll();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Tag> findAllTagsByID(Integer id) {
        return tagMapper.selectByJobID(id);
    }

    @Override
    @Transactional(readOnly = true)
    public Job findOne(Integer id) {
        Job job = jobMapper.selectOne(id);
        job.setTags(tagMapper.selectByJobID(job.getId()));
        return job;
    }

    @Override
    public Integer saveOne(Job job) {
        jobMapper.insertOne(job);
        Integer jobID = job.getId();
        List<Tag> tags = job.getTags();
        for (Tag tag : tags) {
            Tag result = tagMapper.selectOneIndirectByName(tag.getName());
            if (result == null) {
                tag.setRating(0);
                tagMapper.insertOne(tag);
            } else {
                tag.setId(result.getId());
            }
            jobMapper.insertOneTag(jobID, tag.getId());
        }
        return jobID;
    }

}
