package org.hank.harvest.service;

import org.hank.harvest.domain.userdetail.UserDetailEntity;

/**
 * Created by Administrator on 2016/5/6.
 */
public interface UserDetailService {

    UserDetailEntity findById(Integer id);

}
