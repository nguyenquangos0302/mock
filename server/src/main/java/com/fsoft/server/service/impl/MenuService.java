package com.fsoft.server.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

import com.fsoft.server.convert.impl.CategoryModelAndEntityConvert;
import com.fsoft.server.convert.impl.MenuModelAndEntityConvert;
import com.fsoft.server.convert.impl.MenuParentModelAndEntityConvert;
import com.fsoft.server.convert.impl.SaveMenuModelAndEntityConvert;
import com.fsoft.server.convert.impl.TopicModelAndEntityConvert;
import com.fsoft.server.model.ArticleIndexModel;
import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import com.fsoft.server.model.MenuParentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.SaveMenuModel;
import com.fsoft.server.model.TopicModel;

import org.springframework.stereotype.Service;

import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.repository.IMenuRepository;
import com.fsoft.server.repository.ITopicRepository;
import com.fsoft.server.service.IMenuService;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class MenuService implements IMenuService {

	private final IMenuRepository menuRepository;

	private final ITopicRepository topicRepository;

	@Override
	public List<MenuModel> findAll() {

		List<MenuEntity> listMenuEntities = menuRepository.findAll().stream()
				.filter(menu -> Objects.isNull(menu.getParent())).collect(Collectors.toList());

		List<MenuModel> list = new ArrayList<MenuModel>();

		for (MenuEntity menuEntity : listMenuEntities) {
			MenuModel menuDto = new MenuModelAndEntityConvert().convertToModel(menuEntity);
			list.add(menuDto);
		}

		return list;
	}

	@Override
	public List<CategoryModel> findByParentIdIsNotNull() {
		// TODO Auto-generated method stub
		List<CategoryModel> list = new ArrayList<CategoryModel>();

		list = menuRepository.findByParentIdIsNotNull().stream()
				.map(element -> new CategoryModelAndEntityConvert().convertToModel(element))
				.collect(Collectors.toList());

		return list;
	}

	@Override
	public long countByParentIdIsNull() {
		return menuRepository.countByParentIdIsNull();
	}

	@Override
	public List<ArticleIndexModel> findByParentIdIsNullAndIdGreaterThan() {
		List<MenuParentModel> list = new ArrayList<MenuParentModel>();

		list = menuRepository.findByParentIdIsNullAndIdGreaterThan(1L).stream()
				.map(element -> new MenuParentModelAndEntityConvert().convertToModel(element))
				.collect(Collectors.toList());

		List<ArticleIndexModel> listArticle = new ArrayList<ArticleIndexModel>();

		for (MenuParentModel mp : list) {
			ArticleIndexModel aim = new ArticleIndexModel();
			List<TopicModel> listTopic = new ArrayList<TopicModel>();
			listTopic = topicRepository.findRandomArticle(mp.getName()).stream()
					.map(element -> new TopicModelAndEntityConvert().convertToModel(element))
					.collect(Collectors.toList());
			aim.setId(mp.getId());
			aim.setIcon(mp.getIcon());
			aim.setName(mp.getName());
			aim.setUrl(mp.getUrl());
			aim.setTopic(listTopic);
			listArticle.add(aim);
		}

		return listArticle;
	}

	@Override
	public ResultModel save(SaveMenuModel saveMenuModel) {
		MenuEntity children = new MenuEntity();
		if (saveMenuModel.getParent_id() != null) {
			MenuEntity parent = menuRepository.findById(saveMenuModel.getParent_id()).get();
			children.setParent(parent);
		}
		children.setStatus(saveMenuModel.getStatus());
		children.setUrl(saveMenuModel.getUrl());
		children.setName(saveMenuModel.getName());
		children.setIcon(saveMenuModel.getIcon());

		MenuEntity menuEntity = new MenuEntity();
		menuEntity = menuRepository.save(children);

		ResultModel result = new ResultModel();
		if (menuEntity != null) {
			result.setResult("success");
		} else {
			result.setResult("fail");
		}
		return result;
	}

	@Override
	public List<CategoryModel> findByParentIdIsNull() {

		return menuRepository.findByParentIdIsNull().stream()
				.map(element -> new CategoryModelAndEntityConvert().convertToModel(element))
				.collect(Collectors.toList());
	}

	@Override
	public List<MenuParentModel> findByParentIdIsNullAndIdGreaterThanOne() {
		List<MenuParentModel> list = new ArrayList<MenuParentModel>();
		list = menuRepository.findByParentIdIsNullAndIdGreaterThan(1L).stream()
				.map(element -> new MenuParentModelAndEntityConvert().convertToModel(element))
				.collect(Collectors.toList());
		return list;
	}

	@Override
	public List<MenuModel> findAllAndIdGreaterThanOne() {
		List<MenuModel> list = new ArrayList<MenuModel>();
		list = menuRepository.findByParentIdIsNullAndIdGreaterThan(1L).stream().map(element -> new MenuModelAndEntityConvert().convertToModel(element)).collect(Collectors.toList());
		return list;
	}
}
