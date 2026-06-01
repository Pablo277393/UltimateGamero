package com.futmanager.dto;

import lombok.Data;

@Data
public class TeamCreateRequest {
    private Long userId;
    private String name;
}
