package com.fsoft.server.service.impl;

import org.springframework.stereotype.Service;

import com.fsoft.server.entity.PostEntity;
import com.fsoft.server.model.CommentArticleModel;
import com.fsoft.server.repository.IPostRepository;
import com.fsoft.server.service.IPostService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PostService implements IPostService {
	
	private final IPostRepository postRepository;

	@Override
	public PostEntity findPostByUrl(CommentArticleModel commentArticleModel) {
		return postRepository.findArticleByUrl(commentArticleModel.getUrlArticle()).get();
	}

}
