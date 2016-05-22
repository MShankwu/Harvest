package org.hank.harvest.service.impl;

import com.github.pagehelper.PageHelper;
import org.hank.harvest.domain.User;
import org.hank.harvest.mapper.ResumeMapper;
import org.hank.harvest.mapper.UserDetailMapper;
import org.hank.harvest.mapper.UserMapper;
import org.hank.harvest.service.UserService;
import org.hank.harvest.utils.CompanyConditionUtil;
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
    public List<User> findByConditions(TalentConditionUtil talentConditions, Integer pageNum, Integer pageSize) {
        if (pageNum != null) {
            PageHelper.startPage(pageNum, pageSize);
        }
        List<User> userList = userMapper.selectByConditions(talentConditions);
        for (int i = 0; i < userList.size(); ++i) {
            userList.set(i, findOne(userList.get(i).getId()));
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
    public User save(User user) {
        userMapper.insertOne(user);
        return user;
    }

}
