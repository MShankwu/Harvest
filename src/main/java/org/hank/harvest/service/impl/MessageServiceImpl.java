package org.hank.harvest.service.impl;

import org.hank.harvest.domain.Message;
import org.hank.harvest.mapper.MessageMapper;
import org.hank.harvest.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Administrator on 2016/5/28.
 */
@Service
@Transactional
public class MessageServiceImpl implements MessageService {

    private MessageMapper messageMapper;

    @Autowired
    public void setMessageMapper(MessageMapper messageMapper) {
        this.messageMapper = messageMapper;
    }

    @Override
    @Transactional(readOnly = true)
    public Message findOne(Integer id) {
        return messageMapper.selectOne(id);
    }

    @Override
    public Integer saveOne(Message message) {
        messageMapper.insertOne(message);
        return message.getId();
    }

}
