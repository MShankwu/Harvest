package org.hank.harvest.service.impl;

import org.hank.harvest.domain.CompanyAuthentication;
import org.hank.harvest.mapper.CompanyAuthenticationMapper;
import org.hank.harvest.service.CompanyAuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/30.
 */
@Service
@Transactional
public class CompanyAuthenticationServiceImpl implements CompanyAuthenticationService {

    private CompanyAuthenticationMapper companyAuthenticationMapper;

    @Autowired
    public void setCompanyAuthenticationMapper(CompanyAuthenticationMapper companyAuthenticationMapper) {
        this.companyAuthenticationMapper = companyAuthenticationMapper;
    }

    @Override
    public Integer saveCompanyAuthentication(CompanyAuthentication companyAuthentication) {
        companyAuthenticationMapper.insertOne(companyAuthentication);
        return companyAuthentication.getId();
    }

    @Override
    public CompanyAuthentication findOneIndirectByUserID(Integer userID) {
        return companyAuthenticationMapper.selectOneIndirectByUserID(userID);
    }

}
