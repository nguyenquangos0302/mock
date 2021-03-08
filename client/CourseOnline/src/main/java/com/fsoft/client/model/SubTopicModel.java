package com.fsoft.client.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
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
