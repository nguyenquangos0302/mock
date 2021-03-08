package com.fsoft.client.api.web;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.CourseModel;

import reactor.core.publisher.Flux;

@RestController
@RequestMapping("/client/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class CourseApi {

	WebClient webClient;

	public CourseApi() {
		this.webClient = WebClient.builder().baseUrl("http://localhost:8081")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE).build();
	}
	
	@GetMapping("/course")
	public Flux<CourseModel> findAllCourse() {
		return webClient
						.get()
						.uri("/server/api/v1/course")
						.retrieve()
						.bodyToFlux(CourseModel.class);
	}
	
	@PostMapping("/course")
	public Flux<CourseModel> findAllCourse(@RequestBody CourseModel courseModel) {
		return webClient
						.post()
						.uri("/server/api/v1/course")
						.bodyValue(courseModel)
						.retrieve()
						.bodyToFlux(CourseModel.class);
	}
	
}
