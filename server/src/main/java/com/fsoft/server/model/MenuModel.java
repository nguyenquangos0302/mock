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

    private String icon;

    private String url;

    private int status;

    private String createdBy;

    private String modifiedBy;

    private LocalDate createdDate;

    private LocalDate modifiedDate;
    
    private Set<MenuModel> menus;

    public MenuModel(String name, String url) {
        this.name = name;
        this.url = url;
    }

    public MenuModel(Long id, String name, String url) {
        this.id = id;
        this.name = name;
        this.url = url;
    }
}
