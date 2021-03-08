package com.fsoft.server.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SaveMenuModel {

	private String name;
	
	private int status;
	
	private String icon;
	
	private String url;
	
	private Long parent_id;
	
}
