package com.fsoft.server.api;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.BreadCrumbModel;
import com.fsoft.server.service.IBreadCrumbService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class BreadCrumbApi {
	
	private final IBreadCrumbService BreadCrumbService;
	
	@PostMapping("/breadcrumb")
	public BreadCrumbModel breadCrumbModel(@RequestBody BreadCrumbModel breadCrumbModel) {
		return BreadCrumbService.findOneById(breadCrumbModel);
	}

}
