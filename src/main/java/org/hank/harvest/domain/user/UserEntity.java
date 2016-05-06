package org.hank.harvest.domain.user;

import org.hank.harvest.domain.authority.AuthorityEntity;
import org.hank.harvest.domain.company.CompanyEntity;
import org.hank.harvest.domain.message.MessageEntity;
import org.hank.harvest.domain.process.ProcessEntity;
import org.hank.harvest.domain.resume.ResumeEntity;
import org.hank.harvest.domain.userdetail.UserDetailEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "user", schema = "harvest")
public class UserEntity implements Serializable {

    private Integer id;
    private String email;
    private String password;
    private String name;
    private UserDetailEntity detail;
    private CompanyEntity company;
    private AuthorityEntity authority;
    private Set<ResumeEntity> resumes = new HashSet<>();
    private Set<MessageEntity> messages = new HashSet<>();
    private Set<ProcessEntity> processes = new HashSet<>();

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
    @Column(name = "Email", unique = true)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "Password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToOne
    @JoinColumn(name = "Detail_ID", referencedColumnName = "ID")
    public UserDetailEntity getDetail() {
        return detail;
    }

    public void setDetail(UserDetailEntity detail) {
        this.detail = detail;
    }

    @ManyToOne
    @JoinColumn(name = "Company_ID", referencedColumnName = "ID")
    public CompanyEntity getCompany() {
        return company;
    }

    public void setCompany(CompanyEntity company) {
        this.company = company;
    }

    @ManyToOne
    @JoinColumn(name = "Authority_ID", referencedColumnName = "ID")
    public AuthorityEntity getAuthority() {
        return authority;
    }

    public void setAuthority(AuthorityEntity authority) {
        this.authority = authority;
    }

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    public Set<ResumeEntity> getResumes() {
        return resumes;
    }

    public void setResumes(Set<ResumeEntity> resumes) {
        this.resumes = resumes;
    }

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    public Set<MessageEntity> getMessages() {
        return messages;
    }

    public void setMessages(Set<MessageEntity> messages) {
        this.messages = messages;
    }

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    public Set<ProcessEntity> getProcesses() {
        return processes;
    }

    public void setProcesses(Set<ProcessEntity> processes) {
        this.processes = processes;
    }

}
