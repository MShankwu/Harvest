package org.hank.harvest.service.impl;

import org.hank.harvest.domain.User;
import org.hank.harvest.mapper.UserMapper;
import org.hank.harvest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/16.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public User findOne(User user) {
        return userMapper.selectOne(user);
    }

    @Override
    public User save(User user) {
        userMapper.insertOne(user);
        return user;
    }

}
