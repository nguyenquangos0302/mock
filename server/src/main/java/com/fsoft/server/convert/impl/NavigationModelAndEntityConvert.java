package com.fsoft.server.convert.impl;

import com.fsoft.server.convert.IConvertModelAndEntityData;
import com.fsoft.server.entity.NavigationEntity;
import com.fsoft.server.model.NavigationModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class NavigationModelAndEntityConvert implements IConvertModelAndEntityData<NavigationModel, NavigationEntity> {

    private final ModelMapper modelMapper;

    @Autowired
    public NavigationModelAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

    @Override
    public NavigationModel convertToModel(NavigationEntity tObject) {
        NavigationModel navigationModel = modelMapper.map(tObject, NavigationModel.class);
        return navigationModel;
    }

    @Override
    public NavigationEntity convertToEntity(NavigationModel tObject) {
        NavigationEntity navigationEntity = modelMapper.map(tObject, NavigationEntity.class);
        return navigationEntity;
    }

    @Override
    public NavigationEntity apply(NavigationModel navigationModel) {
        return null;
    }
}
