package com.fsoft.client.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NavigationModel {
	
	private Long id;
	
	private String name;
	
	private Long parentId;
	
	private String icon;
	
	private String url;

}
