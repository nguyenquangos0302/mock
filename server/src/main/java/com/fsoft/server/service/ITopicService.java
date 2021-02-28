package com.fsoft.server.service;

import com.fsoft.server.model.TopicModel;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ITopicService {

    List<TopicModel> findAllTopicByNameAndPaging(TopicModel topic, int limit, int offset);

    List<TopicModel> findAllTopicByName(TopicModel topicModel);

}
