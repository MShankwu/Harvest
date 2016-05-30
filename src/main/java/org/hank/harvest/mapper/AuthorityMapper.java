package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Authority;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@Mapper
public interface AuthorityMapper {

    Authority selectOne(@Param("id") Integer id);

    List<Authority> selectAll();

    void insertOne(Authority authority);

    void updateOne(Authority authority);

    void deleteOne(@Param("id") Integer id);

}
