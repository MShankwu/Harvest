package org.hank.harvest.service;

import org.hank.harvest.domain.tag.TagEntity;

/**
 * Created by Administrator on 2016/5/6.
 */
public interface TagService {

    TagEntity findById(Integer id);

}