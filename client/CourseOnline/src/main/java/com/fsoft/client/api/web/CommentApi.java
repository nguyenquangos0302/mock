package com.fsoft.client.api.web;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.CommentArticleModel;
import com.fsoft.client.model.CommentModel;
import com.fsoft.client.model.ResultModel;
import com.fsoft.client.model.TopicModel;

import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/client/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CommentApi {

	WebClient webClient;

	public CommentApi() {
		// TODO Auto-generated constructor stub
		this.webClient = WebClient
						.builder()
						.baseUrl("http://localhost:8081")
						.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
						.build();
	}
	
	@PostMapping("/comment")
	public Flux<CommentModel> findAllByTopicUrl(@RequestBody TopicModel topicModel) {
		return webClient
						.post()
						.uri("/server/api/v1/comment")
						.bodyValue(topicModel)
						.retrieve()
						.bodyToFlux(CommentModel.class);
	}
	
	@PostMapping("/comment/addition")
	public Mono<ResultModel> addComment(@RequestBody CommentArticleModel commentArticleModel) {
		return webClient
						.post()
						.uri("/server/api/v1/comment/addition")
						.bodyValue(commentArticleModel)
						.retrieve()
						.bodyToMono(ResultModel.class);
	}
}
