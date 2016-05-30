package org.hank.harvest.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.hank.harvest.domain.Message;

import java.util.List;

/**
 * Created by Administrator on 2016/5/28.
 */
@Mapper
public interface MessageMapper {

    List<Message> selectAllByReceiverID(@Param("receiverID") Integer receiverID);

    List<Message> selectAllBySenderID(@Param("senderID") Integer senderID);

    Message selectOne(@Param("id") Integer id);

    void insertOne(Message message);

}
