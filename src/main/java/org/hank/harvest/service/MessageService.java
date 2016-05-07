package org.hank.harvest.service;

import org.hank.harvest.domain.message.MessageEntity;

/**
 * Created by Administrator on 2016/5/6.
 */
public interface MessageService {

    MessageEntity findById(Integer id);

}
