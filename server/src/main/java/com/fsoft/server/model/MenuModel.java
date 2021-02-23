package com.fsoft.server.model;

import java.time.LocalDate;
import java.util.Set;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MenuModel {

    private Long id;

    private String name;

    private Long parentId;

    private String icon;

    private String url;

    private int status;

    private String createdBy;

    private String modifiedBy;

    private LocalDate createdDate;

    private LocalDate modifiedDate;
    
    private Set<MenuModel> menus;

}
