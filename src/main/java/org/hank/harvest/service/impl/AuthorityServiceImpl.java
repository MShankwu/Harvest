package org.hank.harvest.service.impl;

import org.hank.harvest.domain.authority.AuthorityEntity;
import org.hank.harvest.domain.authority.AuthorityRepository;
import org.hank.harvest.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/6.
 */
@Transactional
@Service
public class AuthorityServiceImpl implements AuthorityService {

    private AuthorityRepository authorityRepository;

    @Autowired
    public void setAuthorityRepository(AuthorityRepository authorityRepository) {
        this.authorityRepository = authorityRepository;
    }

    @Transactional(readOnly = true)
    @Override
    public AuthorityEntity findById(Integer id) {
        return authorityRepository.findOne(id);
    }

}
