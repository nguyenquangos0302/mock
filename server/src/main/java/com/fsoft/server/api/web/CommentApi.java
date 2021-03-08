package com.fsoft.server.api.web;

import java.util.List;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.CommentArticleModel;
import com.fsoft.server.model.CommentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.TopicModel;
import com.fsoft.server.service.ICommentService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CommentApi {
	
	private final ICommentService commentService;
	
	@PostMapping("/comment")
	public List<CommentModel> findAllByTopicUrl(@RequestBody TopicModel topicModel) {
		return commentService.findAllByTopicUrl(topicModel);
	}

	@PostMapping("/comment/addition")
	public ResultModel addComment(@RequestBody CommentArticleModel commentArticleModel) {
		return commentService.save(commentArticleModel);
	}	
	
}
