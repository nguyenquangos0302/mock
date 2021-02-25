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
@Table(name = "article")
@Getter
@Setter
@NoArgsConstructor
public class ArticleEntity extends BaseEntity{
	
	@Column(name = "content", columnDefinition = "TEXT")
	private String lorem;

	@ManyToOne
	@JoinColumn(name = "post_id")
	private PostEntity post;
	
	@OneToMany(mappedBy = "article")
	private List<CommentEntity> comments;
}
