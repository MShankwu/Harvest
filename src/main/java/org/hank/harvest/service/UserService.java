package org.hank.harvest.service;

import org.hank.harvest.domain.*;
import org.hank.harvest.domain.Process;
import org.hank.harvest.utils.TalentConditionUtil;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
public interface UserService {

    List<User> findIndirect(User user);

    List<User> findByConditions(TalentConditionUtil talentConditionUtil, Integer pageNum, Integer pageSize);

    List<User> findAll();

    User findOne(Integer id);

    User saveOne(User user);

    UserDetail saveOneDetail(Integer id, UserDetail userDetail);

    Resume saveOneResume(Integer id, Resume resume);

    User editOne(User user);

    List<Message> findAllReceiveMessagesByID(Integer id);

    List<Message> findAllSendMessagesByID(Integer id);

    List<Process> findAllProcessesByID(Integer id);

    void editCompany(Integer id, Integer companyID);

}
