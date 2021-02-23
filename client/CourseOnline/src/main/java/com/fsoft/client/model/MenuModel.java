package com.fsoft.client.model;

import java.util.Set;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuModel {
	
	private Long id;
	
	private String name;
	
	private Long parentId;
	
	private String icon;
	
	private String url;
	
	private Set<MenuModel> children;

}
