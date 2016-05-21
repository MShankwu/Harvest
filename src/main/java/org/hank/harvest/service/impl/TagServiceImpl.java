package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Tag;
import org.hank.harvest.mapper.TagMapper;
import org.hank.harvest.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
@Service
@Transactional
public class TagServiceImpl implements TagService {

    private TagMapper tagMapper;

    @Autowired
    public void setTagMapper(TagMapper tagMapper) {
        this.tagMapper = tagMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Tag> findTopRating(Integer topNum) {
        return tagMapper.selectTopRating(topNum);
    }

}
