package com.fsoft.server.model;

import java.sql.Timestamp;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CourseModel {

	private Long id;

	private String name;

	private String icon;

	private String url;

	private Timestamp modifiedDate;
	
	private String modifiedBy;

	private List<CourseModel> children;

}
