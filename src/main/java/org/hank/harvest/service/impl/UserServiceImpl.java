package org.hank.harvest.service.impl;

import com.github.pagehelper.PageHelper;
import org.hank.harvest.domain.*;
import org.hank.harvest.domain.Process;
import org.hank.harvest.mapper.*;
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
    private MessageMapper messageMapper;
    private ProcessMapper processMapper;

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

    @Autowired
    public void setMessageMapper(MessageMapper messageMapper) {
        this.messageMapper = messageMapper;
    }

    @Autowired
    public void setProcessMapper(ProcessMapper processMapper) {
        this.processMapper = processMapper;
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
    public List<User> findAll() {
        return userMapper.selectAll();
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
    public UserDetail saveOneDetail(Integer id, UserDetail userDetail) {
        UserDetail thisDetail = userDetailMapper.selectOneIndirectByUserID(id);
        if (thisDetail == null) {
            userDetailMapper.insertOne(userDetail);
            Integer userDetailID = userDetail.getId();
            userMapper.updateUserDetail(id, userDetailID);
            return userDetailMapper.selectOne(userDetailID);
        } else {
            userDetail.setId(thisDetail.getId());
            userDetailMapper.updateOne(userDetail);
            return userDetailMapper.selectOne(thisDetail.getId());
        }
    }

    @Override
    public Resume saveOneResume(Integer id, Resume resume) {
        Resume thisResume = resumeMapper.selectOneIndirectByUserID(id);
        if (thisResume == null) {
            resumeMapper.insertOne(resume);
            Integer resumeID = resume.getId();
            userMapper.updateResume(id, resumeID);
            return resumeMapper.selectOne(resumeID);
        } else {
            resume.setId(thisResume.getId());
            resumeMapper.updateOne(resume);
            return resumeMapper.selectOne(thisResume.getId());
        }
    }

    @Override
    public User editOne(User user) {
        userMapper.updateOne(user);
        return userMapper.selectOne(user.getId());
    }

    @Override
    public List<Message> findAllReceiveMessagesByID(Integer id) {
        return messageMapper.selectAllByReceiverID(id);
    }

    @Override
    public List<Message> findAllSendMessagesByID(Integer id) {
        return messageMapper.selectAllBySenderID(id);
    }

    @Override
    public List<Process> findAllProcessesByID(Integer id) {
        return processMapper.selectIndirectByUserID(id);
    }

    @Override
    public void editCompany(Integer id, Integer companyID) {
        userMapper.updateCompany(id, companyID);
    }

}
