package org.hank.harvest.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Message implements Serializable {

    private Integer id;
    private String title;
    private Date createTime;
    private String content;
    private User user;

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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
