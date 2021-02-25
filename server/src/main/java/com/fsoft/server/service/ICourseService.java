package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.CourseModel;
import com.fsoft.server.model.JavaModel;

@Service
public interface ICourseService {
	
	List<CourseModel> findByUrl(String url);
	
	List<CourseModel> findAllByURL(String url);

}
