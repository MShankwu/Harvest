package org.hank.harvest.service;

import org.hank.harvest.domain.User;
import org.hank.harvest.utils.CompanyConditionUtil;
import org.hank.harvest.utils.TalentConditionUtil;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
public interface UserService {

    List<User> findIndirect(User user);

    List<User> findByConditions(TalentConditionUtil talentConditionUtil, Integer pageNum, Integer pageSize);

    User findOne(Integer id);

    User saveOne(User user);

    User editOne(User user);

}
