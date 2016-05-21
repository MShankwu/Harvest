package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Job;
import org.hank.harvest.utils.JobConditionUtil;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@Mapper
public interface JobMapper {

    List<Job> selectLatest(@Param("latest") Integer latest);

    List<Job> selectByConditions(@Param("jobConditions") JobConditionUtil jobConditions);

    List<Job> selectAll();

    Job selectOne(@Param("id") Integer id);

}
