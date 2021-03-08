package com.fsoft.server.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MenuModel {

    private Long id;

    private String name;

    private String icon;

    private String url;
    
    private int status;

    private List<MenuModel> children;

}
