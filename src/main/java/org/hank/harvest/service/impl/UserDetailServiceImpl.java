package org.hank.harvest.service.impl;

import org.hank.harvest.domain.UserDetail;
import org.hank.harvest.mapper.UserDetailMapper;
import org.hank.harvest.service.UserDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/19.
 */
@Service
@Transactional
public class UserDetailServiceImpl implements UserDetailService {

    private UserDetailMapper userDetailMapper;

    @Autowired
    public void setUserDetailMapper(UserDetailMapper userDetailMapper) {
        this.userDetailMapper = userDetailMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetail findOne(Integer id) {
        return userDetailMapper.selectOne(id);
    }

    @Override
    @Transactional(readOnly = true)
    public UserDetail findOneByUserID(Integer userID) {
        return userDetailMapper.selectOneIndirectByUserID(userID);
    }

    @Override
    public Integer saveOne(UserDetail userDetail) {
        userDetailMapper.insertOne(userDetail);
        return userDetail.getId();
    }

    @Override
    public UserDetail editOne(UserDetail userDetail) {
        userDetailMapper.updateOne(userDetail);
        return userDetailMapper.selectOne(userDetail.getId());
    }

}
