package org.hank.harvest.domain;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/19.
 */
public class City implements Serializable {

    private Integer id;
    private String name;

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
    
}
