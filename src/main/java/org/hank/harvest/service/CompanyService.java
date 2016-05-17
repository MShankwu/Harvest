package org.hank.harvest.service;

import org.hank.harvest.domain.Company;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
public interface CompanyService {

    List<Company> findTopRating(Integer topNum);

}
