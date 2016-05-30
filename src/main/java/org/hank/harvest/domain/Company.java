package org.hank.harvest.domain;

import java.io.Serializable;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Company implements Serializable {

    private Integer id;
    private String name;
    private String type;
    private String description;
    private Integer rating;
    private Set<City> cities;
    private Set<Job> jobs;

    public Company() {
    }

    public Company(String name, String type, String description, Set<City> cities) {
        this.name = name;
        this.type = type;
        this.description = description;
        this.cities = cities;
    }

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public Set<City> getCities() {
        return cities;
    }

    public void setCities(Set<City> cities) {
        this.cities = cities;
    }

    public Set<Job> getJobs() {
        return jobs;
    }

    public void setJobs(Set<Job> jobs) {
        this.jobs = jobs;
    }

}
