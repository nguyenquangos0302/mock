package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.MenuParentModel;
import com.fsoft.server.model.TopicModel;

public class MenuParentModelAndEntityConvert implements IConvertModelAndEntityData<MenuParentModel, MenuEntity> {

	private final ModelMapper modelMapper;

    @Autowired
    public MenuParentModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }
	
	@Override
	public MenuEntity apply(MenuParentModel arg0) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MenuParentModel convertToModel(MenuEntity tObject) {
		MenuParentModel menuParentModel = modelMapper.map(tObject, MenuParentModel.class);
        return menuParentModel;
	}

	@Override
	public MenuEntity convertToEntity(MenuParentModel tObject) {
		MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
        return menuEntity;
	}

}
