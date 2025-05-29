-- Active: 1744742548804@@127.0.0.1@3306@mysql
CREATE TABLE torneios(
    Id_torneios INT PRIMARY KEY AUTO_INCREMENT,
    nome_torneio Varchar(100),
    premiacao_torneio Float,
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

ALTER TABLE torneios ADD FOREIGN KEY (jogo) REFERENCES jogos(Id_jogo);

CREATE TABLE jogadores(
    Id_jogador INT PRIMARY KEY AUTO INCREMENT,
    nome VARCHAR (100) NOT NULL, 
    nickname VARCHAR(100) NOT NULL, 
    data_nascimento DATE,
    Id_time INT
);

CREATE TABLE times(
    Id_time INT PRIMARY KEY AUTO INCREMENT,
    nome_time VARCHAR(100) NOT NULL, 
    pais_origem VARCHAR(50)
);
ALTER Table times ADD FOREIGN KEY (torneio) REFERENCES torneios(Id_torneio);

ALTER Table jogadores ADD FOREIGN KEY (Id_time) REFERENCES times(Id_time);

CREATE TABLE partidas(
    Id_partida INT PRIMARY KEY AUTO INCREMENT,
    id_torneio INT,
    id_jogo INT,
    id_time1 INT,
    id_time2 INT,
    data_partida DATE,
    placar_time1 INT,
    placar_time2 INT,
);
ALTER Table partidas ADD FOREIGN KEY (id_torneio) REFERENCES Torneios(id_torneio);

ALTER Table partidas ADD FOREIGN KEY (id_jogo) REFERENCES Jogos(id_jogo);

ALTER Table partidas ADD FOREIGN KEY (id_time1) REFERENCES Times(id_time);

ALTER Table partidas ADD FOREIGN KEY (id_time2) REFERENCES Times(id_time);

CREATE TABLE Participacoes (
    id_time INT,
    id_torneio INT,
    colocacao_final INT,
    PRIMARY KEY (id_time, id_torneio),
);
ALTER TABLE Participacoes ADD FOREIGN KEY (id_time) REFERENCES Times(id_time);
ALTER TABLE Participacoes ADD FOREIGN KEY (id_torneio) REFERENCES Torneios(id_torneio);

