package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Company;
import org.hank.harvest.utils.CompanyConditionUtil;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@Mapper
public interface CompanyMapper {

    List<Company> selectTopRating(@Param("topNum") Integer topNum);

    List<Company> selectAll();

    List<Company> selectByConditions(@Param("companyConditions") CompanyConditionUtil companyConditions);

    Company selectOne(@Param("id") Integer id);

}
