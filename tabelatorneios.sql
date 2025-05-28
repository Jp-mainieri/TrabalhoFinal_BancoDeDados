-- Active: 1748438097855@@BD-ACD@3306@BD180225117
use BD180225117;
CREATE Table torneios(
    Id_torneios INT PRIMARY KEY AUTO_INCREMENT,
    nome_torneio Varchar(100),
    jogo VARCHAR(100),
    premiacao_torneio Float,
    data_inicio DATE,
    data_final DATE
);
ALTER TABLE torneios ADD FOREIGN KEY (jogo) REFERENCES jogos(Id_jogo);
INSERT INTO torneios(nome_torneio,jogo,premiacao_torneios,data_inicio,data_final) VALUES ()
VALUES
('Torneio 1', 1000.00, '2022-01-01', '2022-01-10'),
('Torneio 2', 800.50, '2022-02-05', '2022-02-15'),
('Torneio 3', 1500.75, '2022-03-10', '2022-03-20'),
('Torneio 4', 1200.25, '2022-04-15', '2022-04-25'),
('Torneio 5', 950.80, '2022-05-20', '2022-05-30'),
('Torneio 6', 'Rainbow Six Siege', 1100.30, '2022-06-25', '2022-07-05'),
('Torneio 7', 'Fortnite', 700.60, '2022-07-30', '2022-08-10'),
('Torneio 8', 'Apex Legends', 850.40, '2022-08-15', '2022-08-25'),
('Torneio 9', 'Hearthstone', 600.70, '2022-09-20', '2022-09-30'),
('Torneio 10', 'Rocket League', 950.90, '2022-10-05', '2022-10-15'),
('Torneio 11', 'Smite', 800.20, '2022-11-10', '2022-11-20'),
('Torneio 12', 'FIFA', 700.45, '2022-12-15', '2022-12-25'),
('Torneio 13', 'Call of Duty', 1300.60, '2023-01-01', '2023-01-10'),
('Torneio 14', 'Minecraft', 500.30, '2023-02-05', '2023-02-15'),
('Torneio 15', 'World of Warcraft', 900.75, '2023-03-10', '2023-03-20');