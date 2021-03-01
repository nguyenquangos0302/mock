package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.CategoryModel;

public class CategoryModelAndEntityConvert implements IConvertModelAndEntityData<CategoryModel, MenuEntity> {

	private final ModelMapper modelMapper;

	@Autowired
	public CategoryModelAndEntityConvert() {
		modelMapper = new ModelMapper();
	}

	@Override
	public MenuEntity apply(CategoryModel arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryModel convertToModel(MenuEntity tObject) {
		// TODO Auto-generated method stub
		CategoryModel categoryModel = modelMapper.map(tObject, CategoryModel.class);
		return categoryModel;
	}

	@Override
	public MenuEntity convertToEntity(CategoryModel tObject) {
		MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
		return menuEntity;
	}

}
