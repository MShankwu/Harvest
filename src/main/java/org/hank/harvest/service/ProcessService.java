package org.hank.harvest.service;

import org.hank.harvest.domain.process.ProcessEntity;

/**
 * Created by Administrator on 2016/5/6.
 */
public interface ProcessService {

    ProcessEntity findById(Integer id);

}
