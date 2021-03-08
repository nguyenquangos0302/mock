package com.fsoft.client.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentArticleModel {

	private String name;

	private String content;

	private String email;
	
	private String urlArticle;
	
}
