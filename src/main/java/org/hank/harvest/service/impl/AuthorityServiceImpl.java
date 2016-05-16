package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Authority;
import org.hank.harvest.mapper.AuthorityMapper;
import org.hank.harvest.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/16.
 */
@Service
@Transactional
public class AuthorityServiceImpl implements AuthorityService {

    private AuthorityMapper authorityMapper;

    @Autowired
    public void setAuthorityMapper(AuthorityMapper authorityMapper) {
        this.authorityMapper = authorityMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public Authority find(Integer id) {
        return authorityMapper.find(id);
    }

}
