package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.User;

/**
 * Created by Administrator on 2016/5/16.
 */
@Mapper
public interface UserMapper {

    User selectOne(@Param("user") User user);

    void insertOne(User user);

}
