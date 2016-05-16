package org.hank.harvest.domain;

import java.io.Serializable;

/**
 * Created by Administrator on 2016/5/16.
 */
public class Authority implements Serializable {

    private Integer id;
    private String type;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

}
