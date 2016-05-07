package org.hank.harvest.service.impl;

import org.hank.harvest.domain.company.CompanyEntity;
import org.hank.harvest.domain.company.CompanyRepository;
import org.hank.harvest.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/6.
 */
@Transactional
@Service
public class CompanyServiceImpl implements CompanyService {

    private CompanyRepository companyRepository;

    @Autowired
    public void setCompanyRepository(CompanyRepository companyRepository) {
        this.companyRepository = companyRepository;
    }

    @Transactional(readOnly = true)
    @Override
    public CompanyEntity findById(Integer id) {
        return companyRepository.findOne(id);
    }

}
