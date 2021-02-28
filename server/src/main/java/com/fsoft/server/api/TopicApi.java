package com.fsoft.server.api;

import com.fsoft.server.model.TopicModel;
import com.fsoft.server.service.ITopicService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class TopicApi {

    private final ITopicService topicService;

    @PostMapping("/topic/pagination")
    public List<TopicModel> findAllTopicByNameAndPaging(@RequestBody TopicModel topicModel, @RequestParam("limit") int limit, @RequestParam("offset") int offset) {
        return topicService.findAllTopicByNameAndPaging(topicModel, limit, offset);
    }

    @PostMapping("/topic")
    public List<TopicModel> findAllTopicByName(@RequestBody TopicModel topicModel) {
        return topicService.findAllTopicByName(topicModel);
    }

}
