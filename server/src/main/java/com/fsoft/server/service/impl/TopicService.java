package com.fsoft.server.service.impl;

import com.fsoft.server.convert.impl.TopicModelAndEntityConvert;
import com.fsoft.server.entity.TopicEntity;
import com.fsoft.server.model.TopicModel;
import com.fsoft.server.repository.ITopicRepository;
import com.fsoft.server.service.ITopicService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

    @Override
    public Map<String, Object> findAllTopicByNameAndUsingPaging(TopicModel topic, int page) {

        Pageable paging = PageRequest.of(page - 1, 5);

        Page<TopicEntity> pageTopic;

        pageTopic = topicRepository.findAllTopicByNameAndUsingPaging(topic.getName(), paging);

        List<TopicModel> list = pageTopic.getContent()
                                .stream()
                                .map(element -> new TopicModelAndEntityConvert().convertToModel(element))
                                .collect(Collectors.toList());

        Map<String, Object> response = new HashMap<>();
        response.put("topic", list);
        response.put("currentPage", pageTopic.getNumber());
        response.put("totalItems", pageTopic.getTotalElements());
        response.put("totalPages", pageTopic.getTotalPages());

        return response;
    }

}
