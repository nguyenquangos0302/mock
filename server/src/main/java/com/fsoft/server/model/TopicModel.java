package com.fsoft.server.model;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class TopicModel {

    private Long id;

    private String name;

    private String topicImage;

    private String shortDescription;

    private String url;

    private String createdBy;

    private Date createdDate;
    
    

}
