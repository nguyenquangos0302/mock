package com.fsoft.server.model;

import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MenuModel {

    private Long id;

    private String name;

    private String icon;

    private String url;

    private List<MenuModel> children;

}
