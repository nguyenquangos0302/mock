package com.fsoft.server.repository;

import com.fsoft.server.entity.NavigationEntity;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface INavagationRepository extends JpaRepository<NavigationEntity, Long> {
}
