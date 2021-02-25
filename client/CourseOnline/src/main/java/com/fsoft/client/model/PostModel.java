package com.fsoft.client.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PostModel {

	private String name;

	private String postImage;

	private String shortDescription;

	private String url;

	private String createdBy;

	private Date createdDate;

}
