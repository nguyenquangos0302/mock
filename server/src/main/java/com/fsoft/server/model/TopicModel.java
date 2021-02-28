package com.fsoft.server.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TopicModel {

    private Long id;

    private String name;

    private String topicImage;

    private String shortDescription;

    private String url;

    private String createdBy;

    private Date createdDate;

}
