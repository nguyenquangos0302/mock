package com.fsoft.server.convert.impl;

import com.fsoft.server.convert.IConvertDtoAndEntityData;
import com.fsoft.server.dto.MenuDto;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.MenuModel;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

public class MenuDtoAndEntityConvert implements IConvertDtoAndEntityData<MenuDto, MenuEntity> {

    private final ModelMapper modelMapper;

    @Autowired
    public MenuDtoAndEntityConvert() {
        modelMapper = new ModelMapper();
    }

    @Override
    public MenuDto convertToDto(MenuEntity tObject) {
        MenuDto navigationDto = modelMapper.map(tObject, MenuDto.class);
        return navigationDto;
    }

    @Override
    public MenuEntity convertToEntity(MenuDto tObject) {
        MenuEntity menuEntity = modelMapper.map(tObject, MenuEntity.class);
        return menuEntity;
    }

    @Override
    public MenuEntity apply(MenuDto navigationDto) {
        return null;
    }
}
