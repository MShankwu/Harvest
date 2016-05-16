package org.hank.harvest.domain;

import java.io.Serializable;
import java.util.Set;

/**
 * Created by Administrator on 2016/5/16.
 */
public class User implements Serializable {

    private Integer id;
    private String email;
    private String password;
    private String name;
    private UserDetail detail;
    private Company company;
    private Authority authority;
    private Set<Resume> resumes;
    private Set<Message> messages;
    private Set<Process> processes;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public UserDetail getDetail() {
        return detail;
    }

    public void setDetail(UserDetail detail) {
        this.detail = detail;
    }

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }

    public Authority getAuthority() {
        return authority;
    }

    public void setAuthority(Authority authority) {
        this.authority = authority;
    }

    public Set<Resume> getResumes() {
        return resumes;
    }

    public void setResumes(Set<Resume> resumes) {
        this.resumes = resumes;
    }

    public Set<Message> getMessages() {
        return messages;
    }

    public void setMessages(Set<Message> messages) {
        this.messages = messages;
    }

    public Set<Process> getProcesses() {
        return processes;
    }

    public void setProcesses(Set<Process> processes) {
        this.processes = processes;
    }

}
