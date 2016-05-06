package org.hank.harvest.domain.tag;

import org.hank.harvest.domain.job.JobEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "tag", schema = "harvest")
public class TagEntity implements Serializable {

    private Integer id;
    private String name;
    private Set<JobEntity> jobs;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    @ManyToMany(mappedBy = "tags", fetch = FetchType.LAZY)
    public Set<JobEntity> getJobs() {
        return jobs;
    }

    public void setJobs(Set<JobEntity> jobs) {
        this.jobs = jobs;
    }

}
