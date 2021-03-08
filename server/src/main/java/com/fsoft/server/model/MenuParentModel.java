package com.fsoft.server.model;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MenuParentModel {

	private Long id;

	private String name;

	private String icon;

	private String url;
	
	private int status;

}
