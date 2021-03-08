package com.fsoft.server.service.impl;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.CommentModelAndEntityConvert;
import com.fsoft.server.entity.CommentEntity;
import com.fsoft.server.entity.PostEntity;
import com.fsoft.server.entity.TopicEntity;
import com.fsoft.server.model.CommentArticleModel;
import com.fsoft.server.model.CommentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.TopicModel;
import com.fsoft.server.repository.ICommentRepository;
import com.fsoft.server.service.ICommentService;
import com.fsoft.server.service.IPostService;
import com.fsoft.server.service.ITopicService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CommentService implements ICommentService {

	private final ICommentRepository commentRepository;
	
	private final IPostService postService;
	
	@Override
	public List<CommentModel> findAllByTopicUrl(TopicModel topicModel) {
		List<CommentModel> list = new ArrayList<CommentModel>();
		list = commentRepository.findAllByTopicUrl(topicModel.getUrl()).stream()
																		.map(element -> new CommentModelAndEntityConvert().convertToModel(element))
																		.collect(Collectors.toList());
		return list;
	}

	@Override
	public ResultModel save(CommentArticleModel commentArticleModel) {
		
		PostEntity postEntity = postService.findPostByUrl(commentArticleModel);
		
		LocalDateTime now = LocalDateTime.now();
        Timestamp timestamp = Timestamp.valueOf(now);
		
		CommentEntity commentEntity = new CommentEntity();
		commentEntity.setPost(postEntity);
		commentEntity.setContent(commentArticleModel.getContent());
		commentEntity.setEmail(commentArticleModel.getEmail());
		commentEntity.setName(commentArticleModel.getName());
		commentEntity.setCreatedBy(commentArticleModel.getName());
		commentEntity.setModifiedBy(commentArticleModel.getEmail());
		commentEntity.setStatus(1);
		commentEntity.setCreatedDate(timestamp);
		commentEntity.setModifiedDate(timestamp);
		
		CommentEntity commentEntityNew = commentRepository.save(commentEntity);
		
		ResultModel result = new ResultModel();
		
		if (commentEntityNew != null) {
			result.setResult("success");
		} else{
			result.setResult("fail");
		}
		return result;
	}

	
}
