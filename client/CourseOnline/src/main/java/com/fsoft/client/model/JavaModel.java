package com.fsoft.client.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class JavaModel {

	private Long id;

	private String name;

	private Long parentId;

	private String icon;

	private String url;

	private List<MenuModel> children;
	
}
