package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.model.ArticleIndexModel;
import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import com.fsoft.server.model.MenuParentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.SaveMenuModel;


@Service
public interface IMenuService {

    List<MenuModel> findAll();
    
    List<CategoryModel> findByParentIdIsNotNull();

    long countByParentIdIsNull();
    
    List<ArticleIndexModel> findByParentIdIsNullAndIdGreaterThan();
    
    ResultModel save(SaveMenuModel saveMenuModel);
    
    List<CategoryModel> findByParentIdIsNull();
    
    List<MenuParentModel> findByParentIdIsNullAndIdGreaterThanOne();
    
    List<MenuModel> findAllAndIdGreaterThanOne();
}
