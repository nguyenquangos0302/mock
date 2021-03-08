package com.fsoft.server.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fsoft.server.entity.TopicEntity;

@Repository
public interface ITopicRepository extends JpaRepository<TopicEntity, Long> {

    @Query(value = "SELECT * " +
            "FROM topic " +
            "WHERE menu_id in (SELECT m.id FROM menu as m WHERE m.name like %:name%) AND status = 1 AND topic_home = 1", nativeQuery = true )
    Page<TopicEntity> findAllTopicByNameAndUsingPaging(@Param("name") String name, Pageable pageable);

    @Query(value = "SELECT * " +
            "FROM topic " +
            "WHERE menu_id in (SELECT m.id FROM menu as m WHERE m.name like %:name%) AND status = 1", nativeQuery = true )
    List<TopicEntity> findAllTopicByNameAndTopicHome(@Param("name") String name);
    
    
    @Query(value = "SELECT c.* " + 
    		"FROM ( " + 
    		"		SELECT * " + 
    		"		FROM topic " + 
    		"		WHERE menu_id in (SELECT id FROM menu WHERE name LIKE :name%) " + 
    		"		AND topic_home = 1 " + 
    		"		ORDER BY RAND() " + 
    		"		LIMIT 6) as c " + 
    		"ORDER BY c.id ASC", nativeQuery = true)
    List<TopicEntity> findRandomArticle(@Param("name") String name);
    
    List<TopicEntity> findByStatus(int status);

}
