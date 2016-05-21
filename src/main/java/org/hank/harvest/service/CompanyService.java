package org.hank.harvest.service;

import org.hank.harvest.domain.Company;
import org.hank.harvest.utils.CompanyConditionUtil;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
public interface CompanyService {

    List<Company> findTopRating(Integer topNum);

    List<Company> findByConditions(CompanyConditionUtil companyConditions, Integer pageNum, Integer pageSize);

    Company findOne(Integer id);

}
