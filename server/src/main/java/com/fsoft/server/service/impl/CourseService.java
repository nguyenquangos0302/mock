package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.CourseModelAndEntityConvert;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.CourseModel;
import com.fsoft.server.repository.ICourseRepository;
import com.fsoft.server.service.ICourseService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class CourseService implements ICourseService {

	private final ICourseRepository javaRepository;
	
	@Override
	public List<CourseModel> findAllCourseByUrl(CourseModel postModel) {
		List<MenuEntity> listMenuEntities = javaRepository.findAllCourseByUrl(postModel.getUrl()).stream()
				.filter(menu -> Objects.isNull(menu.getParent())).collect(Collectors.toList());

		List<CourseModel> list = new ArrayList<CourseModel>();

		for (MenuEntity menuEntity : listMenuEntities) {
			CourseModel courseModel = new CourseModelAndEntityConvert().convertToModel(menuEntity);
			list.add(courseModel);
		}

		return list;
	}

	@Override
	public List<CourseModel> findAllCourse() {
		List<MenuEntity> listMenuEntities = javaRepository.findAllCourse().stream()
				.filter(menu -> Objects.isNull(menu.getParent())).collect(Collectors.toList());

		List<CourseModel> list = new ArrayList<CourseModel>();

		for (MenuEntity menuEntity : listMenuEntities) {
			CourseModel courseModel = new CourseModelAndEntityConvert().convertToModel(menuEntity);
			list.add(courseModel);
		}

		return list;
	}

}
