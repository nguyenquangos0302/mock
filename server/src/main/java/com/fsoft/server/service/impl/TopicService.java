package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.SubTopicModelAndEntityConvert;
import com.fsoft.server.convert.impl.TopicModelAndEntityConvert;
import com.fsoft.server.entity.TopicEntity;
import com.fsoft.server.model.SubTopicModel;
import com.fsoft.server.model.TopicModel;
import com.fsoft.server.repository.ITopicRepository;
import com.fsoft.server.service.ITopicService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class TopicService implements ITopicService {

    private final ITopicRepository topicRepository;

    @Override
    public List<TopicModel> findAllTopicByNameAndTopicHome(TopicModel topic) {
        List<TopicModel> list = new ArrayList<TopicModel>();

        list = topicRepository.findAllTopicByNameAndTopicHome(topic.getName()).stream()
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

	@Override
	public List<TopicModel> findRandomArticle(TopicModel topicModel) {
		List<TopicModel> list = new ArrayList<TopicModel>();

        list = topicRepository.findRandomArticle(topicModel.getName()).stream()
                .map(element -> new TopicModelAndEntityConvert().convertToModel(element))
                .collect(Collectors.toList());

        return list;
	}


	@Override
	public List<SubTopicModel> findByStatus(int status) {
		List<SubTopicModel> list = new ArrayList<SubTopicModel>();

	    list = topicRepository.findAll().stream()
	    		.map(element -> new SubTopicModelAndEntityConvert().convertToModel(element))
                .collect(Collectors.toList());
	    return list;
	}
}
