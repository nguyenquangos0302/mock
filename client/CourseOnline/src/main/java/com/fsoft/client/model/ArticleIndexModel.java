package com.fsoft.client.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ArticleIndexModel {

	private Long id;

	private String name;

	private String icon;

	private String url;
	
	private List<TopicModel> topic;
	
}
