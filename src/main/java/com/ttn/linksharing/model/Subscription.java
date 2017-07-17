package com.ttn.linksharing.model;

import com.ttnd.linksharing.Seriousness;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table
public class Subscription {

    @Id  @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;

    @ManyToOne
    Topic topic;

    @ManyToOne
    User user;

    Seriousness seriousness;
    Date dateCreated;

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Seriousness getSeriousness() {
        return seriousness;
    }

    public void setSeriousness(Seriousness seriousness) {
        this.seriousness = seriousness;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }
}
