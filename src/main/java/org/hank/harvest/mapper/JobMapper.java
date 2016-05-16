package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Job;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
@Mapper
public interface JobMapper {

    List<Job> findLatest(@Param("limit") Integer limit);

}
