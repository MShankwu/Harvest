package org.hank.harvest.service;

import org.hank.harvest.domain.CompanyAuthentication;

import java.util.List;

/**
 * Created by Administrator on 2016/5/30.
 */
public interface CompanyAuthenticationService {

    Integer saveCompanyAuthentication(CompanyAuthentication companyAuthentication);

    CompanyAuthentication findOneIndirectByUserID(Integer userID);

    List<CompanyAuthentication> findAll();

    CompanyAuthentication findOne(Integer id);

    void pass(Integer id);

}
