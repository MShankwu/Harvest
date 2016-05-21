package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Company;
import org.hank.harvest.mapper.CompanyMapper;
import org.hank.harvest.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@Service
@Transactional
public class CompanyServiceImpl implements CompanyService {

    private CompanyMapper companyMapper;

    @Autowired
    public void setCompanyMapper(CompanyMapper companyMapper) {
        this.companyMapper = companyMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Company> findTopRating(Integer topNum) {
        return companyMapper.selectTopRating(topNum);
    }

}
