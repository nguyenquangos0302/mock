package com.fsoft.server.service;

import com.fsoft.server.dto.NavigationDto;
import com.fsoft.server.entity.NavigationEntity;
import com.fsoft.server.model.NavigationModel;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public interface INavigationService {

    List<NavigationDto> finalAll();

}
