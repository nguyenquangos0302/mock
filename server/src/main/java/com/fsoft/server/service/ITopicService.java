package com.fsoft.server.service;

import com.fsoft.server.model.TopicModel;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface ITopicService {

    List<TopicModel> findAllTopicByNameAndTopicHome(TopicModel topic);

    Map<String, Object> findAllTopicByNameAndUsingPaging(TopicModel topic, int page);



}
