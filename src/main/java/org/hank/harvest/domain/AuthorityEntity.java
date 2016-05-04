package org.hank.harvest.domain;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "authority", schema = "harvest")
public class AuthorityEntity {

    private int id;
    private String type;

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
    @Column(name = "Type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
