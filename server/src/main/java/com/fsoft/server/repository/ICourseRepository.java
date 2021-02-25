package com.fsoft.server.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.MenuEntity;

@Repository
public interface ICourseRepository extends JpaRepository<MenuEntity, Long> {

	@Query(value = "SELECT * FROM menu WHERE url LIKE %:url% AND status = 1 ORDER BY id ASC;", nativeQuery = true)
	List<MenuEntity> findByUrl(@Param("url") String url);
	
}
