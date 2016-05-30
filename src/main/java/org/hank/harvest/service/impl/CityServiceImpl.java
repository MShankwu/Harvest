package org.hank.harvest.service.impl;

import org.hank.harvest.domain.City;
import org.hank.harvest.mapper.CityMapper;
import org.hank.harvest.service.CityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/19.
 */
@Service
@Transactional
public class CityServiceImpl implements CityService {

    private CityMapper cityMapper;

    @Autowired
    public void setCityMapper(CityMapper cityMapper) {
        this.cityMapper = cityMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public City findOne(Integer id) {
        return cityMapper.selectOne(id);
    }

}
