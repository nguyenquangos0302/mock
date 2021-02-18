package com.fsoft.server.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NavigationModel {

    private Long id;

    private String name;

    private Long parentId;

    private String icon;

    private String url;

    private int status;

    private String createdBy;

    private String modifiedBy;

    private Date createdDate;

    private Date modifiedDate;

    public NavigationModel(String name, String url) {
        this.name = name;
        this.url = url;
    }

    public NavigationModel(Long id, String name, String url) {
        this.id = id;
        this.name = name;
        this.url = url;
    }

    public NavigationModel(Long id, String name, Long parentId, String url) {
        this.id = id;
        this.name = name;
        this.parentId = parentId;
        this.url = url;
    }

}
