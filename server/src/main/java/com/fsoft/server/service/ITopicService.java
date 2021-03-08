package com.fsoft.server.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.SubTopicModel;
import com.fsoft.server.model.TopicModel;

@Service
public interface ITopicService {

    List<TopicModel> findAllTopicByNameAndTopicHome(TopicModel topic);

    Map<String, Object> findAllTopicByNameAndUsingPaging(TopicModel topic, int page);

    List<TopicModel> findRandomArticle(TopicModel topicModel);
    
    List<SubTopicModel> findByStatus(int status);
    
}
