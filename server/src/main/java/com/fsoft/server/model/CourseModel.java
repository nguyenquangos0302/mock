package com.fsoft.server.model;

import java.sql.Timestamp;
import java.util.List;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CourseModel {

	private Long id;

	private String name;

	private String icon;

	private String url;

	private List<CourseModel> children;

	private Timestamp modifiedDate;

	private String modifiedBy;
}
