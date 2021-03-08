package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.CommentArticleModel;
import com.fsoft.server.model.CommentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.TopicModel;

@Service
public interface ICommentService {

	List<CommentModel> findAllByTopicUrl(TopicModel topicModel);
	
	ResultModel save(CommentArticleModel commentArticleModel);
	
}
