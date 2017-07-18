package com.ttn.linksharing.service;

import com.ttn.linksharing.dao.TopicDaoImpl;
import com.ttn.linksharing.model.Topic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("topicService")
public class TopicServiceImpl {

    @Autowired
    private TopicDaoImpl topicDao;

    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public void addorUpdTopic(Topic topic) {
        topicDao.addorUpdTopic(topic);
    }

    public Topic getTopic(long id) {
        return topicDao.getTopic(id);
    }

    public void deleteTopic(Topic topic) {
        topicDao.deleteTopic(topic); }
}
