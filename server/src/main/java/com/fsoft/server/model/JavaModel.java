package com.fsoft.server.model;

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

	private String icon;

	private String url;

	//private List<MenuDto> children;
}
