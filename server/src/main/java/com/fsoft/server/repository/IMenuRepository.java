package com.fsoft.server.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.MenuEntity;

@Repository
public interface IMenuRepository extends JpaRepository<MenuEntity, Long> {
	
	@Query(value = "select * from menu where parent_id is not NULL;", nativeQuery=true)
	List<MenuEntity> findAllMenuByParentIdIsNotNull();
}
