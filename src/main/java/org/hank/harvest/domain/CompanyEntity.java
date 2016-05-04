package org.hank.harvest.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "company", schema = "harvest")
public class CompanyEntity {

    private int id;
    private String name;
    private String type;
    private String description;
    private List<JobEntity> jobs;

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
    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "Type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "Description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @OneToMany(mappedBy = "company")
    public List<JobEntity> getJobs() {
        return jobs;
    }

    public void setJobs(List<JobEntity> jobs) {
        this.jobs = jobs;
    }

}
