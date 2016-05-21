package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Tag;

import java.util.List;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/17.
 */
@Mapper
public interface TagMapper {

    List<Tag> selectTopRating(@Param("topNum") Integer topNum);

    Set<Tag> selectByJobID(@Param("jobID") Integer jobID);

}
