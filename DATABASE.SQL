CREATE Table torneios(
    Id_torneios INT PRIMARY KEY AUTO_INCREMENT,
    nome_torneio Varchar(100),
    jogo VARCHAR(100),
    premiacao_torneio Float,
    data_inicio DATE,
    data_final DATE
);

CREATE TABLE jogos (
    Id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    desenvolvedora VARCHAR(100),
    genero VARCHAR(50),
    plataforma VARCHAR(100)
);

ALTER TABLE torneios ADD FOREIGN KEY (jogo) REFERENCES jogos(Id_jogo);

CREATE table jogadores(
    cpf INT PRIMARY KEY AUTO INCREMENT,
    Nome VARCHAR (100), 
    time VARCHAR (50), 
    data_nascimento DATE,
    sexo VARCHAR (20)
);

CREATE TABLE times(
Id_time INT PRIMARY KEY AUTO INCREMENT,
nome_time VARCHAR(100), 
torneio VARCHAR (100), 
presidente VARCHAR(100), 
tecnico VARCHAR(100));

ALTER Table times ADD FOREIGN KEY (torneio) REFERENCES torneios(Id_torneio);

ALTER Table jogadores ADD FOREIGN KEY (time) REFERENCES times(Id_time);


