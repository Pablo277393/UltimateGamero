package com.futmanager.service;

import com.futmanager.domain.Player;
import com.futmanager.domain.Team;
import com.futmanager.domain.User;
import com.futmanager.exception.ResourceNotFoundException;
import com.futmanager.repository.PlayerRepository;
import com.futmanager.repository.TeamRepository;
import com.futmanager.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class TeamService {
    private final TeamRepository teamRepository;
    private final UserRepository userRepository;
    private final PlayerRepository playerRepository;

    @Transactional
    public Team createTeam(Long userId, String teamName) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found"));

        if (teamRepository.findByUserId(userId).isPresent()) {
            throw new IllegalArgumentException("User already has a team");
        }

        Team team = new Team();
        team.setName(teamName);
        team.setUser(user);

        return teamRepository.save(team);
    }

    @Transactional
    public Team addPlayerToTeam(Long teamId, Long playerId) {
        Team team = teamRepository.findById(teamId)
                .orElseThrow(() -> new ResourceNotFoundException("Team not found"));

        Player player = playerRepository.findById(playerId)
                .orElseThrow(() -> new ResourceNotFoundException("Player not found"));

        User user = team.getUser();
        if (!user.getCollection().contains(player)) {
            throw new IllegalArgumentException("Player is not in the user's collection");
        }

        if (team.getActivePlayers().size() >= 11) {
            throw new IllegalArgumentException("Team is full (11 players max)");
        }

        if (team.getActivePlayers().contains(player)) {
            throw new IllegalArgumentException("Player is already in the team");
        }

        team.getActivePlayers().add(player);
        return teamRepository.save(team);
    }

    @Transactional
    public Team removePlayerFromTeam(Long teamId, Long playerId) {
        Team team = teamRepository.findById(teamId)
                .orElseThrow(() -> new ResourceNotFoundException("Team not found"));

        Player player = playerRepository.findById(playerId)
                .orElseThrow(() -> new ResourceNotFoundException("Player not found"));

        if (!team.getActivePlayers().contains(player)) {
            throw new IllegalArgumentException("Player is not in the team");
        }

        team.getActivePlayers().remove(player);
        return teamRepository.save(team);
    }

    public Team getTeamByUserId(Long userId) {
        return teamRepository.findByUserId(userId)
                .orElseThrow(() -> new ResourceNotFoundException("Team not found for user: " + userId));
    }
}
