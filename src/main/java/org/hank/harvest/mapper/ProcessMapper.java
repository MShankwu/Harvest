package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Process;

import java.util.List;

/**
 * Created by Administrator on 2016/5/29.
 */
@Mapper
public interface ProcessMapper {

    List<Process> selectIndirectByUserID(@Param("userID") Integer userID);

    Process selectOneIndirect(@Param("userID") Integer userID, @Param("jobID") Integer jobID);

    List<Process> selectIndirectByCompanyID(@Param("companyID") Integer companyID);

    void insertOne(Process process);

    void updateOne(@Param("id") Integer id, @Param("status") String status);

}
