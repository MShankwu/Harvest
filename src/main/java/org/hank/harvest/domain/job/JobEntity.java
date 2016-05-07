package org.hank.harvest.domain.job;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hank.harvest.domain.company.CompanyEntity;
import org.hank.harvest.domain.tag.TagEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "job", schema = "harvest")
public class JobEntity implements Serializable {

    private Integer id;
    private String name;
    private String category;
    private String salary;
    private String city;
    private String graduationLevel;
    private String experienceLevel;
    private String description;
    private CompanyEntity company;
    private Set<TagEntity> tags;


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
    @Column(name = "Category")
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    @Basic
    @Column(name = "Salary")
    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    @Basic
    @Column(name = "City")
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    @Basic
    @Column(name = "Graduation_Level")
    public String getGraduationLevel() {
        return graduationLevel;
    }

    public void setGraduationLevel(String graduationLevel) {
        this.graduationLevel = graduationLevel;
    }

    @Basic
    @Column(name = "Experience_Level")
    public String getExperienceLevel() {
        return experienceLevel;
    }

    public void setExperienceLevel(String experienceLevel) {
        this.experienceLevel = experienceLevel;
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

    @ManyToOne
    @JoinColumn(name = "Company_ID", referencedColumnName = "ID")
    @JsonIgnore
    public CompanyEntity getCompany() {
        return company;
    }

    public void setCompany(CompanyEntity company) {
        this.company = company;
    }

    @ManyToMany
    @JoinTable(name = "tag_mark", joinColumns = { @JoinColumn(name = "Job_ID") },
            inverseJoinColumns = { @JoinColumn(name = "Tag_ID") })
    @JsonIgnore
    public Set<TagEntity> getTags() {
        return tags;
    }

    public void setTags(Set<TagEntity> tags) {
        this.tags = tags;
    }

}
