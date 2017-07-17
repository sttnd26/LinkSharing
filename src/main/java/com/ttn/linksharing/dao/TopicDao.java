package com.ttn.linksharing.dao;

import com.ttn.linksharing.model.Topic;

public interface TopicDao {

    void addorUpdTopic(Topic topic);

    Topic getTopic(long id);

    void deleteTopic(Topic topic);
}
