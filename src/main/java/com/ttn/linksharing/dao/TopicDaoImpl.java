package com.ttn.linksharing.dao;

import com.ttn.linksharing.model.Topic;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("topicDao")
public class TopicDaoImpl implements TopicDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addorUpdTopic(Topic topic) {

        sessionFactory.getCurrentSession().saveOrUpdate(topic);
    }

    public Topic getTopic(long id) {

        return (Topic) sessionFactory.getCurrentSession().get(Topic.class, id);
    }

    public void deleteTopic(Topic topic) {

        sessionFactory.getCurrentSession().delete(topic);

    }
}
