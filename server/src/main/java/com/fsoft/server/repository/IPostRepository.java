package com.fsoft.server.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.PostEntity;

@Repository
public interface IPostRepository extends JpaRepository<PostEntity, Long> {

	@Query(value = "SELECT * " + "FROM article as a " + "WHERE a.topic_id = (SELECT t.id "
			+ "					FROM topic as t "
			+ "					WHERE t.url LIKE %:url% and status = 1) and status = 1", nativeQuery = true)
	Optional<PostEntity> findArticleByUrl(@Param("url") String url);

}
