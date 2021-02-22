package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.dto.MenuDto;
import com.fsoft.server.entity.MenuEntity;

@Service
public interface IMenuService {

    List<MenuDto> finalAll();

}
