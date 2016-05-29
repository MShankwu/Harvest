package org.hank.harvest.service;

import org.hank.harvest.domain.Process;

/**
 * Created by Administrator on 2016/5/29.
 */
public interface ProcessService {

    Integer saveProcess(Process process);

    Process findOneIndirect(Integer userID, Integer jobID);

}
