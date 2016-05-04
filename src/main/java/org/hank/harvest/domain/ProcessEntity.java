package org.hank.harvest.domain;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "process", schema = "harvest")
public class ProcessEntity {

    private int id;
    private String status;
    private JobEntity job;
    private UserEntity hr;
    private UserEntity employee;

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
    @Column(name = "Status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @OneToOne
    @JoinColumn(name = "Job_ID", referencedColumnName = "ID")
    public JobEntity getJob() {
        return job;
    }

    public void setJob(JobEntity job) {
        this.job = job;
    }

    @OneToOne
    @JoinColumn(name = "HR_ID", referencedColumnName = "ID")
    public UserEntity getHr() {
        return hr;
    }

    public void setHr(UserEntity hr) {
        this.hr = hr;
    }

    @OneToOne
    @JoinColumn(name = "Employee_ID", referencedColumnName = "ID")
    public UserEntity getEmployee() {
        return employee;
    }

    public void setEmployee(UserEntity employee) {
        this.employee = employee;
    }

}
