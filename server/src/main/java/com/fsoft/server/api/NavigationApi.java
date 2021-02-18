package com.fsoft.server.api;

import com.fsoft.server.dto.NavigationDto;
import com.fsoft.server.model.NavigationModel;
import com.fsoft.server.service.INavigationService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/server/api/v1")
@AllArgsConstructor
public class NavigationApi {

    private final INavigationService navigationService;

    @GetMapping("/navigation")
    public List<NavigationDto> findAll() {
        return navigationService.finalAll();
    }

}
