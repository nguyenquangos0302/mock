package com.fsoft.server.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SubTopicModel {
	
	   	private Long id;
	   	
	   	private Long status;
	   	
	   	private Long menuId;

	    private String name;

	    private String shortDescription;

	    private String createdBy;
	    
	    private String modifiedBy;

	    private Date createdDate;
	    
	    private Date modifiedDate;

}
