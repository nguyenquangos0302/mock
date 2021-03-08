package com.fsoft.server.model;

import java.util.List;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@Getter
@Setter
public class ArticleIndexModel {

	private Long id;

	private String name;

	private String icon;

	private String url;
	
	private List<TopicModel> topic;
	
}
