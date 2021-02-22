package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.MenuDtoAndEntityConvert;
import com.fsoft.server.dto.MenuDto;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.repository.IMenuRepository;
import com.fsoft.server.service.IMenuService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MenuService implements IMenuService {

    private final IMenuRepository menuRepository;

    @Override
    public List<MenuDto> finalAll() {
    	
    	List<MenuEntity> listMenuEntities = menuRepository.findAll()
    													  .stream()
    													  .filter(menu -> Objects.isNull(menu.getParent()))
    													  .collect(Collectors.toList());
    	
        List<MenuDto> list = new ArrayList<MenuDto>();
        
        for (MenuEntity menuEntity : listMenuEntities) {
			MenuDto menuDto = new MenuDtoAndEntityConvert().convertToDto(menuEntity);
			list.add(menuDto);
		}
        
        return list;
    }
}
