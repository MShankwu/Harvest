package org.hank.harvest.domain.authority;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "authority", schema = "harvest")
public class AuthorityEntity implements Serializable {

    private Integer id;
    private String type;

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
    @Column(name = "Type")
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    
}
