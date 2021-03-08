package com.fsoft.server.api.admin;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fsoft.server.model.CategoryModel;
import com.fsoft.server.model.MenuModel;
import com.fsoft.server.model.MenuParentModel;
import com.fsoft.server.model.ResultModel;
import com.fsoft.server.model.SaveMenuModel;
import com.fsoft.server.service.IMenuService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/server/admin/api/v1")
@AllArgsConstructor
public class MenuAdminApi {
	
	private final IMenuService menuService;
	
	@GetMapping("/menu/parent")
    public List<CategoryModel> findByParentIdIsNull() {
    	return menuService.findByParentIdIsNull();
    }
    
    @PostMapping("/menu/addition")
    public ResultModel addMenu(@RequestBody SaveMenuModel saveMenuModel) {
    	System.out.println(saveMenuModel.getName());
		return menuService.save(saveMenuModel);
    }
    
    @GetMapping("/menu/parentgreaterthanone")
    public List<MenuParentModel> findByParentIdIsNullAndIdGreaterThanOne() {
    	return menuService.findByParentIdIsNullAndIdGreaterThanOne();
    }
    
    @GetMapping("/menu/allparentgreaterthanone")
    public List<MenuModel> findAllAndIdGreaterThanOne() {
    	return menuService.findAllAndIdGreaterThanOne();
    }

}
