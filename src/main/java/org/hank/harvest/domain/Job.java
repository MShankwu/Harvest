package org.hank.harvest.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Job implements Serializable {

    private Integer id;
    private String name;
    private String category;
    private Integer originSalary;
    private Integer terminalSalary;
    private String graduation;
    private String experience;
    private String description;
    private Date publish;
    private Date deadline;
    private Company company;
    private City city;
    private Set<Tag> tags;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Integer getOriginSalary() {
        return originSalary;
    }

    public void setOriginSalary(Integer originSalary) {
        this.originSalary = originSalary;
    }

    public Integer getTerminalSalary() {
        return terminalSalary;
    }

    public void setTerminalSalary(Integer terminalSalary) {
        this.terminalSalary = terminalSalary;
    }

    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getPublish() {
        return publish;
    }

    public void setPublish(Date publish) {
        this.publish = publish;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public Set<Tag> getTags() {
        return tags;
    }

    public void setTags(Set<Tag> tags) {
        this.tags = tags;
    }
}
