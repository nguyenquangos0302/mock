package com.fsoft.server.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.fsoft.server.dto.MenuDto;

@Service
public interface IMenuService {

    List<MenuDto> findAll();

}
