package com.fsoft.server.dto;

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
    
    private Set<MenuDto> children;

}
