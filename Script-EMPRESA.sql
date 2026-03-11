-- ======================================================
-- SCRIPT COMPLETO EMPRESA BRASIL - NOMES POPULARES
-- ======================================================

DROP DATABASE IF EXISTS EmpresaBrasil;
CREATE DATABASE EmpresaBrasil;
USE EmpresaBrasil;

-- 1. TABELA CATEGORIAS
CREATE TABLE Categorias(
    CodCategoria    INT AUTO_INCREMENT NOT NULL,
    Descr           VARCHAR(25) NOT NULL,
    PRIMARY KEY (CodCategoria)
);

-- 2. TABELA FORNECEDORES
CREATE TABLE Fornecedores(
    CodFor      INT AUTO_INCREMENT NOT NULL,
    Empresa     VARCHAR(40) NOT NULL,
    Contato     VARCHAR(30),
    Cidade      VARCHAR(25),
    Pais        VARCHAR(15),
    PRIMARY KEY (CodFor)
);

-- 3. TABELA CLIENTES 
CREATE TABLE Clientes(
    CodCli      CHAR(5) NOT NULL,
    Nome        VARCHAR(40) NOT NULL,
    Cidade      VARCHAR(25) NOT NULL,
    Regiao      CHAR(2) NOT NULL, -- UF
    Pais        VARCHAR(15) DEFAULT 'Brasil',
    PRIMARY KEY (CodCli)
);

-- 4. TABELA FUNCIONARIOS
CREATE TABLE Funcionarios(
    CodFun      INT AUTO_INCREMENT NOT NULL,
    Nome        VARCHAR(20) NOT NULL,
    Cargo       VARCHAR(30),
    Salario     DECIMAL(10,2) DEFAULT 0.00,
    PRIMARY KEY (CodFun)
);

-- 5. TABELA PRODUTOS
CREATE TABLE Produtos(
    CodProd         INT AUTO_INCREMENT NOT NULL,
    Descr           VARCHAR(40) NOT NULL,
    CodFor          INT,
    CodCategoria    INT,
    Preco           DECIMAL(10,2) DEFAULT 0.00,
    Unidades        SMALLINT DEFAULT 0,
    PRIMARY KEY (CodProd),
    FOREIGN KEY (CodCategoria) REFERENCES Categorias(CodCategoria),
    FOREIGN KEY (CodFor) REFERENCES Fornecedores(CodFor)
);

-- 6. TABELA PEDIDOS
CREATE TABLE Pedidos(
    NumPed      INT NOT NULL,
    CodCli      CHAR(5),
    CodFun      INT,
    DataPed     DATE,
    Frete       DECIMAL(10,2) DEFAULT 0.00,
    PRIMARY KEY (NumPed),
    FOREIGN KEY (CodCli) REFERENCES Clientes(CodCli),
    FOREIGN KEY (CodFun) REFERENCES Funcionarios(CodFun)
);

-- ======================================================
-- CARGA DE DADOS LOCALIZADA 
-- ======================================================

INSERT INTO Categorias(Descr) VALUES 
('Bebidas'), ('Mercearia'), ('Hortifruti'), ('Laticínios'), 
('Padaria'), ('Carnes'), ('Doces'), ('Grãos');

INSERT INTO Fornecedores(Empresa, Contato, Cidade, Pais) VALUES 
('Distribuidora Vale','Jorge Silva','Petrolina','Brasil'),
('Agro do Cerrado','Maria Oliveira','Rio Verde','Brasil'),
('Laticínios da Serra','Antônio Santos','Aiuruoca','Brasil'),
('Exportadora Grão de Ouro','Luís Pereira','Patos de Minas','Brasil');

INSERT INTO Funcionarios(Nome, Cargo, Salario) VALUES 
('João Silva','Vendedor',2200),
('Maria Santos','Gerente',4500),
('José Oliveira','Estoquista',1800),
('Ana Souza','Vendedora',2200),
('Carlos Ferreira','Supervisor',3200);

INSERT INTO Clientes(CodCli, Nome, Cidade, Regiao) VALUES 
('ALFKI','Lucas Silva','Japaratuba','SE'),
('ANATR','Ana Paula Oliveira','Uiramutã','RR'),
('BERGS','Marcos dos Santos','Afogados da Ingazeira','PE'),
('BLONP','Pedro Henrique Souza','Xique-Xique','BA'),
('BOLID','Juliana Ferreira','Guaraciaba do Norte','CE'),
('BONAP','Rafael Almeida','Ipixuna do Pará','PA'),
('BOTTM','Aline Costa','Ponte Alta do Bom Jesus','TO'),
('COMMI','Fernando Pereira','Gonçalves','MG'),
('ERNSH','Bárbara Rodrigues','Doutor Pedrinho','SC'),
('FAMIA','Ricardo Gomes','Antônio Prado','RS'),
('FISSA','Felipe Martins','Ribeirão Cascalheira','MT'),
('FOLIG','Camila Rocha','Cruzeiro do Sul','AC'),
('GOURL','Gabriel Lima','Bento de Abreu','SP'),
('HANAR','Patrícia Barbosa','Itaperuna','RJ'),
('HILAA','Rodrigo Cardoso','Anicuns','GO'),
('HUNGO','Letícia Teixeira','Pio IX','PI'),
('QUEDE','Bruno Araújo','Mundo Novo','MS'),
('RATTC','Amanda Machado','Ouro Preto do Oeste','RO'),
('ROMEY','Vitor Cavalcanti','Vargem Alta','ES'),
('VINET','Larissa Mendes','Laranjeiras do Sul','PR');


INSERT INTO Produtos(Descr, CodFor, CodCategoria, Preco, Unidades) VALUES 
('Guaraná Antarctica 2L',1,1,8.50,100),
('Paçoca de Rolha',2,7,1.50,500),
('Queijo Canastra Real',3,4,45.00,20),
('Café em Grão Gourmet',4,8,28.90,40),
('Doce de Leite Viçosa',3,7,22.00,35),
('Farinha de Mandioca Fina',2,2,6.50,150),
('Azeite de Dendê',1,2,12.00,45),
('Cachaça Artesanal',1,1,35.00,30),
('Pinhão Cru kg',4,3,14.00,80),
('Castanha do Pará kg',2,8,55.00,25),
('Rapadura de Engenho',2,7,5.00,60),
('Arroz Agulhinha 5kg',4,8,24.00,200),
('Feijão Carioca 1kg',4,8,7.80,300),
('Goiabada Cascão',3,7,15.00,40),
('Requeijão de Corte',3,4,18.50,22);

-- Pedidos (Conectando os dados acima)
INSERT INTO Pedidos(NumPed, CodCli, CodFun, DataPed, Frete) VALUES 
(1001,'VINET',1,'2023-10-01',15.00),
(1002,'ALFKI',2,'2023-10-02',12.50),
(1003,'COMMI',4,'2023-10-05',25.00),
(1004,'HANAR',1,'2023-10-07',18.00),
(1005,'GOURL',3,'2023-10-10',10.00),
(1006,'ERNSH',2,'2023-10-12',35.00),
(1007,'FAMIA',5,'2023-10-15',22.00),
(1008,'ANATR',1,'2023-10-18',14.00),
(1009,'QUEDE',4,'2023-10-20',30.00),
(1010,'BERGS',3,'2023-10-22',40.00),
(1011,'VINET',5,'2023-10-25',15.00),
(1012,'HILAA',1,'2023-10-26',20.00),
(1013,'ROMEY',2,'2023-10-28',12.00),
(1014,'RATTC',4,'2023-10-30',50.00),
(1015,'COMMI',1,'2023-11-01',15.00),
(1016,'ALFKI',3,'2023-11-02',12.00),
(1017,'FOLIG',5,'2023-11-04',60.00),
(1018,'BONAP',2,'2023-11-05',28.00),
(1019,'BOTTM',4,'2023-11-07',32.00),
(1020,'BOLID',1,'2023-11-10',19.00);


