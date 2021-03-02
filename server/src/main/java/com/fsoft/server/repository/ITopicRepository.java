package com.fsoft.server.repository;

import com.fsoft.server.entity.TopicEntity;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ITopicRepository extends JpaRepository<TopicEntity, Long> {

    @Query(value = "SELECT * " +
            "FROM topic " +
            "WHERE menu_id in (SELECT m.id FROM menu as m WHERE m.name like %:name%) AND status = 1 AND topic_home = 1", nativeQuery = true )
    Page<TopicEntity> findAllTopicByNameAndUsingPaging(String name, Pageable pageable);

    @Query(value = "SELECT * " +
            "FROM topic " +
            "WHERE menu_id in (SELECT m.id FROM menu as m WHERE m.name like %:name%) AND status = 1", nativeQuery = true )
    List<TopicEntity> findAllTopicByNameAndTopicHome(String name);

}
