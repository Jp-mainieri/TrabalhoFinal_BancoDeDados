-- Active: 1748438097855@@BD-ACD@3306@BD180225117
show databases;
use BD180225117;
SHOW TABLES;
CREATE TABLE jogos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    desenvolvedora VARCHAR(100),
    genero VARCHAR(50),
    plataforma VARCHAR(100)
);
