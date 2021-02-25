package com.fsoft.server.api;

import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.PostModel;
import com.fsoft.server.service.IPostService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class PostApi {
	
	private final IPostService postService;
	
	@PostMapping("/post")
	public List<PostModel> findByName(@RequestBody PostModel post) {
		return postService.findAllByName(post);
	}

}
