-- Active: 1744742548804@@127.0.0.1@3306@projeto_integrador_fase2
CREATE TABLE tournaments (
    id_tournament INT PRIMARY KEY AUTO_INCREMENT,
    tournament_name VARCHAR(100),
    id_game INT,
    prize DECIMAL(10,2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE games (
    id_game INT AUTO_INCREMENT PRIMARY KEY,
    game_name VARCHAR(100) NOT NULL,
    gender VARCHAR(50),
    platform VARCHAR(100)
);

CREATE table players(
    id_players INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (100) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    birthday DATE,
    id_team INT
);

CREATE TABLE teams (
    id_team INT PRIMARY KEY AUTO_INCREMENT,
    team_name VARCHAR(100) NOT NULL, 
    origin_country VARCHAR(100)
);

CREATE TABLE matches (
    id_match INT PRIMARY KEY AUTO_INCREMENT,
    id_tournament INT,
    id_team1 INT,
    id_team2 INT,
    match_date DATE,
    score_team1 INT,
    score_team2 INT
);

CREATE TABLE hystoric (
    id_fystoric INT AUTO_INCREMENT PRIMARY KEY,
    id_team INT,
    id_tournament INT,
    final_position INT
);

ALTER TABLE tournaments ADD FOREIGN KEY (id_game) REFERENCES games(id_game);

ALTER Table players ADD FOREIGN KEY (id_team) REFERENCES teams(id_team);

ALTER TABLE matches ADD FOREIGN KEY (id_tournament) REFERENCES tournaments(id_tournament);

ALTER TABLE matches ADD FOREIGN KEY (id_team1) REFERENCES teams(id_team);

ALTER TABLE matches ADD FOREIGN KEY (id_team2) REFERENCES teams(id_team);

ALTER TABLE hystoric ADD FOREIGN KEY (id_team) REFERENCES teams(id_team);

ALTER TABLE hystoric ADD FOREIGN KEY (id_tournament) REFERENCES tournaments(id_tournament);

INSERT INTO teams (team_name, origin_country) VALUES
('Dragons Elite', 'Brasil'),
('Cyber Titans', 'EUA'),
('Shadow Wolves', 'Canadá'),
('Pixel Warriors', 'Japão'),
('Nova Squad', 'Alemanha'),
('Storm Breakers', 'Suécia'),
('Blazing Eagles', 'Argentina'),
('Iron Giants', 'Itália'),
('Royal Blades', 'França'),
('Quantum Force', 'Coreia do Sul'),
('Rogue Assassins', 'Espanha'),
('Zero Gravity', 'Austrália'),
('Fire Hawks', 'Reino Unido'),
('Mystic Knights', 'Portugal'),
('Cyber Phantoms', 'Polônia');

INSERT INTO players (name, nickname, email, birthday, id_team) VALUES
('Carlos Silva', 'ShadowKing', 'carlos@email.com', '2000-05-12', 1),
('Julia Nunes', 'SniperGirl', 'julia@email.com', '1999-11-23', 1),
('Victor Lima', 'Ghost', 'victor@email.com', '2001-08-09', 2),
('Emily Chen', 'EmC', 'emily@email.com', '1998-07-17', 2),
('Alex Turner', 'TitanX', 'alex@email.com', '1997-03-05', 2),
('Liam O''Connor', 'Wolfie', 'liam@email.com', '2002-01-10', 3),
('Noah Scott', 'Blaster', 'noah@email.com', '1995-06-30', 3),
('Haruto Tanaka', 'PixelSamurai', 'haruto@email.com', '2003-04-22', 4),
('Yui Sato', 'YStorm', 'yui@email.com', '2000-12-01', 4),
('Hans Müller', 'NovaHans', 'hans@email.com', '1996-10-15', 5),
('Lucas Vieira', 'Stormer', 'lucas@email.com', '1999-01-20', 6),
('Natalie Pérez', 'BlazeQueen', 'natalie@email.com', '2001-02-15', 7),
('Marco Rossi', 'IronBlade', 'marco@email.com', '1998-09-30', 8),
('Claire Dubois', 'BladeRunner', 'claire@email.com', '1997-07-07', 9),
('Min-jun Lee', 'QuantumShot', 'minjun@email.com', '2000-11-11', 10),
('Sophia Martins', 'FireArrow', 'sophia@email.com', '2002-03-18', 10),
('Gabriel Souza', 'ThunderStrike', 'gabriel@email.com', '1998-12-25', 9),
('Isabella Costa', 'IceQueen', 'isabella@email.com', '1999-07-14', 12),
('Daniel Oliveira', 'ShadowHunter', 'daniel@email.com', '2001-05-05', 12),
('Victoria Santos', 'PhoenixFlame', 'victoria@email.com', '1997-08-22', 12),
('Benjamin Carter', 'SteelFury', 'benjamin@email.com', '2000-10-10', 11),
('Emma Johnson', 'LightningBolt', 'emma@email.com', '1995-03-30', 11),
('Oliver Brown', 'DarkRider', 'oliver@email.com', '2003-06-12', 10),
('Charlotte Wilson', 'Moonlight', 'charlotte@email.com', '1998-04-01', 13),
('Ethan Davis', 'SolarFlare', 'ethan@email.com', '1996-09-19', 14),
('Mia Thompson', 'CrystalArrow', 'mia@email.com', '2001-11-03', 5),
('Lucas Ferreira', 'IronClaw', 'lucasf@email.com', '1999-02-28', 14),
('Ana Ribeiro', 'StormChaser', 'ana@email.com', '2000-06-15', 15),
('Hugo Almeida', 'NightWolf', 'hugo@email.com', '1997-01-07', 15),
('Camila Mendes', 'SkyBlade', 'camila@email.com', '1998-08-30', 8);

INSERT INTO tournaments(tournament_name, id_game, prize, start_date, end_date) VALUES
('Campeonato Verão 2025', 6, 50000.00, '2025-01-10', '2025-01-20'),
('Liga de Elite', 2, 75000.00, '2025-03-01', '2025-03-15'),
('Desafio Global', 3, 100000.00, '2025-05-05', '2025-05-20'),
('Clash Mundial', 4, 85000.00, '2025-06-01', '2025-06-15'),
('Arena Pro', 1, 60000.00, '2025-07-10', '2025-07-25'),
('Summer Legends', 2, 95000.00, '2025-08-01', '2025-08-15'),
('eSports Challenge', 9, 72000.00, '2025-09-05', '2025-09-20'),
('Ultimate Cup', 5, 80000.00, '2025-10-01', '2025-10-15'),
('Masters do Pixel', 10, 55000.00, '2025-11-01', '2025-11-15'),
('Final Clash', 3, 110000.00, '2025-12-01', '2025-12-20'),
('Open Legends', 12, 65000.00, '2026-01-10', '2026-01-25'),
('Battle of Champions', 7, 78000.00, '2026-02-10', '2026-02-25'),
('Spring Cup', 15, 50000.00, '2026-03-01', '2026-03-20'), 
('Continental Clash', 13, 90000.00, '2026-04-05', '2026-04-25'),
('Legends Arena', 2, 87000.00, '2026-05-01', '2026-05-20');

INSERT INTO games(game_name, gender, platform) VALUES
('Valorant', 'FPS', 'PC'),
('League of Legends', 'MOBA', 'PC'),
('Counter Strike 2', 'FPS', 'PC'),
('Dota 2', 'MOBA', 'PC'),
('Overwatch 2', 'FPS', 'PC'),
('Fortnite', 'Battle Royale', 'PC'),
('PUBG', 'Battle Royale', 'PC'),
('Smite', 'MOBA', 'PC'),
('Rainbow Six Siege', 'FPS', 'PC'),
('Rocket League', 'Esporte', 'PC'),
('Paladins', 'FPS', 'PC'),
('Arena of Valor', 'MOBA', 'PC'),
('Call of Duty', 'FPS', 'PC'),
('Apex Legends', 'Battle Royale', 'PC'),
('Heroes of the Storm', 'MOBA', 'PC');

INSERT INTO matches(id_tournament, id_team1, id_team2, match_date, score_team1, score_team2) VALUES
(1, 1, 2, '2025-01-11', 13, 11),
 (1, 3, 4, '2025-01-12', 18, 20),
(2, 1, 3, '2025-03-02', 16, 8),
 (2, 2, 5, '2025-03-03', 22, 19),
(3, 4, 5, '2025-05-06', 15, 15),
 (3, 2, 3, '2025-05-07', 14, 16),
(4, 6, 7, '2025-06-02', 17, 13),
 (4, 8, 9, '2025-06-03', 11, 12),
(5, 10, 11, '2025-07-11', 19, 21),
 (5, 12, 13, '2025-07-12', 20, 18),
(6, 14, 15, '2025-08-02', 22, 20),
 (6, 1, 4, '2025-08-03', 14, 10),
(7, 2, 5, '2025-09-06', 13, 19),
 (7, 6, 7, '2025-09-07', 16, 16),
(8, 8, 9, '2025-10-02', 15, 14);

INSERT INTO hystoric(id_team, id_tournament, final_position) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3),
(1, 2, 1), (2, 2, 3), (3, 2, 2),
(4, 3, 3), (5, 3, 2), (2, 3, 1),
(6, 4, 1), (7, 4, 2), (8, 4, 3),
(9, 5, 1), (10, 5, 2), (11, 5, 3),
(12, 6, 1), (13, 6, 2), (14, 6, 3),
(15, 7, 1), (1, 7, 2), (2, 7, 3);

SELECT t.team_name, COUNT(*) AS wins FROM matches m
JOIN teams t ON (
    (m.id_team1 = t.id_team AND m.score_team1 > m.score_team2)
    OR (m.id_team1 = t.id_team AND m.score_team2 > m.score_team1)
)
GROUP BY t.team_name
ORDER BY wins DESC;

SELECT g.game_name, COUNT(m.id_match) AS total_matches
FROM matches m
JOIN tournaments t ON m.id_tournament = t.id_tournament
JOIN games AS g ON t.id_game = g.id_game
GROUP BY g.game_name
ORDER BY total_matches DESC;

SELECT 
    tournament_name,
    prize
FROM tournaments
ORDER BY prize DESC;

SELECT 
    t.team_name,
    COUNT(p.id_players) AS total_players
FROM teams t
LEFT JOIN players AS p ON p.id_team = t.id_team
GROUP BY t.team_name
ORDER BY total_players DESC;

SELECT 
    gender,
    COUNT(*) AS total_gender
FROM games
GROUP BY gender
ORDER BY total_gender DESC;
