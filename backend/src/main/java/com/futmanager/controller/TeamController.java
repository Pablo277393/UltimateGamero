package com.futmanager.controller;

import com.futmanager.domain.Team;
import com.futmanager.dto.TeamCreateRequest;
import com.futmanager.service.TeamService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/teams")
@RequiredArgsConstructor
public class TeamController {
    private final TeamService teamService;

    @PostMapping
    public Team createTeam(@RequestBody TeamCreateRequest request) {
        return teamService.createTeam(request.getUserId(), request.getName());
    }

    @GetMapping("/user/{userId}")
    public Team getTeamByUserId(@PathVariable Long userId) {
        return teamService.getTeamByUserId(userId);
    }

    @PostMapping("/{teamId}/players/{playerId}")
    public Team addPlayerToTeam(@PathVariable Long teamId, @PathVariable Long playerId) {
        return teamService.addPlayerToTeam(teamId, playerId);
    }

    @DeleteMapping("/{teamId}/players/{playerId}")
    public Team removePlayerFromTeam(@PathVariable Long teamId, @PathVariable Long playerId) {
        return teamService.removePlayerFromTeam(teamId, playerId);
    }
}
