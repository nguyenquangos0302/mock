package com.fsoft.server.dto;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuDto {

    private Long id;

    private String name;

    private String icon;

    private String url;
    
    private List<MenuDto> children;

}
