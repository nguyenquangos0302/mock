package com.fsoft.server.convert.impl;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.entity.TopicEntity;
import com.fsoft.server.model.SaveMenuModel;
import com.fsoft.server.model.SubTopicModel;

public class SaveMenuModelAndEntityConvert implements IConvertModelAndEntityData<SaveMenuModel, MenuEntity>{

	
	private final ModelMapper modelMapper;

    @Autowired
    public SaveMenuModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

	@Override
	public MenuEntity apply(SaveMenuModel t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SaveMenuModel convertToModel(MenuEntity tObject) {
		SaveMenuModel saveMenuModel = modelMapper.map(tObject, SaveMenuModel.class);
        return saveMenuModel;
	}

	@Override
	public MenuEntity convertToEntity(SaveMenuModel tObject) {
		MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
        return menuEntity;
	}
    
    
	
	

}
