package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.MenuDtoAndEntityConvert;
import com.fsoft.server.convert.impl.PostModelAndEntityConvert;
import com.fsoft.server.dto.MenuDto;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.entity.PostEntity;
import com.fsoft.server.model.PostModel;
import com.fsoft.server.repository.IPostRepository;
import com.fsoft.server.service.IPostService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PostService implements IPostService {

	private final IPostRepository postRepository;

	@Override
	public List<PostModel> findAllByName(PostModel post) {
		
		List<PostModel> list = new ArrayList<PostModel>();
		
		list = postRepository.findByName(post.getName()).stream()
												 .map(element -> new PostModelAndEntityConvert().convertToModel(element))
												 .collect(Collectors.toList());

		return list;
	}

}
