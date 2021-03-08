package com.fsoft.client.api;

import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.reactive.function.client.WebClient;

import com.fsoft.client.model.ArticleIndexModel;
import com.fsoft.client.model.CategoryModel;
import com.fsoft.client.model.MenuModel;
import com.fsoft.client.model.ResultModel;
import com.fsoft.client.model.SaveMenuModel;

import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

@RestController
@RequestMapping("/client/api/v1")
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class MenuApi {

	WebClient webClient;

	public MenuApi() {
		this.webClient = WebClient.builder().baseUrl("http://localhost:8081")
				.defaultHeader(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE).build();
	}

	@GetMapping("/menu")
	public Flux<MenuModel> findAll() {
		return webClient.get().uri("/server/api/v1/menu").retrieve().bodyToFlux(MenuModel.class);

	}

	@GetMapping("/menu/index")
	public Flux<ArticleIndexModel> findByParentIdIsNullAndIdGreaterThan() {
		return webClient.get().uri("/server/api/v1/menu/index").retrieve().bodyToFlux(ArticleIndexModel.class);
	}
	
	@GetMapping("/menu/parent")
	public Flux<CategoryModel> findByParentIdIsNull() {
		return webClient.get().uri("/server/api/v1/menu/parent").retrieve().bodyToFlux(CategoryModel.class);
	}
	
	@GetMapping("/menu/parentgreaterthanone")
	public Flux<CategoryModel> findByParentIdIsNullAndIdGreaterThanOne() {
		return webClient.get().uri("/server/api/v1/menu/parentgreaterthanone").retrieve().bodyToFlux(CategoryModel.class);
	}
	
	@GetMapping("/menu/allparentgreaterthanone")
	public Flux<MenuModel> findAllAndIdGreaterThanOne() {
		return webClient.get().uri("/server/api/v1/menu/allparentgreaterthanone").retrieve().bodyToFlux(MenuModel.class);
	}
	
	@PostMapping("/menu/addition")
    public Mono<ResultModel> addMenu(@RequestBody SaveMenuModel saveMenuModel) {
		System.out.println(saveMenuModel.getName());
		return webClient
				.post()
				.uri("/server/api/v1/menu/addition")
				.bodyValue(saveMenuModel)
				.retrieve()
				.bodyToMono(ResultModel.class);
    }
}
