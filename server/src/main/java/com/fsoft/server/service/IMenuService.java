package com.fsoft.server.service;

import java.util.List;

import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import org.springframework.stereotype.Service;


@Service
public interface IMenuService {

    List<MenuModel> findAll();
    
    List<CategoryModel> findAllMenuByParentIdIsNotNull();

}
