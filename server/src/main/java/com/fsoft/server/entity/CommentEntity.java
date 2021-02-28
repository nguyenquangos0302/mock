package com.fsoft.server.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "comment")
@Setter
@Getter
@NoArgsConstructor
public class CommentEntity extends BaseEntity{
	
	@Column(name = "email",  columnDefinition = "varchar(255)")
	private String email;
	
	@Column(name = "body", columnDefinition = "TEXT")
	private String body;

}
