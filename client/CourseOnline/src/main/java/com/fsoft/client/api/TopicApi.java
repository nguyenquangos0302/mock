package com.fsoft.client.api;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.TopicModel;

import reactor.core.publisher.Flux;

@RestController
@RequestMapping("/client/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class TopicApi {
	
	WebClient webClient;

	public TopicApi() {
		this.webClient = WebClient.builder().baseUrl("http://localhost:8081")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE).build();
	}
	
	@PostMapping("/topic/pagination")
	public Flux<TopicModel> findAllCourse(@RequestBody TopicModel topicModel, @RequestParam("limit") int limit, @RequestParam("offset") int offset) {
		return webClient
						.post()
						.uri("/server/api/v1/topic/pagination?limit="+limit+"&offset="+offset)
						.bodyValue(topicModel)
						.retrieve()
						.bodyToFlux(TopicModel.class);
	}

}
