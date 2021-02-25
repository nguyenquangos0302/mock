package com.fsoft.server.api;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.CourseModel;
import com.fsoft.server.service.ICourseService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class HibernateApi {

	private final ICourseService courseService;
	
	@GetMapping("/hibernate")
    public List<CourseModel> findByUrl() {
        return courseService.findByUrl("/hibernate");
    }
	
}
