package com.fsoft.server.repository;

import java.sql.Timestamp;
import java.util.List;

import com.fsoft.server.model.CourseModel;
import org.hibernate.sql.Select;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.MenuEntity;

@Repository
public interface ICourseRepository extends JpaRepository<MenuEntity, Long> {

	@Query(value = "SELECT * FROM menu WHERE url LIKE %:url% AND status = 1 ORDER BY id ASC;", nativeQuery = true)
	List<MenuEntity> findAllCourseByUrl(@Param("url") String url);

	@Query(value = "SELECT * FROM menu WHERE id > 1 AND status = 1 ORDER BY id ASC;", nativeQuery = true)
	List<MenuEntity> findAllCourse();

	//	@Query("SELECT NEW com.fsoft.server.model.CourseModel(m.id, m.name, m.icon, m.url, m.children, m.modifiedDate, m.modifiedBy) FROM MenuEntity m WHERE m.id > 1 AND m.status = 1 ORDER BY m.id ASC")
	//	List<CourseModel> findAllCourse();
	
}
