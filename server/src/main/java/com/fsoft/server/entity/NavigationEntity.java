package com.fsoft.server.entity;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "navigation")
@Data
@NoArgsConstructor
public class NavigationEntity extends BaseEntity {

    @Column(name = "parentid")
    private Long parentId;

    @Column(name = "icon", columnDefinition = "varchar(255) default 'fab fa-battle-net'")
    private String icon;

    @Column(name = "url", columnDefinition = "varchar(200)", unique = true)
    private String url;

}
