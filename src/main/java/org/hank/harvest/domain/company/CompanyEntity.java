package org.hank.harvest.domain.company;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hank.harvest.domain.job.JobEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "company", schema = "harvest")
public class CompanyEntity implements Serializable {

    private Integer id;
    private String name;
    private String type;
    private String description;
    private Set<JobEntity> jobs = new HashSet<>();

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

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "Description", columnDefinition = "CLOB")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @OneToMany(mappedBy = "company", cascade = CascadeType.ALL)
    @JsonIgnore
    public Set<JobEntity> getJobs() {
        return jobs;
    }

    public void setJobs(Set<JobEntity> jobs) {
        this.jobs = jobs;
    }

}
