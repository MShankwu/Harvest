package org.hank.harvest.service;

import org.hank.harvest.domain.Message;

/**
 * Created by Administrator on 2016/5/28.
 */
public interface MessageService {

    Message findOne(Integer id);

    Integer saveOne(Message message);

}
