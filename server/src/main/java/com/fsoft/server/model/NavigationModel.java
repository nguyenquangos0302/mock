package com.fsoft.server.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import java.time.LocalDate;
import java.util.Date;

@Data
@NoArgsConstructor
public class NavigationModel {

    private Long id;

    private String name;

    private Long parentId;

    private String icon;

    private String url;

    private int status;

    private String createdBy;

    private String modifiedBy;

    private LocalDate createdDate;

    private LocalDate modifiedDate;

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

    public NavigationModel(Long id, String name, String icon, String url, int status, String createdBy, String modifiedBy, LocalDate createdDate, LocalDate modifiedDate) {
        this.id = id;
        this.name = name;
        this.icon = icon;
        this.url = url;
        this.status = status;
        this.createdBy = createdBy;
        this.modifiedBy = modifiedBy;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
    }

    public NavigationModel(Long id, String name, Long parentId, String icon, String url, int status, String createdBy, String modifiedBy, LocalDate createdDate, LocalDate modifiedDate) {
        this.id = id;
        this.name = name;
        this.parentId = parentId;
        this.icon = icon;
        this.url = url;
        this.status = status;
        this.createdBy = createdBy;
        this.modifiedBy = modifiedBy;
        this.createdDate = createdDate;
        this.modifiedDate = modifiedDate;
    }
}
