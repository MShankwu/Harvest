package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.User;
import org.hank.harvest.utils.TalentConditionUtil;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@Mapper
public interface UserMapper {

    List<User> selectOneIndirect(@Param("user") User user);

    List<User> selectByConditions(@Param("talentConditions") TalentConditionUtil talentConditions);

    User selectOne(@Param("id") Integer id);

    void insertOne(User user);

    void updateUserDetail(@Param("id") Integer id, @Param("userDetailID") Integer userDetailID);

    void updateResume(@Param("id") Integer id, @Param("resumeID") Integer resumeID);

    void updateOne(User user);

}
