package org.hank.harvest.service.impl;

import com.github.pagehelper.PageHelper;
import org.hank.harvest.domain.User;
import org.hank.harvest.mapper.ResumeMapper;
import org.hank.harvest.mapper.UserDetailMapper;
import org.hank.harvest.mapper.UserMapper;
import org.hank.harvest.service.UserService;
import org.hank.harvest.utils.TalentConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;
    private ResumeMapper resumeMapper;
    private UserDetailMapper userDetailMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Autowired
    public void setResumeMapper(ResumeMapper resumeMapper) {
        this.resumeMapper = resumeMapper;
    }

    @Autowired
    public void setUserDetailMapper(UserDetailMapper userDetailMapper) {
        this.userDetailMapper = userDetailMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> findIndirect(User user) {
        return userMapper.selectOneIndirect(user);
    }

    @Override
    @Transactional(readOnly = true)
    public List<User> findByConditions(TalentConditionUtil talentConditions, Integer pageNum, Integer pageSize) {
        if (pageNum != null) {
            PageHelper.startPage(pageNum, pageSize);
        }
        List<User> userList = userMapper.selectByConditions(talentConditions);
        for (int i = 0; i < userList.size(); ++i) {
            User user = userMapper.selectOne(userList.get(i).getId());
            user.setResume(resumeMapper.selectOneIndirectByUserID(user.getId()));
            user.setDetail(userDetailMapper.selectOneIndirectByUserID(user.getId()));
            userList.set(i, user);
        }
        return userList;
    }

    @Override
    @Transactional(readOnly = true)
    public User findOne(Integer id) {
        User user = userMapper.selectOne(id);
        user.setResume(resumeMapper.selectOneIndirectByUserID(id));
        user.setDetail(userDetailMapper.selectOneIndirectByUserID(id));
        return user;
    }

    @Override
    public User saveOne(User user) {
        userMapper.insertOne(user);
        return user;
    }

    @Override
    public User editOne(User user) {
        userMapper.updateOne(user);
        return userMapper.selectOne(user.getId());
    }

}
