package com.fsoft.client.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TopicPagingModel {

	List<TopicModel> topic;
	
	private int currentPage;
	
	private int totalItems;
	
	private int totalPages;
}
