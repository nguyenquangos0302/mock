package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.BreadCrumbModel;
import com.fsoft.server.model.MenuModel;

public class BreadCrumbModelAndEntityConvert implements IConvertModelAndEntityData<BreadCrumbModel, MenuEntity> {
	
	private final ModelMapper modelMapper;

    @Autowired
    public BreadCrumbModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

	@Override
	public MenuEntity apply(BreadCrumbModel arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BreadCrumbModel convertToModel(MenuEntity tObject) {
		BreadCrumbModel breadCrumbModel = modelMapper.map(tObject, BreadCrumbModel.class);
        return breadCrumbModel;
	}

	@Override
	public MenuEntity convertToEntity(BreadCrumbModel tObject) {
		MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
        return menuEntity;
	}

}
