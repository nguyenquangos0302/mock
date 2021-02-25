package com.fsoft.server.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "post")
@Getter
@Setter
@NoArgsConstructor
public class PostEntity extends BaseEntity {
	
	private String shortDescription;
	
	@Column(name = "post_image", columnDefinition = "TEXT")
	private String postImage;
	
	@Column(name = "post_home", columnDefinition = "int default 1")
	private String postHome;
	
	@Column(name = "url", columnDefinition = "varchar(200)", unique = true)
	private String url;
	
	@ManyToOne
	@JoinColumn(name = "menu_id")
	private MenuEntity menu;
	
	@OneToMany(mappedBy = "post")
	private List<ArticleEntity> contents;
	

}
