package com.fsoft.server.convert.impl;

import com.fsoft.server.convert.IConvertDtoAndEntityData;
import com.fsoft.server.dto.NavigationDto;
import com.fsoft.server.entity.NavigationEntity;
import com.fsoft.server.model.NavigationModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class NavigationDtoAndEntityConvert implements IConvertDtoAndEntityData<NavigationDto, NavigationEntity> {

    private final ModelMapper modelMapper;

    @Autowired
    public NavigationDtoAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

    @Override
    public NavigationDto convertToDto(NavigationEntity tObject) {
        NavigationDto navigationDto = modelMapper.map(tObject, NavigationDto.class);
        return navigationDto;
    }

    @Override
    public NavigationEntity convertToEntity(NavigationDto tObject) {
        NavigationEntity navigationEntity = modelMapper.map(tObject, NavigationEntity.class);
        return navigationEntity;
    }

    @Override
    public NavigationEntity apply(NavigationDto navigationDto) {
        return null;
    }
}
