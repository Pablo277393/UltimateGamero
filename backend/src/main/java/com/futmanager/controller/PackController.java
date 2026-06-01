package com.futmanager.controller;

import com.futmanager.domain.Player;
import com.futmanager.service.PackService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/packs")
@RequiredArgsConstructor
public class PackController {
    private final PackService packService;

    @PostMapping("/open/{userId}")
    public List<Player> openPack(@PathVariable Long userId) {
        return packService.openPack(userId);
    }
}
