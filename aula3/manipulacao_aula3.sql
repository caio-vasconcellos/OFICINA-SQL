USE EmpresaBrasil;
GO

CREATE TABLE ExemploAlunos (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Idade INT,
    Cidade VARCHAR(50)
);
GO

INSERT INTO ExemploAlunos (Nome, Idade, Cidade)
VALUES ('Maria', 20, 'Jundiaí'), ('João', 22, 'Campinas');

SELECT * FROM ExemploAlunos;

UPDATE ExemploAlunos
SET Idade = 21
WHERE Nome = 'Maria';

SELECT * FROM ExemploAlunos;

DELETE FROM ExemploAlunos
WHERE Nome = 'João';

SELECT * FROM ExemploAlunos;
