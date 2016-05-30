package org.hank.harvest.service;

import org.hank.harvest.domain.Tag;

import java.util.List;

/**
 * Created by Administrator on 2016/5/17.
 */
public interface TagService {

    List<Tag> findTopRating(Integer topNum);

}
