package com.ttn.linksharing.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;

@Entity
@Table
public class User {

    @Id   @GeneratedValue(strategy = GenerationType.IDENTITY)
    long userid;

    @Column(unique = true)
    String email;
    @Column(unique = true)
    String username;
    String password;
    String firstName;
    String lastName;
    byte photo;
    Boolean isAdmin;
    Boolean isActive;
    Date dateCreated;
    Date lastUpdated;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "user", fetch = FetchType.LAZY)
    ArrayList<Subscription> subscriptionList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "createdBy", fetch = FetchType.LAZY)
    ArrayList<Topic> topicList;

//    ArrayList<ReadingItem> readingItemList;
    //Resource, ResourceRating


    public long getUserid() {
        return userid;
    }

    public void setUserid(long userid) {
        this.userid = userid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public byte getPhoto() {
        return photo;
    }

    public void setPhoto(byte photo) {
        this.photo = photo;
    }

    public Boolean getAdmin() {
        return isAdmin;
    }

    public void setAdmin(Boolean isAdmin) {
        this.isAdmin = isAdmin;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean isActive) {
        this.isActive = isActive;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Date getLastUpdated() {
        return lastUpdated;
    }

    public void setLastUpdated(Date lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

    public ArrayList<Subscription> getSubscriptionList() {
        return subscriptionList;
    }

    public void setSubscriptionList(ArrayList<Subscription> subscriptionList) {
        this.subscriptionList = subscriptionList;
    }

    public ArrayList<Topic> getTopicList() {
        return topicList;
    }

    public void setTopicList(ArrayList<Topic> topicList) {
        this.topicList = topicList;
    }

//    public ArrayList<ReadingItem> getReadingItemList() {
//        return readingItemList;
//    }
//
//    public void setReadingItemList(ArrayList<ReadingItem> readingItemList) {
//        this.readingItemList = readingItemList;
//    }
}
