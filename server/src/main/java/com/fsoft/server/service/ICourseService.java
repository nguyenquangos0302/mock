package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.CourseModel;

@Service
public interface ICourseService {
	
	List<CourseModel> findAllCourseByUrl(CourseModel postModel);

    List<CourseModel> findAllCourse();
}
