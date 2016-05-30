package org.hank.harvest.domain;

import java.io.Serializable;
import java.util.List;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Tag implements Serializable {

    private Integer id;
    private String name;
    private Integer rating;
    private List<Job> jobs;

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

    public Integer getRating() {
        return rating;
    }

    public void setRating(Integer rating) {
        this.rating = rating;
    }

    public List<Job> getJobs() {
        return jobs;
    }

    public void setJobs(List<Job> jobs) {
        this.jobs = jobs;
    }
}
