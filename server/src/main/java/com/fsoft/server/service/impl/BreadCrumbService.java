package com.fsoft.server.service.impl;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.fsoft.server.convert.impl.BreadCrumbModelAndEntityConvert;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.BreadCrumbModel;
import com.fsoft.server.repository.IBreadCrumbRepository;
import com.fsoft.server.service.IBreadCrumbService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BreadCrumbService implements IBreadCrumbService {

	private final IBreadCrumbRepository breadCrumbRepository;

	@Override
	public BreadCrumbModel findOneById(BreadCrumbModel breadCrumbModel) {

		Optional<MenuEntity> menuEntity = breadCrumbRepository.findOneByUrl(breadCrumbModel.getUrl());
		
		if(menuEntity.isPresent()) {
			MenuEntity menuEntity2 = menuEntity.get();
			BreadCrumbModel breadCrumbModel2 = new BreadCrumbModelAndEntityConvert().convertToModel(menuEntity2);
			return breadCrumbModel2;
		}
		
		return null;
	}
	
}
