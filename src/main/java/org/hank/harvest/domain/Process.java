package org.hank.harvest.domain;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Process implements Serializable {

    private Integer id;
    private String status;
    private Job job;
    private User user;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Job getJob() {
        return job;
    }

    public void setJob(Job job) {
        this.job = job;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

}
