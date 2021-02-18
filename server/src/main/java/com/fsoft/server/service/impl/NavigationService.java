package com.fsoft.server.service.impl;

import com.fsoft.server.convert.impl.NavigationDtoAndEntityConvert;
import com.fsoft.server.convert.impl.NavigationModelAndEntityConvert;
import com.fsoft.server.dto.NavigationDto;
import com.fsoft.server.repository.INavagationRepository;
import com.fsoft.server.service.INavigationService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class NavigationService implements INavigationService {

    private final INavagationRepository navagationRepository;

    @Override
    public List<NavigationDto> finalAll() {
        List<NavigationDto> list = new ArrayList<NavigationDto>();
        list = navagationRepository
                                    .findAll()
                                    .stream()
                                    .map(element -> new NavigationDtoAndEntityConvert().convertToDto(element))
                                    .collect(Collectors.toList());
        return list;
    }
}
