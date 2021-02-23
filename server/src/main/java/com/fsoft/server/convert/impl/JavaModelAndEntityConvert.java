package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.JavaModel;
import com.fsoft.server.model.MenuModel;

public class JavaModelAndEntityConvert implements IConvertModelAndEntityData<JavaModel, MenuEntity> {

	private final ModelMapper modelMapper;

	@Autowired
	public JavaModelAndEntityConvert() {
		modelMapper = new ModelMapper();
	}

	@Override
	public MenuEntity apply(JavaModel t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public JavaModel convertToModel(MenuEntity tObject) {
		JavaModel javaModel = modelMapper.map(tObject, JavaModel.class);
		return javaModel;
	}

	@Override
	public MenuEntity convertToEntity(JavaModel tObject) {
		MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
		return menuEntity;
	}

}
