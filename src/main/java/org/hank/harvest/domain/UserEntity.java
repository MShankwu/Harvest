package org.hank.harvest.domain;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "user", schema = "harvest")
public class UserEntity {

    private int id;
    private String email;
    private String password;
    private String name;
    private UserDetailEntity detail;
    private CompanyEntity company;
    private AuthorityEntity authority;
    private List<ResumeEntity> resumes;
    private List<MessageEntity> messages;

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

    @OneToMany(mappedBy = "user")
    public List<ResumeEntity> getResumes() {
        return resumes;
    }

    public void setResumes(List<ResumeEntity> resumes) {
        this.resumes = resumes;
    }

    @OneToMany(mappedBy = "user")
    public List<MessageEntity> getMessages() {
        return messages;
    }

    public void setMessages(List<MessageEntity> messages) {
        this.messages = messages;
    }

}
