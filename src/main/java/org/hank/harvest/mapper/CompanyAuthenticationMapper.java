package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.CompanyAuthentication;

import java.util.List;

/**
 * Created by Administrator on 2016/5/30.
 */
@Mapper
public interface CompanyAuthenticationMapper {

    void insertOne(CompanyAuthentication companyAuthentication);

    CompanyAuthentication selectOneIndirectByUserID(@Param("userID") Integer userID);

    List<CompanyAuthentication> selectAll();

    CompanyAuthentication selectOne(@Param("id") Integer id);

    void updateStatus(@Param("id") Integer id, @Param("status") String status);

}
