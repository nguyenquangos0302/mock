package com.fsoft.server.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.MenuEntity;

@Repository
public interface IMenuRepository extends JpaRepository<MenuEntity, Long> {
	
	List<MenuEntity> findByParentIdIsNotNull();
	
	long countByParentIdIsNull();
	
	List<MenuEntity> findByParentIdIsNullAndIdGreaterThan(Long id);
	
	List<MenuEntity> findByParentIdIsNull();
	
}
