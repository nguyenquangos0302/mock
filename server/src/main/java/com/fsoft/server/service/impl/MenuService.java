package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import com.fsoft.server.convert.impl.CategoryModelAndEntityConvert;
import com.fsoft.server.convert.impl.MenuModelAndEntityConvert;
import com.fsoft.server.convert.impl.TopicModelAndEntityConvert;
import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import com.fsoft.server.model.TopicModel;

import org.springframework.stereotype.Service;

import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.repository.IMenuRepository;
import com.fsoft.server.service.IMenuService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MenuService implements IMenuService {

    private final IMenuRepository menuRepository;

    @Override
    public List<MenuModel> findAll() {
    	
    	List<MenuEntity> listMenuEntities = menuRepository.findAll()
    													  .stream()
    													  .filter(menu -> Objects.isNull(menu.getParent()))
    													  .collect(Collectors.toList());
    	
        List<MenuModel> list = new ArrayList<MenuModel>();
        
        for (MenuEntity menuEntity : listMenuEntities) {
            MenuModel menuDto = new MenuModelAndEntityConvert().convertToModel(menuEntity);
			list.add(menuDto);
		}
        
        return list;
    }

	@Override
	public List<CategoryModel> findAllMenuByParentIdIsNotNull() {
		// TODO Auto-generated method stub
		 List<CategoryModel> list = new ArrayList<CategoryModel>();

	        list = menuRepository.findAllMenuByParentIdIsNotNull().stream()
	                .map(element -> new CategoryModelAndEntityConvert().convertToModel(element))
	                .collect(Collectors.toList());

	        return list;
	}
}
