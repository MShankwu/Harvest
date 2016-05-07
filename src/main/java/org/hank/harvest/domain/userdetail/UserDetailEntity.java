package org.hank.harvest.domain.userdetail;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "user_detail", schema = "harvest")
public class UserDetailEntity implements Serializable {

    private Integer id;
    private String sex;
    private String phone;
    private String qq;

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
    @Column(name = "Sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "Phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "QQ")
    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

}
