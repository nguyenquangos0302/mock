package com.fsoft.server.service.impl;

import com.fsoft.server.convert.impl.TopicModelAndEntityConvert;
import com.fsoft.server.model.TopicModel;
import com.fsoft.server.repository.ITopicRepository;
import com.fsoft.server.service.ITopicService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class TopicService implements ITopicService {

    private final ITopicRepository topicRepository;

    @Override
    public List<TopicModel> findAllTopicByNameAndPaging(TopicModel topic, int limit, int offset) {
        List<TopicModel> list = new ArrayList<TopicModel>();

        list = topicRepository.findAllTopicByNameAndPaging(topic.getName(), limit, offset).stream()
                .map(element -> new TopicModelAndEntityConvert().convertToModel(element))
                .collect(Collectors.toList());

        return list;
    }

    @Override
    public List<TopicModel> findAllTopicByName(TopicModel topicModel) {
        List<TopicModel> list = new ArrayList<TopicModel>();

        list = topicRepository.findAllTopicByName(topicModel.getName()).stream()
                .map(element -> new TopicModelAndEntityConvert().convertToModel(element))
                .collect(Collectors.toList());

        return list;
    }

}
