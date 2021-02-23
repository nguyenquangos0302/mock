package com.fsoft.server.api;

import com.fsoft.server.dto.MenuDto;
import com.fsoft.server.entity.MenuEntity;
import com.fsoft.server.model.MenuModel;
import com.fsoft.server.service.IMenuService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class MenuApi {

    private final IMenuService menuService;

    @GetMapping("/menu")
    public List<MenuDto> findAll() {
        return menuService.finalAll();
    }

}
