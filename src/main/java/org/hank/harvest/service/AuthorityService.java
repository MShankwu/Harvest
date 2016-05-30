package org.hank.harvest.service;

import org.hank.harvest.domain.Authority;

import java.util.List;

/**
 * Created by Administrator on 2016/5/16.
 */
public interface AuthorityService {

    Authority findOne(Integer id);

    List<Authority> findAll();

    Integer saveOne(Authority authority);

    Authority updateOne(Authority authority);

    void deleteOne(Integer id);

}
