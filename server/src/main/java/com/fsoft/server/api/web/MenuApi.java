package com.fsoft.server.api.web;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.ArticleIndexModel;
import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import com.fsoft.server.model.MenuParentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.SaveMenuModel;
import com.fsoft.server.service.IMenuService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class MenuApi {

    private final IMenuService menuService;

    @GetMapping("/menu")
    public List<MenuModel> findAll() {
    	return menuService.findAll();
    }
    
    @GetMapping("/catgory")
    public List<CategoryModel> findAllMenuByParentIdIsNotNull() {
        return menuService.findByParentIdIsNotNull();
    }
    
    @GetMapping("/menu/count")
    public Long countByParentIdIsNull() {
    	return menuService.countByParentIdIsNull();
    }
    
    @GetMapping("/menu/index")
    public List<ArticleIndexModel> findByParentIdIsNullAndIdGreaterThan() {
    	return menuService.findByParentIdIsNullAndIdGreaterThan();
    }
    
}
