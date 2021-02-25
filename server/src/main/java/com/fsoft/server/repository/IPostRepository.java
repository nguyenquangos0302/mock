package com.fsoft.server.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.PostEntity;

@Repository
public interface IPostRepository extends JpaRepository<PostEntity, Long> {

	@Query(value = "SELECT * " + 
			"FROM post " + 
			"WHERE menu_id in (SELECT m.id FROM menu as m WHERE m.name = :name) AND status = 1;", nativeQuery = true )
	List<PostEntity> findByName(@Param("name") String name);
	
}
