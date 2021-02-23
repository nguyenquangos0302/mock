package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.JavaModelAndEntityConvert;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.JavaModel;
import com.fsoft.server.repository.IJavaRepository;
import com.fsoft.server.service.IJavaService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class JavaService implements IJavaService {

	private final IJavaRepository javaRepository;
	
	@Override
	public List<JavaModel> findByUrl(String url) {
		List<MenuEntity> listMenuEntities = javaRepository.findByUrl(url).stream()
				.filter(menu -> Objects.isNull(menu.getParent())).collect(Collectors.toList());

		List<JavaModel> list = new ArrayList<JavaModel>();

		for (MenuEntity menuEntity : listMenuEntities) {
			JavaModel javaModel = new JavaModelAndEntityConvert().convertToModel(menuEntity);
			list.add(javaModel);
		}

		return list;
	}

}
