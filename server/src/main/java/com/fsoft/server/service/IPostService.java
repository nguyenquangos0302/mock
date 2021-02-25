package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.PostModel;

@Service
public interface IPostService {
	
	List<PostModel> findAllByName(PostModel post);

}
