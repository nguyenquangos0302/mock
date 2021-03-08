package com.fsoft.server.service;

import org.springframework.stereotype.Service;

import com.fsoft.server.entity.PostEntity;
import com.fsoft.server.model.CommentArticleModel;

@Service
public interface IPostService {

	PostEntity findPostByUrl(CommentArticleModel commentArticleModel);
	
}
