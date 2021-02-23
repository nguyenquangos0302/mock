package com.fsoft.server.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.MenuEntity;

@Repository
public interface IBreadCrumbRepository extends JpaRepository<MenuEntity, Long> {

	@Query(value = "SELECT * FROM menu WHERE url = :url AND status = 1", nativeQuery = true)
	Optional<MenuEntity> findOneByUrl(@Param("url") String url);
	
}
