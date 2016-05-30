package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Tag;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@Mapper
public interface TagMapper {

    List<Tag> selectTopRating(@Param("topNum") Integer topNum);

    List<Tag> selectByJobID(@Param("jobID") Integer jobID);

    Tag selectOneIndirectByName(@Param("name") String name);

    void insertOne(Tag tag);
}
