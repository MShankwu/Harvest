package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Authority;
import org.hank.harvest.mapper.AuthorityMapper;
import org.hank.harvest.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

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
    public Authority findOne(Integer id) {
        return authorityMapper.selectOne(id);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Authority> findAll() {
        return authorityMapper.selectAll();
    }

    @Override
    public Integer saveOne(Authority authority) {
        authorityMapper.insertOne(authority);
        return authority.getId();
    }

    @Override
    public Authority updateOne(Authority authority) {
        authorityMapper.updateOne(authority);
        return authority;
    }

    @Override
    public void deleteOne(Integer id) {
        authorityMapper.deleteOne(id);
    }

}
