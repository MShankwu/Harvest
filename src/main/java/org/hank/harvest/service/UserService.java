package org.hank.harvest.service;

import org.hank.harvest.domain.User;

/**
 * Created by Administrator on 2016/5/16.
 */
public interface UserService {

    User findOne(User user);

    User save(User user);

}
