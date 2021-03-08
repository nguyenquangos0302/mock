package com.fsoft.server.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "article")
@Getter
@Setter
@NoArgsConstructor
public class PostEntity extends BaseEntity {

	private String content;
	
	@OneToOne
	@JoinColumn(name = "topic_id")
	private TopicEntity topic;

	@OneToMany(mappedBy = "post")
	private List<CommentEntity> comments;

}
