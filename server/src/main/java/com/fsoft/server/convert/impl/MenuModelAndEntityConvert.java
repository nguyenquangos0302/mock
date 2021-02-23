package com.fsoft.server.convert.impl;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.MenuModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class MenuModelAndEntityConvert implements IConvertModelAndEntityData<MenuModel, MenuEntity> {

    private final ModelMapper modelMapper;

    @Autowired
    public MenuModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

    @Override
    public MenuModel convertToModel(MenuEntity tObject) {
        MenuModel navigationModel = modelMapper.map(tObject, MenuModel.class);
        return navigationModel;
    }

    @Override
    public MenuEntity convertToEntity(MenuModel tObject) {
        MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
        return menuEntity;
    }

    @Override
    public MenuEntity apply(MenuModel navigationModel) {
        return null;
    }
}
