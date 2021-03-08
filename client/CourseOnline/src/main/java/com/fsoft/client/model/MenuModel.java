package com.fsoft.client.model;

import java.time.LocalDateTime;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

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
	
	private int status;
	
	private List<MenuModel> children;

}
