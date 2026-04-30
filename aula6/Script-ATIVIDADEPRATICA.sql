USE master;
GO

-- Limpeza de segurança
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Whey_Adulterado')
BEGIN
    ALTER DATABASE Whey_Adulterado SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Whey_Adulterado;
END
GO

CREATE DATABASE Whey_Adulterado;
GO

USE Whey_Adulterado;
GO

-- ======================================================
-- 1. CRIAÇÃO DAS TABELAS
-- ======================================================

CREATE TABLE Perfil (
    id_suspeito INT PRIMARY KEY,
    nome VARCHAR(50),
    cor_cabelo VARCHAR(20),
    tamanho_sapato INT,
    altura_cm INT
);

CREATE TABLE Inventario (
    id_item INT IDENTITY(1,1) PRIMARY KEY,
    id_suspeito INT,
    item VARCHAR(50),
    CONSTRAINT FK_Inventario_Perfil FOREIGN KEY (id_suspeito) REFERENCES Perfil(id_suspeito)
);

CREATE TABLE Acessos_Area_VIP (
    id_acesso INT IDENTITY(1,1) PRIMARY KEY,
    id_suspeito INT,
    horario_entrada DATETIME,
    tipo_chave VARCHAR(30),
    CONSTRAINT FK_Acessos_Perfil FOREIGN KEY (id_suspeito) REFERENCES Perfil(id_suspeito)
);

CREATE TABLE Depoimentos (
    id_depoimento INT PRIMARY KEY,
    relato NVARCHAR(MAX)
);
GO

-- ======================================================
-- 2. CARGA DE DADOS (ESTRATÉGICA)
-- ======================================================

INSERT INTO Perfil VALUES 
(1, 'Adriano Silva', 'Preto', 41, 185), 
(2, 'Bruno Ramos', 'Loiro', 39, 175),
(3, 'Carla Meirelles', 'Preto', 37, 165),
(4, 'Daniel Alves', 'Preto', 40, 182),      
(5, 'Eduardo Lima', 'Preto', 41, 188),      
(6, 'Fabrício Souza', 'Preto', 41, 170),
(7, 'Gustavo Henrique', 'Preto', 40, 182),
(8, 'Helena Vitório', 'Ruivo', 38, 160),
(9, 'Igor Santos', 'Preto', 40, 181),        
(10, 'Jorge Viana', 'Preto', 43, 190);


INSERT INTO Inventario (id_suspeito, item) VALUES 
(1, 'Cartão Tech'), (1, 'Perfume Francês'),
(4, 'Cartão Tech'), (4, 'Perfume Francês'),  
(5, 'Cartão Tech'), (5, 'Perfume Francês'),
(7, 'Cartão Tech'), (7, 'Perfume Francês'),  
(9, 'Cartão Tech'), (9, 'Celular');


INSERT INTO Acessos_Area_VIP (id_suspeito, horario_entrada, tipo_chave) VALUES 
(1, '2023-10-25 10:00:00', 'Cartão Tech'),
(5, '2023-10-25 14:00:00', 'Cartão Tech'), 
(4, '2023-10-25 19:10:00', 'Cartão Tech'),  
(7, '2023-10-25 19:45:00', 'Cartão Tech');  

INSERT INTO Depoimentos VALUES 
(1, 'Vi o Gustavo Henrique entrando na sala com uma sacola suspeita exatamente às 19:45.'),
(2, 'O crime ocorreu entre 19:30 e 20:30, quando as câmeras sofreram um apagão.'),
(3, 'O Daniel Alves entrou na Área VIP, mas saiu 10 minutos depois (19:20) para dar uma aula coletiva.'),
(4, 'O criminoso deixou cair um frasco de Perfume Francês e usava sapatos tamanho 40.');
GO
