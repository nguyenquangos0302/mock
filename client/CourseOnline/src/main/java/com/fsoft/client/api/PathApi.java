package com.fsoft.client.api;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.client.model.PathModel;

@RestController
@RequestMapping("/client/api/v1")
public class PathApi {
	
	@GetMapping("/path")
	public Object getPath(HttpServletRequest request) {
		PathModel path = new PathModel(request.getContextPath());
		return new ResponseEntity<PathModel>(path, HttpStatus.OK);
	}

}
