package com.fsoft.client.model;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.Date;
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

	private Long parentId;

	private String icon;

	private String url;

	private List<CourseModel> children;
	
	private Timestamp modifiedDate;

	private String modifiedBy;

}
