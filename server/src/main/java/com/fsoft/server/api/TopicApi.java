package com.fsoft.server.api;

import com.fsoft.server.model.TopicModel;
import com.fsoft.server.service.ITopicService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class TopicApi {

    private final ITopicService topicService;

    @PostMapping("/topic/pagination")
    public Map<String, Object> findAllTopicByNameAndUsingPaging(@RequestBody TopicModel topicModel, @RequestParam(value = "page") int page) {
        return topicService.findAllTopicByNameAndUsingPaging(topicModel, page);
    }

    @PostMapping("/topic")
    public List<TopicModel> findAllTopicByNameAndTopicHome(@RequestBody TopicModel topicModel) {
        return topicService.findAllTopicByNameAndTopicHome(topicModel);
    }

}
