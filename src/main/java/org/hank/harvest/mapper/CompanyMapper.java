package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Company;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@Mapper
public interface CompanyMapper {

    List<Company> findTopRating(@Param("topNum") Integer topNum);

}
