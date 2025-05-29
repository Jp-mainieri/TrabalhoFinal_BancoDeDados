CREATE TABLE torneios (
    Id_torneio INT PRIMARY KEY AUTO_INCREMENT,
    nome_torneio VARCHAR(100),
    Id_jogo INT,
    premiacao DECIMAL(10,2),
    data_inicio DATE,
    data_fim DATE,
    premio_total DECIMAL(10,2),
    Id_jogo INT
);

CREATE TABLE jogos (
    Id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome_jogo VARCHAR(100) NOT NULL,
    genero VARCHAR(50),
    plataforma VARCHAR(100)
);

ALTER TABLE torneios ADD FOREIGN KEY (Id_jogo) REFERENCES jogos(Id_jogo);

CREATE table jogadores(
    Id_jogadores INT PRIMARY KEY AUTO INCREMENT,
    nome VARCHAR (100) NOT NULL,
    nickname VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    data_nascimento DATE,
    Id_time INT
);

CREATE TABLE times(
Id_time INT PRIMARY KEY AUTO INCREMENT,
nome_time VARCHAR(100) NOT NULL, 
pais_origem VARCHAR(100)
);

ALTER Table jogadores ADD FOREIGN KEY (Id_time) REFERENCES times(Id_time);

CREATE TABLE partidas (
    id_partida INT PRIMARY KEY AUTO_INCREMENT,
    id_torneio INT,
    id_time1 INT,
    id_time2 INT,
    data_partida DATE,
    placar_time1 INT,
    placar_time2 INT
);

ALTER TABLE partidas ADD FOREIGN KEY (id_torneio) REFERENCES Torneios(id_torneio);

ALTER TABLE partidas ADD FOREIGN KEY (id_time1) REFERENCES Times(id_time);

ALTER TABLE partidas ADD FOREIGN KEY (id_time2) REFERENCES Times(id_time);

CREATE TABLE historico (
    id_time INT,
    id_torneio INT,
    colocacao_final INT
);
ALTER TABLE historico ADD PRIMARY KEY (id_time, id_torneio);

ALTER TABLE historico ADD FOREIGN KEY (id_time) REFERENCES Times(id_time);

ALTER TABLE historico ADD FOREIGN KEY (id_torneio) REFERENCES Torneios(id_torneio);

INSERT INTO Times (nome_time, pais_origem) VALUES
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

-- Inserção de dados na tabela Jogadores
INSERT INTO Jogadores (nome, nickname, email, data_nascimento, id_time) VALUES
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

-- Inserção de dados na tabela Torneios
```sql
INSERT INTO Torneios (nome_torneio, Id_jogo, premiacao, data_inicio, data_fim) VALUES
('Campeonato Verão 2025', 6, 50000.00, '2025-01-10', '2025-01-20'), -- Fortnite
('Liga de Elite', 2, 75000.00, '2025-03-01', '2025-03-15'), -- League of Legends
('Desafio Global', 3, 100000.00, '2025-05-05', '2025-05-20'), -- Counter Strike 2
('Clash Mundial', 4, 85000.00, '2025-06-01', '2025-06-15'), -- Dota 2
('Arena Pro', 1, 60000.00, '2025-07-10', '2025-07-25'), -- Valorant
('Summer Legends', 2, 95000.00, '2025-08-01', '2025-08-15'), -- League of Legends
('eSports Challenge', 9, 72000.00, '2025-09-05', '2025-09-20'), -- Rainbow Six Siege
('Ultimate Cup', 5, 80000.00, '2025-10-01', '2025-10-15'), -- Overwatch 2
('Masters do Pixel', 10, 55000.00, '2025-11-01', '2025-11-15'), -- Rocket League
('Final Clash', 3, 110000.00, '2025-12-01', '2025-12-20'), -- Counter Strike 2
('Open Legends', 12, 65000.00, '2026-01-10', '2026-01-25'), -- Arena of Valor
('Battle of Champions', 7, 78000.00, '2026-02-10', '2026-02-25'), -- PUBG
('Spring Cup', 15, 50000.00, '2026-03-01', '2026-03-20'), -- Heroes of the Storm
('Continental Clash', 13, 90000.00, '2026-04-05', '2026-04-25'), -- Call of Duty
('Legends Arena', 2, 87000.00, '2026-05-01', '2026-05-20'); -- League of Legends

-- Inserção de dados na tabela Jogos
INSERT INTO Jogos (nome_jogo, genero, plataforma) VALUES
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

-- Inserção de dados na tabela Partidas
INSERT INTO Partidas (id_torneio, id_jogo, id_time1, id_time2, data_partida, placar_time1, placar_time2) VALUES
(1, 1, 1, 2, '2025-01-11', 13, 11), (1, 2, 3, 4, '2025-01-12', 18, 20),
(2, 3, 1, 3, '2025-03-02', 16, 8), (2, 4, 2, 5, '2025-03-03', 22, 19),
(3, 5, 4, 5, '2025-05-06', 15, 15), (3, 1, 2, 3, '2025-05-07', 14, 16),
(4, 2, 6, 7, '2025-06-02', 17, 13), (4, 3, 8, 9, '2025-06-03', 11, 12),
(5, 4, 10, 11, '2025-07-11', 19, 21), (5, 5, 12, 13, '2025-07-12', 20, 18),
(6, 6, 14, 15, '2025-08-02', 22, 20), (6, 1, 1, 4, '2025-08-03', 14, 10),
(7, 2, 2, 5, '2025-09-06', 13, 19), (7, 3, 6, 7, '2025-09-07', 16, 16),
(8, 4, 8, 9, '2025-10-02', 15, 14);

-- Inserção de dados na tabela Participacoes
INSERT INTO Participacoes (id_time, id_torneio, colocacao_final) VALUES
(1, 1, 1), (2, 1, 2), (3, 1, 3),
(1, 2, 1), (2, 2, 3), (3, 2, 2),
(4, 3, 3), (5, 3, 2), (2, 3, 1),
(6, 4, 1), (7, 4, 2), (8, 4, 3),
(9, 5, 1), (10, 5, 2), (11, 5, 3),
(12, 6, 1), (13, 6, 2), (14, 6, 3),
(15, 7, 1), (1, 7, 2), (2, 7, 3);