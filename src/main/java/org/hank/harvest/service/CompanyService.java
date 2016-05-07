package org.hank.harvest.service;

import org.hank.harvest.domain.company.CompanyEntity;

/**
 * Created by Administrator on 2016/5/6.
 */
public interface CompanyService {

    CompanyEntity findById(Integer id);

}
