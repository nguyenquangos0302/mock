package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.CourseModel;

public class CourseModelAndEntityConvert implements IConvertModelAndEntityData<CourseModel, MenuEntity> {

	private final ModelMapper modelMapper;

	@Autowired
	public CourseModelAndEntityConvert() {
		modelMapper = new ModelMapper();
	}

	@Override
	public MenuEntity apply(CourseModel t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CourseModel convertToModel(MenuEntity tObject) {
		CourseModel javaModel = modelMapper.map(tObject, CourseModel.class);
		return javaModel;
	}

	@Override
	public MenuEntity convertToEntity(CourseModel tObject) {
		MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
		return menuEntity;
	}

}
