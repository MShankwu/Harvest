package org.hank.harvest.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Message implements Serializable {

    private Integer id;
    private String title;
    private String content;
    private Date createTime;
    private User receiver;
    private User sender;

    public Message() {

    }

    public Message(String title, String content, User receiver, User sender) {
        this.title = title;
        this.content = content;
        this.receiver = receiver;
        this.sender = sender;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public User getReceiver() {
        return receiver;
    }

    public void setReceiver(User receiver) {
        this.receiver = receiver;
    }

    public User getSender() {
        return sender;
    }

    public void setSender(User sender) {
        this.sender = sender;
    }

}
