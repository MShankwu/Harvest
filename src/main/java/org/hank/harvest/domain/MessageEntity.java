package org.hank.harvest.domain;

import javax.persistence.*;
import java.sql.Time;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "message", schema = "harvest")
public class MessageEntity {

    private int id;
    private String title;
    private Time createTime;
    private String content;
    private UserEntity user;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "Create_Time")
    public Time getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Time createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "Content")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @ManyToOne
    @JoinColumn(name = "User_ID", referencedColumnName = "ID")
    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

}
