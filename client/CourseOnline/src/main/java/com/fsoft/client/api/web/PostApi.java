package com.fsoft.client.api.web;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.PostModel;

import reactor.core.publisher.Flux;

@RestController
@RequestMapping("/client/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class PostApi {
	
	WebClient webClient;

	public PostApi() {
		this.webClient = WebClient.builder().baseUrl("http://localhost:8081")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE).build();
	}
	
	@PostMapping("/post")
	public Flux<PostModel> findByName(@RequestBody PostModel postModel) {
		return webClient
						.post()
						.uri("/server/api/v1/post")
						.bodyValue(postModel)
						.retrieve()
						.bodyToFlux(PostModel.class);
	}

}
