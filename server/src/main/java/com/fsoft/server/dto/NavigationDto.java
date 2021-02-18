package com.fsoft.server.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class NavigationDto {

    private Long id;

    private String name;

    private Long parentId;

    private String icon;

    private String url;

}
