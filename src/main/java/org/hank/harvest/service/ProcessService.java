package org.hank.harvest.service;

import org.hank.harvest.domain.Process;

import java.util.List;

/**
 * Created by Administrator on 2016/5/29.
 */
public interface ProcessService {

    Integer saveProcess(Process process);

    Process findOneIndirect(Integer userID, Integer jobID);

    List<Process> findIndirectByCompanyID(Integer companyID);

    void editOne(Integer id, String status);

}
