package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Process;
import org.hank.harvest.mapper.ProcessMapper;
import org.hank.harvest.service.ProcessService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/5/29.
 */
@Service
@Transactional
public class ProcessServiceImpl implements ProcessService {

    private ProcessMapper processMapper;

    @Autowired
    public void setProcessMapper(ProcessMapper processMapper) {
        this.processMapper = processMapper;
    }

    @Override
    public Integer saveProcess(Process process) {
        processMapper.insertOne(process);
        return process.getId();
    }

    @Override
    @Transactional(readOnly = true)
    public Process findOneIndirect(Integer userID, Integer jobID) {
        return processMapper.selectOneIndirect(userID, jobID);
    }

    @Override
    public List<Process> findIndirectByCompanyID(Integer companyID) {
        return processMapper.selectIndirectByCompanyID(companyID);
    }

    @Override
    public void editOne(Integer id, String status) {
        processMapper.updateOne(id, status);
    }

}
