package org.hank.harvest.domain.process;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hank.harvest.domain.job.JobEntity;
import org.hank.harvest.domain.user.UserEntity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "process", schema = "harvest")
public class ProcessEntity implements Serializable {

    private Integer id;
    private String status;
    private JobEntity job;
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
    @Column(name = "Status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @ManyToOne
    @JoinColumn(name = "Job_ID", referencedColumnName = "ID")
    @JsonIgnore
    public JobEntity getJob() {
        return job;
    }

    public void setJob(JobEntity job) {
        this.job = job;
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
