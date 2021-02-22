package com.fsoft.server.entity;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "menu")
@Getter
@Setter
@NoArgsConstructor
public class MenuEntity extends BaseEntity {
	
    
    @OneToMany(mappedBy = "parent")
    @JsonManagedReference
    private Set<MenuEntity> children;

    @ManyToOne
    @JsonBackReference
    private MenuEntity parent;

    @Column(name = "icon", columnDefinition = "varchar(255) default 'fas fa-air-freshener'")
    private String icon;

    @Column(name = "url", columnDefinition = "varchar(200)", unique = true)
    private String url;
    
}
