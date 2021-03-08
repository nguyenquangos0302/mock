package com.fsoft.server.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommentModel {

	private String modifiedBy;
	
	private Date modifiedDate;
	
	private String name;
	
	private String content;
	
	private String email;
	
}
