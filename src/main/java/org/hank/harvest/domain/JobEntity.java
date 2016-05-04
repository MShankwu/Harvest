package org.hank.harvest.domain;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "job", schema = "harvest")
public class JobEntity {

    private int id;
    private String name;
    private String category;
    private String salary;
    private String city;
    private String graduationLevel;
    private String experienceLevel;
    private String description;
    private CompanyEntity company;

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

    @Basic
    @Column(name = "Description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @ManyToOne
    @JoinColumn(name = "Company_ID", referencedColumnName = "ID")
    public CompanyEntity getCompany() {
        return company;
    }

    public void setCompany(CompanyEntity company) {
        this.company = company;
    }

}
