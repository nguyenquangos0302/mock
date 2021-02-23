package com.fsoft.client.api;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.BreadCrumbModel;

import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/client/api/v1")
public class BreadCrumbApi {

	WebClient webClient;

	public BreadCrumbApi() {
		// TODO Auto-generated constructor stub
		this.webClient = WebClient
						.builder()
						.baseUrl("http://localhost:8081")
						.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
						.build();
	}

	@PostMapping("/breadcrumb")
	public Mono<BreadCrumbModel> getBreadCrumb(@RequestBody BreadCrumbModel breadCrumbModel) {
		return webClient
						.post()
						.uri("/server/api/v1/breadcrumb")
						.bodyValue(breadCrumbModel)
						.retrieve()
						.bodyToMono(BreadCrumbModel.class);
	}

}
