package org.hank.harvest.domain.resume;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hank.harvest.domain.user.UserEntity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "resume", schema = "harvest")
public class ResumeEntity implements Serializable {

    private Integer id;
    private String name;
    private String graduation;
    private String education;
    private String jobIntention;
    private String experience;
    private String skills;
    private String remark;
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
    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "Graduation")
    public String getGraduation() {
        return graduation;
    }

    public void setGraduation(String graduation) {
        this.graduation = graduation;
    }

    @Basic
    @Column(name = "Education")
    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "Job_Intention", columnDefinition = "CLOB")
    public String getJobIntention() {
        return jobIntention;
    }

    public void setJobIntention(String jobIntention) {
        this.jobIntention = jobIntention;
    }

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "Experience", columnDefinition = "CLOB")
    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "Skills", columnDefinition = "CLOB")
    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    @Basic
    @Column(name = "Remark")
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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
