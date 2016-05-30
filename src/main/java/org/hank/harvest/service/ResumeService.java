package org.hank.harvest.service;

import org.hank.harvest.domain.Resume;

/**
 * Created by Administrator on 2016/5/22.
 */
public interface ResumeService {

    Resume findOne(Integer id);

    Resume findOneByUserID(Integer userID);

}
