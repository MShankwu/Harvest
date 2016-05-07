package org.hank.harvest.service;

import org.hank.harvest.domain.user.UserEntity;

/**
 * Created by Administrator on 2016/4/15.
 */
public interface UserService {

    UserEntity findByEmail(String email);

    UserEntity findByEmailAndPassword(String email, String password);

    UserEntity save(UserEntity user);

}
