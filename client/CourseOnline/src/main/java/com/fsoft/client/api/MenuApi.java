package com.fsoft.client.api;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.MenuModel;

import reactor.core.publisher.Flux;

@RestController
@RequestMapping("/client/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class MenuApi {
	
	WebClient webClient;
	
	public MenuApi() {
		this.webClient = WebClient
				.builder()
				.baseUrl("http://localhost:8081")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE)
				.build();
	}
	
	@GetMapping("/menu")
	public Flux<MenuModel> findAll() {
		return webClient
				   .get()
				   .uri("/server/api/v1/menu")
				   .retrieve()
				   .bodyToFlux(MenuModel.class);
	}

}
