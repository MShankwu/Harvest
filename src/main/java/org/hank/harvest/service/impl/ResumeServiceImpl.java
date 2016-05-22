package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Resume;
import org.hank.harvest.mapper.ResumeMapper;
import org.hank.harvest.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/22.
 */
@Service
@Transactional
public class ResumeServiceImpl implements ResumeService {

    private ResumeMapper resumeMapper;

    @Autowired
    public void setResumeMapper(ResumeMapper resumeMapper) {
        this.resumeMapper = resumeMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public Resume findOne(Integer id) {
        return resumeMapper.selectOne(id);
    }

}
