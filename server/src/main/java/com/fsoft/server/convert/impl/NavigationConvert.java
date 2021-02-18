package com.fsoft.server.convert.impl;

import com.fsoft.server.convert.IConvertData;
import com.fsoft.server.entity.NavigationEntity;
import com.fsoft.server.model.NavigationModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class NavigationConvert implements IConvertData<NavigationModel, NavigationEntity> {

    private final ModelMapper modelMapper;

    @Autowired
    public NavigationConvert() {
        modelMapper = new ModelMapper();
    }

    @Override
    public NavigationModel convertToDtoOrModel(NavigationEntity tObject) {
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
