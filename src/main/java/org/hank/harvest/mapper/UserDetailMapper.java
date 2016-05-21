package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.UserDetail;

/**
 * Created by Administrator on 2016/5/19.
 */
@Mapper
public interface UserDetailMapper {

    UserDetail selectOne(@Param("id") Integer id);

}
