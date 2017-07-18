package com.ttn.linksharing.service;

import com.ttn.linksharing.model.Topic;

public interface TopicService {

    void addorUpdTopic(Topic topic);

    Topic getTopic(long id);

    void deleteTopic(Topic topic);
}
