-- Test User
INSERT IGNORE INTO users (id, username, email, packs_opened_today) VALUES (1, 'Pablo', 'pablo@test.com', 0);

-- Teams
INSERT IGNORE INTO teams (id, name, user_id) VALUES (1, 'Real Madrid', NULL);
INSERT IGNORE INTO teams (id, name, user_id) VALUES (2, 'FC Barcelona', NULL);
INSERT IGNORE INTO teams (id, name, user_id) VALUES (3, 'Paris Saint-Germain', NULL);
INSERT IGNORE INTO teams (id, name, user_id) VALUES (4, 'Arsenal', NULL);
INSERT IGNORE INTO teams (id, name, user_id) VALUES (5, 'Manchester City', NULL);
INSERT IGNORE INTO teams (id, name, user_id) VALUES (6, 'Bayern Munich', NULL);

-- Empty Team for Test User
INSERT IGNORE INTO teams (id, name, user_id) VALUES (7, 'My Dream Team', 1);


-- Players
-- Real Madrid
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (1, 'Thibaut Courtois', 'POR', 90, 80, 30, 85, 85, 95, 95, 'Especial', 'https://upload.wikimedia.org/wikipedia/commons/c/c4/Courtois_2018_%28cropped%29.jpg');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (2, 'Andriy Lunin', 'POR', 81, 71, 21, 76, 76, 86, 86, 'Oro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Andriy_Lunin%2C_Real_Madrid%2C_2022.jpg/500px-Andriy_Lunin%2C_Real_Madrid%2C_2022.jpg');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (3, 'Dani Carvajal', 'DEF', 86, 81, 56, 76, 76, 96, 96, 'Oro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/UEFA_EURO_qualifiers_Sweden_vs_Spain_20191015_Dani_Carvajal_10_%28cropped%29.jpg/500px-UEFA_EURO_qualifiers_Sweden_vs_Spain_20191015_Dani_Carvajal_10_%28cropped%29.jpg');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (4, 'Antonio Rudiger', 'DEF', 87, 82, 57, 77, 77, 97, 97, 'Oro', 'https://upload.wikimedia.org/wikipedia/commons/0/08/2025_04_26_Final_de_la_Copa_del_Rey_-_54482387776_%28Elenco_do_Real_Madrid%29_%28Antonio_R%C3%BCdiger%29.jpg');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (5, 'Eder Militao', 'DEF', 86, 81, 56, 76, 76, 96, 96, 'Oro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Eder_Militao_2021.jpg/500px-Eder_Militao_2021.jpg');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (6, 'Ferland Mendy', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Ofrenda_de_la_Liga_y_la_Champions-49-L.Mill%C3%A1n_%2852109311048%29_%28Ferland_Mendy%29.jpg/500px-Ofrenda_de_la_Liga_y_la_Champions-49-L.Mill%C3%A1n_%2852109311048%29_%28Ferland_Mendy%29.jpg');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (7, 'Fran Garcia', 'DEF', 79, 74, 49, 69, 69, 89, 89, 'Oro', 'https://ui-avatars.com/api/?name=Fran%20Garcia&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (8, 'Jude Bellingham', 'MED', 90, 80, 75, 90, 90, 75, 80, 'Especial', 'https://ui-avatars.com/api/?name=Jude%20Bellingham&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (9, 'Federico Valverde', 'MED', 88, 78, 73, 88, 88, 73, 78, 'Especial', 'https://ui-avatars.com/api/?name=Federico%20Valverde&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (10, 'Aurelien Tchouameni', 'MED', 85, 75, 70, 85, 85, 70, 75, 'Oro', 'https://ui-avatars.com/api/?name=Aurelien%20Tchouameni&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (11, 'Eduardo Camavinga', 'MED', 84, 74, 69, 84, 84, 69, 74, 'Oro', 'https://ui-avatars.com/api/?name=Eduardo%20Camavinga&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (12, 'Vinicius Junior', 'DEL', 91, 101, 101, 86, 101, 51, 86, 'Especial', 'https://ui-avatars.com/api/?name=Vinicius%20Junior&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (13, 'Rodrygo', 'DEL', 86, 96, 96, 81, 96, 46, 81, 'Oro', 'https://ui-avatars.com/api/?name=Rodrygo&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (14, 'Kylian Mbappe', 'DEL', 94, 104, 104, 89, 104, 54, 89, 'Especial', 'https://ui-avatars.com/api/?name=Kylian%20Mbappe&background=random&size=500');

-- FC Barcelona
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (15, 'Marc Andre ter Stegen', 'POR', 89, 79, 29, 84, 84, 94, 94, 'Especial', 'https://ui-avatars.com/api/?name=Marc%20Andre%20ter%20Stegen&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (16, 'Inaki Pena', 'POR', 77, 67, 17, 72, 72, 82, 82, 'Oro', 'https://ui-avatars.com/api/?name=Inaki%20Pena&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (17, 'Jules Kounde', 'DEF', 85, 80, 55, 75, 75, 95, 95, 'Oro', 'https://ui-avatars.com/api/?name=Jules%20Kounde&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (18, 'Ronald Araujo', 'DEF', 86, 81, 56, 76, 76, 96, 96, 'Oro', 'https://ui-avatars.com/api/?name=Ronald%20Araujo&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (19, 'Pau Cubarsi', 'DEF', 78, 73, 48, 68, 68, 88, 88, 'Oro', 'https://ui-avatars.com/api/?name=Pau%20Cubarsi&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (20, 'Alejandro Balde', 'DEF', 81, 76, 51, 71, 71, 91, 91, 'Oro', 'https://ui-avatars.com/api/?name=Alejandro%20Balde&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (21, 'Andreas Christensen', 'DEF', 83, 78, 53, 73, 73, 93, 93, 'Oro', 'https://ui-avatars.com/api/?name=Andreas%20Christensen&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (22, 'Pedri', 'MED', 86, 76, 71, 86, 86, 71, 76, 'Oro', 'https://ui-avatars.com/api/?name=Pedri&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (23, 'Gavi', 'MED', 83, 73, 68, 83, 83, 68, 73, 'Oro', 'https://ui-avatars.com/api/?name=Gavi&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (24, 'Frenkie de Jong', 'MED', 87, 77, 72, 87, 87, 72, 77, 'Oro', 'https://ui-avatars.com/api/?name=Frenkie%20de%20Jong&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (25, 'Dani Olmo', 'MED', 84, 74, 69, 84, 84, 69, 74, 'Oro', 'https://ui-avatars.com/api/?name=Dani%20Olmo&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (26, 'Lamine Yamal', 'DEL', 84, 94, 94, 79, 94, 44, 79, 'Oro', 'https://ui-avatars.com/api/?name=Lamine%20Yamal&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (27, 'Raphinha', 'DEL', 84, 94, 94, 79, 94, 44, 79, 'Oro', 'https://ui-avatars.com/api/?name=Raphinha&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (28, 'Ferran Torres', 'DEL', 80, 90, 90, 75, 90, 40, 75, 'Oro', 'https://ui-avatars.com/api/?name=Ferran%20Torres&background=random&size=500');

-- PSG
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (29, 'Gianluigi Donnarumma', 'POR', 89, 79, 29, 84, 84, 94, 94, 'Especial', 'https://ui-avatars.com/api/?name=Gianluigi%20Donnarumma&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (30, 'Matvey Safonov', 'POR', 80, 70, 20, 75, 75, 85, 85, 'Oro', 'https://ui-avatars.com/api/?name=Matvey%20Safonov&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (31, 'Achraf Hakimi', 'DEF', 84, 79, 54, 74, 74, 94, 94, 'Oro', 'https://ui-avatars.com/api/?name=Achraf%20Hakimi&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (32, 'Marquinhos', 'DEF', 87, 82, 57, 77, 77, 97, 97, 'Oro', 'https://ui-avatars.com/api/?name=Marquinhos&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (33, 'Lucas Beraldo', 'DEF', 77, 72, 47, 67, 67, 87, 87, 'Oro', 'https://ui-avatars.com/api/?name=Lucas%20Beraldo&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (34, 'Nuno Mendes', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Nuno%20Mendes&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (35, 'Presnel Kimpembe', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Presnel%20Kimpembe&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (36, 'Vitinha', 'MED', 85, 75, 70, 85, 85, 70, 75, 'Oro', 'https://ui-avatars.com/api/?name=Vitinha&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (37, 'Fabian Ruiz', 'MED', 81, 71, 66, 81, 81, 66, 71, 'Oro', 'https://ui-avatars.com/api/?name=Fabian%20Ruiz&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (38, 'Warren Zaire-Emery', 'MED', 80, 70, 65, 80, 80, 65, 70, 'Oro', 'https://ui-avatars.com/api/?name=Warren%20Zaire-Emery&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (39, 'Joao Neves', 'MED', 79, 69, 64, 79, 79, 64, 69, 'Oro', 'https://ui-avatars.com/api/?name=Joao%20Neves&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (40, 'Ousmane Dembele', 'DEL', 86, 96, 96, 81, 96, 46, 81, 'Oro', 'https://ui-avatars.com/api/?name=Ousmane%20Dembele&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (41, 'Bradley Barcola', 'DEL', 80, 90, 90, 75, 90, 40, 75, 'Oro', 'https://ui-avatars.com/api/?name=Bradley%20Barcola&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (42, 'Goncalo Ramos', 'DEL', 82, 92, 92, 77, 92, 42, 77, 'Oro', 'https://ui-avatars.com/api/?name=Goncalo%20Ramos&background=random&size=500');

-- Arsenal
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (43, 'David Raya', 'POR', 83, 73, 23, 78, 78, 88, 88, 'Oro', 'https://ui-avatars.com/api/?name=David%20Raya&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (44, 'Aaron Ramsdale', 'POR', 81, 71, 21, 76, 76, 86, 86, 'Oro', 'https://ui-avatars.com/api/?name=Aaron%20Ramsdale&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (45, 'Ben White', 'DEF', 83, 78, 53, 73, 73, 93, 93, 'Oro', 'https://ui-avatars.com/api/?name=Ben%20White&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (46, 'William Saliba', 'DEF', 87, 82, 57, 77, 77, 97, 97, 'Oro', 'https://ui-avatars.com/api/?name=William%20Saliba&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (47, 'Gabriel Magalhaes', 'DEF', 86, 81, 56, 76, 76, 96, 96, 'Oro', 'https://ui-avatars.com/api/?name=Gabriel%20Magalhaes&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (48, 'Riccardo Calafiori', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Riccardo%20Calafiori&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (49, 'Jurrien Timber', 'DEF', 80, 75, 50, 70, 70, 90, 90, 'Oro', 'https://ui-avatars.com/api/?name=Jurrien%20Timber&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (50, 'Declan Rice', 'MED', 87, 77, 72, 87, 87, 72, 77, 'Oro', 'https://ui-avatars.com/api/?name=Declan%20Rice&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (51, 'Martin Odegaard', 'MED', 89, 79, 74, 89, 89, 74, 79, 'Especial', 'https://ui-avatars.com/api/?name=Martin%20Odegaard&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (52, 'Mikel Merino', 'MED', 83, 73, 68, 83, 83, 68, 73, 'Oro', 'https://ui-avatars.com/api/?name=Mikel%20Merino&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (53, 'Thomas Partey', 'MED', 82, 72, 67, 82, 82, 67, 72, 'Oro', 'https://ui-avatars.com/api/?name=Thomas%20Partey&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (54, 'Bukayo Saka', 'DEL', 87, 97, 97, 82, 97, 47, 82, 'Oro', 'https://ui-avatars.com/api/?name=Bukayo%20Saka&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (55, 'Kai Havertz', 'DEL', 84, 94, 94, 79, 94, 44, 79, 'Oro', 'https://ui-avatars.com/api/?name=Kai%20Havertz&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (56, 'Gabriel Martinelli', 'DEL', 83, 93, 93, 78, 93, 43, 78, 'Oro', 'https://ui-avatars.com/api/?name=Gabriel%20Martinelli&background=random&size=500');

-- Manchester City
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (57, 'Ederson', 'POR', 88, 78, 28, 83, 83, 93, 93, 'Especial', 'https://ui-avatars.com/api/?name=Ederson&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (58, 'Stefan Ortega', 'POR', 80, 70, 20, 75, 75, 85, 85, 'Oro', 'https://ui-avatars.com/api/?name=Stefan%20Ortega&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (59, 'Ruben Dias', 'DEF', 89, 84, 59, 79, 79, 99, 99, 'Especial', 'https://ui-avatars.com/api/?name=Ruben%20Dias&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (60, 'John Stones', 'DEF', 85, 80, 55, 75, 75, 95, 95, 'Oro', 'https://ui-avatars.com/api/?name=John%20Stones&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (61, 'Josko Gvardiol', 'DEF', 83, 78, 53, 73, 73, 93, 93, 'Oro', 'https://ui-avatars.com/api/?name=Josko%20Gvardiol&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (62, 'Manuel Akanji', 'DEF', 84, 79, 54, 74, 74, 94, 94, 'Oro', 'https://ui-avatars.com/api/?name=Manuel%20Akanji&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (63, 'Nathan Ake', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Nathan%20Ake&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (64, 'Rodri', 'MED', 91, 81, 76, 91, 91, 76, 81, 'Especial', 'https://ui-avatars.com/api/?name=Rodri&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (65, 'Bernardo Silva', 'MED', 88, 78, 73, 88, 88, 73, 78, 'Especial', 'https://ui-avatars.com/api/?name=Bernardo%20Silva&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (66, 'Kevin De Bruyne', 'MED', 90, 80, 75, 90, 90, 75, 80, 'Especial', 'https://ui-avatars.com/api/?name=Kevin%20De%20Bruyne&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (67, 'Mateo Kovacic', 'MED', 82, 72, 67, 82, 82, 67, 72, 'Oro', 'https://ui-avatars.com/api/?name=Mateo%20Kovacic&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (68, 'Phil Foden', 'DEL', 88, 98, 98, 83, 98, 48, 83, 'Especial', 'https://ui-avatars.com/api/?name=Phil%20Foden&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (69, 'Erling Haaland', 'DEL', 91, 101, 101, 86, 101, 51, 86, 'Especial', 'https://ui-avatars.com/api/?name=Erling%20Haaland&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (70, 'Jeremy Doku', 'DEL', 80, 90, 90, 75, 90, 40, 75, 'Oro', 'https://ui-avatars.com/api/?name=Jeremy%20Doku&background=random&size=500');

-- Bayern Munich
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (71, 'Manuel Neuer', 'POR', 87, 77, 27, 82, 82, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Manuel%20Neuer&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (72, 'Sven Ulreich', 'POR', 75, 65, 15, 70, 70, 80, 80, 'Oro', 'https://ui-avatars.com/api/?name=Sven%20Ulreich&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (73, 'Dayot Upamecano', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Dayot%20Upamecano&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (74, 'Kim Min-jae', 'DEF', 84, 79, 54, 74, 74, 94, 94, 'Oro', 'https://ui-avatars.com/api/?name=Kim%20Min-jae&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (75, 'Alphonso Davies', 'DEF', 82, 77, 52, 72, 72, 92, 92, 'Oro', 'https://ui-avatars.com/api/?name=Alphonso%20Davies&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (76, 'Hiroki Ito', 'DEF', 79, 74, 49, 69, 69, 89, 89, 'Oro', 'https://ui-avatars.com/api/?name=Hiroki%20Ito&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (77, 'Raphael Guerreiro', 'DEF', 81, 76, 51, 71, 71, 91, 91, 'Oro', 'https://ui-avatars.com/api/?name=Raphael%20Guerreiro&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (78, 'Joshua Kimmich', 'MED', 86, 76, 71, 86, 86, 71, 76, 'Oro', 'https://ui-avatars.com/api/?name=Joshua%20Kimmich&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (79, 'Aleksandar Pavlovic', 'MED', 77, 67, 62, 77, 77, 62, 67, 'Oro', 'https://ui-avatars.com/api/?name=Aleksandar%20Pavlovic&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (80, 'Leon Goretzka', 'MED', 83, 73, 68, 83, 83, 68, 73, 'Oro', 'https://ui-avatars.com/api/?name=Leon%20Goretzka&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (81, 'Jamal Musiala', 'MED', 87, 77, 72, 87, 87, 72, 77, 'Oro', 'https://ui-avatars.com/api/?name=Jamal%20Musiala&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (82, 'Leroy Sane', 'DEL', 85, 95, 95, 80, 95, 45, 80, 'Oro', 'https://ui-avatars.com/api/?name=Leroy%20Sane&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (83, 'Serge Gnabry', 'DEL', 82, 92, 92, 77, 92, 42, 77, 'Oro', 'https://ui-avatars.com/api/?name=Serge%20Gnabry&background=random&size=500');
INSERT IGNORE INTO players (id, name, position, rating, pace, shooting, passing, dribbling, defending, physical, rarity, image_url) VALUES (84, 'Harry Kane', 'DEL', 90, 100, 100, 85, 100, 50, 85, 'Especial', 'https://ui-avatars.com/api/?name=Harry%20Kane&background=random&size=500');

-- Team Players Associations
-- Team 1 (Real Madrid): Players 1-14
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 1);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 2);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 3);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 4);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 5);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 6);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 7);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 8);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 9);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 10);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 11);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 12);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 13);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (1, 14);

-- Team 2 (FC Barcelona): Players 15-28
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 15);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 16);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 17);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 18);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 19);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 20);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 21);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 22);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 23);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 24);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 25);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 26);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 27);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (2, 28);

-- Team 3 (PSG): Players 29-42
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 29);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 30);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 31);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 32);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 33);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 34);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 35);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 36);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 37);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 38);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 39);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 40);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 41);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (3, 42);

-- Team 4 (Arsenal): Players 43-56
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 43);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 44);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 45);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 46);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 47);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 48);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 49);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 50);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 51);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 52);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 53);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 54);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 55);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (4, 56);

-- Team 5 (Man City): Players 57-70
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 57);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 58);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 59);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 60);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 61);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 62);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 63);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 64);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 65);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 66);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 67);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 68);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 69);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (5, 70);

-- Team 6 (Bayern Munich): Players 71-84
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 71);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 72);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 73);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 74);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 75);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 76);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 77);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 78);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 79);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 80);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 81);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 82);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 83);
INSERT IGNORE INTO team_players (team_id, player_id) VALUES (6, 84);
