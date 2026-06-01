package com.futmanager.service;

import com.futmanager.domain.Player;
import com.futmanager.exception.ResourceNotFoundException;
import com.futmanager.repository.PlayerRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PlayerService {
    private final PlayerRepository playerRepository;

    public Player createPlayer(Player player) {
        return playerRepository.save(player);
    }

    public Player getPlayer(Long id) {
        return playerRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Player not found with id: " + id));
    }

    public List<Player> getAllPlayers() {
        return playerRepository.findAll();
    }
}
