package com.futmanager.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "users")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String username;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private int packsOpenedToday = 0;

    private LocalDate lastPackOpenedDate;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_collection", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "player_id"))
    private List<Player> collection = new ArrayList<>();
}
