package com.ttn.linksharing.dao;

import com.ttn.linksharing.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl implements UserDao{

    @Autowired
    private SessionFactory ourSessionFactory;

    public void addorUpdUser(User user) {

        ourSessionFactory.getCurrentSession().saveOrUpdate(user);
    }


    public User getUser(long userid) {

        return (User) ourSessionFactory.getCurrentSession().get(User.class, userid);
    }


}
