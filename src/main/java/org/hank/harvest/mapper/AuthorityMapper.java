package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Authority;

/**
 * Created by Administrator on 2016/5/16.
 */
@Mapper
public interface AuthorityMapper {

    Authority find(@Param("id") Integer id);

}
