package com.ttn.linksharing.dao;

import com.ttn.linksharing.model.User;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("userDao")
public class UserDaoImpl implements UserDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addorUpdUser(User user) {

        sessionFactory.getCurrentSession().saveOrUpdate(user);
    }


    public User getUser(long userid) {

        return (User) sessionFactory.getCurrentSession().get(User.class, userid);
    }


}
