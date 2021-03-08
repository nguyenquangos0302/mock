package com.fsoft.server.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.CommentEntity;

@Repository
public interface ICommentRepository extends JpaRepository<CommentEntity, Long> {

	@Query(value = "SELECT a.* " + 
			"FROM comment as a " + 
			"WHERE a.article_id = (SELECT b.id " + 
			"FROM article as b " + 
			"WHERE b.topic_id = (SELECT c.id " + 
			"					FROM topic as c " + 
			"					WHERE c.url LIKE %:url% and status = 1) and status = 1) and status = 1", nativeQuery = true)
	List<CommentEntity> findAllByTopicUrl(@Param("url") String url);
	
}
