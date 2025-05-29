-- TABELA: torneios
CREATE TABLE torneios (
    id_torneio INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50),
    data_inicio DATE,
    data_fim DATE
);

-- TABELA: times
CREATE TABLE times (
    id_time INT AUTO_INCREMENT PRIMARY KEY,
    nome_time VARCHAR(100) NOT NULL,
    tag VARCHAR(10),
    pais_origem VARCHAR(50)
);

-- TABELA: jogadores
CREATE TABLE jogadores (
    id_jogador INT AUTO_INCREMENT PRIMARY KEY,
    nome_real VARCHAR(100),
    apelido VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    data_nascimento DATE,
    id_time INT,
    FOREIGN KEY (id_time) REFERENCES times(id_time)
);

-- TABELA: participacoes
CREATE TABLE participacoes (
    id_participacao INT AUTO_INCREMENT PRIMARY KEY,
    id_torneio INT,
    id_time INT,
    colocacao INT,
    FOREIGN KEY (id_torneio) REFERENCES torneios(id_torneio),
    FOREIGN KEY (id_time) REFERENCES times(id_time)
);

-- TABELA: partidas
CREATE TABLE partidas (
    id_partida INT AUTO_INCREMENT PRIMARY KEY,
    id_torneio INT,
    id_time1 INT,
    id_time2 INT,
    placar_time1 INT,
    placar_time2 INT,
    data_partida DATETIME,
    FOREIGN KEY (id_torneio) REFERENCES torneios(id_torneio),
    FOREIGN KEY (id_time1) REFERENCES times(id_time),
    FOREIGN KEY (id_time2) REFERENCES times(id_time)
);

-- POPULANDO: torneios
INSERT INTO torneios (nome, tipo, data_inicio, data_fim) VALUES
('Copa do Banco de Dados Joice', 'Eliminatória', '2025-06-01', '2025-06-15'),
('Champions Puc', 'Round Robin', '2025-07-10', '2025-07-20'),
('Liga dos Softwares', 'Dupla Eliminatória', '2025-08-05', '2025-08-12');

-- POPULANDO: times
INSERT INTO times (nome_time, tag, pais_origem) VALUES
('Team MySQL', 'TMSQL', 'Brasil'),
('Team Software', 'TSFT', 'Brasil'),
('Team Joice', 'TJOI', 'Brasil'),
('Team PUC', 'TPUC', 'Brasil');

-- POPULANDO: jogadores
INSERT INTO jogadores (nome_real, apelido, email, data_nascimento, id_time) VALUES
('Luis Felipe', 'Felipin', 'felipe@email.com', '2000-04-10', 1),
('Leonardo Dionel', 'LeoD', 'leod@gmail.com', '1998-07-22', 1),
('Joao Mainieri', 'JMain', 'mainieri@hotmail.com', '2001-02-13', 2),
('Matheus Narducci', 'Mathz', 'math.nar@gmail.com', '1999-11-09', 2),
('Lucas Kendi', 'K3ndi', 'kendi@outlook.com', '1995-03-30', 3),
('Joice Ariane', 'Joicy', 'joice@bd.com', '1996-12-14', 4);

-- POPULANDO: participacoes
INSERT INTO participacoes (id_torneio, id_time, colocacao) VALUES
(1, 1, 2), -- Team MySQL vice
(1, 2, 1), -- Team Software campeão
(1, 3, 3),
(2, 1, 1), -- Team MySQL campeão
(2, 4, 2), -- Team PUC vice
(3, 3, 1), -- Team Joice campeão
(3, 4, 2); -- Team PUC vice

-- POPULANDO: partidas
INSERT INTO partidas (id_torneio, id_time1, id_time2, placar_time1, placar_time2, data_partida) VALUES
(1, 1, 2, 1, 2, '2025-06-10 18:00:00'),
(1, 2, 3, 2, 0, '2025-06-08 17:00:00'),
(2, 1, 4, 2, 1, '2025-07-15 16:00:00'),
(3, 3, 4, 3, 2, '2025-08-08 19:30:00');
