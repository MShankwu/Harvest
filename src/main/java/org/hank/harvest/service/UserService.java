package org.hank.harvest.service;

import org.hank.harvest.domain.User;

/**
 * Created by Administrator on 2016/4/15.
 */
public interface UserService {

    User findByUserAccount(String userAccount);

}
