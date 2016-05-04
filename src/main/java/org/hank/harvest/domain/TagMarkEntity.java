package org.hank.harvest.domain;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/5/4.
 */
@Entity
@Table(name = "tag_mark", schema = "harvest")
public class TagMarkEntity {

    private int id;
    private JobEntity job;
    private TagEntity tag;

    @Id
    @GeneratedValue
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @OneToOne
    @JoinColumn(name = "Job_ID", referencedColumnName = "ID")
    public JobEntity getJob() {
        return job;
    }

    public void setJob(JobEntity job) {
        this.job = job;
    }

    @OneToOne
    @JoinColumn(name = "Tag_ID", referencedColumnName = "ID")
    public TagEntity getTag() {
        return tag;
    }

    public void setTag(TagEntity tag) {
        this.tag = tag;
    }

}
