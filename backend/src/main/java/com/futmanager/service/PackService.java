package com.futmanager.service;

import com.futmanager.domain.Player;
import com.futmanager.domain.User;
import com.futmanager.exception.PackLimitExceededException;
import com.futmanager.exception.ResourceNotFoundException;
import com.futmanager.repository.PlayerRepository;
import com.futmanager.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

@Service
@RequiredArgsConstructor
public class PackService {

    private final UserRepository userRepository;
    private final PlayerRepository playerRepository;
    private final Random random = new Random();

    @Transactional
    public List<Player> openPack(Long userId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new ResourceNotFoundException("User not found with id: " + userId));

        LocalDate today = LocalDate.now();

        // Reset pack counter if it's a new day
        if (user.getLastPackOpenedDate() == null || !user.getLastPackOpenedDate().equals(today)) {
            user.setLastPackOpenedDate(today);
            user.setPacksOpenedToday(0);
        }

        // Check if user has exceeded the daily limit (10)
        if (user.getPacksOpenedToday() >= 10) {
            throw new PackLimitExceededException(
                    "You have reached the daily limit of 10 packs. Please try again tomorrow.");
        }

        // Simulate pack opening logic
        List<Player> allPlayers = playerRepository.findAll();
        if (allPlayers.isEmpty()) {
            throw new ResourceNotFoundException("No players available. Please populate the database.");
        }

        List<Player> packPlayers = new ArrayList<>();
        for (int i = 0; i < 3; i++) { // 3 players per pack
            packPlayers.add(allPlayers.get(random.nextInt(allPlayers.size())));
        }

        // Add to user's collection
        user.getCollection().addAll(packPlayers);
        user.setPacksOpenedToday(user.getPacksOpenedToday() + 1);

        userRepository.save(user);

        return packPlayers;
    }
}
