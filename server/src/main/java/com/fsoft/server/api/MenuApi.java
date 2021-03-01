package com.fsoft.server.api;

import java.util.List;

import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

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
        return menuService.findAllMenuByParentIdIsNotNull();
    }

}
