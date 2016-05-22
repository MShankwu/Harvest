package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Resume;

/**
 * Created by Administrator on 2016/5/22.
 */
@Mapper
public interface ResumeMapper {

    Resume selectOne(@Param("id") Integer id);

    Resume selectOneIndirectByUserID(@Param("userID") Integer userID);

}
