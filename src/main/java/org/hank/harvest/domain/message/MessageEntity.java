package org.hank.harvest.domain.message;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hank.harvest.domain.user.UserEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "message", schema = "harvest")
public class MessageEntity implements Serializable {

    private Integer id;
    private String title;
    private Date createTime;
    private String content;
    private UserEntity user;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public Integer getId() {
        return id;
    }

    private void setId(Integer id) {
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

    @Temporal(value = TemporalType.TIME)
    @Basic
    @Column(name = "Create_Time")
    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "Content", columnDefinition = "CLOB")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @ManyToOne
    @JoinColumn(name = "User_ID", referencedColumnName = "ID")
    @JsonIgnore
    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }

}
