package com.fsoft.server.api;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.JavaModel;
import com.fsoft.server.service.IJavaService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class JavaApi {
	
	private final IJavaService javaService;
	
	@GetMapping("/java")
    public List<JavaModel> findByUrl() {
        return javaService.findByUrl("/java");
    }

}
