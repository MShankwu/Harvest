package org.hank.harvest.domain;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/16.
 */
public class UserDetail implements Serializable {

    private Integer id;
    private String sex;
    private String phone;
    private String qq;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

}