package com.fsoft.client.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TopicModel {
	
	private Long id;

    private String name;

    private String topicImage;

    private String shortDescription;

    private String url;

    private int limit;

    private int offset;

    private String createdBy;

    private Date createdDate;

}
