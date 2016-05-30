package org.hank.harvest.service.impl;

import com.github.pagehelper.PageHelper;
import org.hank.harvest.domain.City;
import org.hank.harvest.domain.Company;
import org.hank.harvest.domain.Job;
import org.hank.harvest.mapper.CityMapper;
import org.hank.harvest.mapper.CompanyMapper;
import org.hank.harvest.service.CompanyService;
import org.hank.harvest.utils.CompanyConditionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/17.
 */
@Service
@Transactional
public class CompanyServiceImpl implements CompanyService {

    private CompanyMapper companyMapper;
    private CityMapper cityMapper;

    @Autowired
    public void setCompanyMapper(CompanyMapper companyMapper) {
        this.companyMapper = companyMapper;
    }

    @Autowired
    public void setCityMapper(CityMapper cityMapper) {
        this.cityMapper = cityMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Company> findTopRating(Integer topNum) {
        return companyMapper.selectTopRating(topNum);
    }

    @Override
    public List<Company> findAll() {
        return companyMapper.selectAll();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Company> findByConditions(CompanyConditionUtil companyConditions, Integer pageNum, Integer pageSize) {
        if (pageNum != null) {
            PageHelper.startPage(pageNum, pageSize);
        }
        List<Company> companyList = companyMapper.selectByConditions(companyConditions);
        for (int i = 0; i < companyList.size(); ++i) {
            companyList.set(i, companyMapper.selectOne(companyList.get(i).getId()));
        }
        return companyList;
    }

    @Override
    @Transactional(readOnly = true)
    public Company findOne(Integer id) {
        return companyMapper.selectOne(id);
    }

    @Override
    public void saveOne(Company company) {
        companyMapper.insertOne(company);
        Set<City> cities = company.getCities();
        for (City city : cities) {
            City result = cityMapper.selectOneIndirect(city.getName());
            companyMapper.insertOneCity(company.getId(), result.getId());
        }
    }

}
