USE EmpresaBrasil;
GO

-- WHERE
SELECT Nome, Cidade, Regiao FROM Clientes WHERE Regiao = 'SP';

-- LIKE
SELECT Nome FROM Clientes WHERE Nome LIKE 'A%';

-- DISTINCT
SELECT DISTINCT Regiao FROM Clientes;

-- TOP e ORDER BY
SELECT TOP 5 Nome, Salario
FROM Funcionarios
ORDER BY Salario DESC;

-- IN
SELECT Nome, Regiao
FROM Clientes
WHERE Regiao IN ('SP', 'MG');

-- OR
SELECT Nome, Regiao
FROM Clientes
WHERE Regiao = 'SP' OR Regiao = 'RJ';

-- BETWEEN
SELECT Nome, Salario
FROM Funcionarios
WHERE Salario BETWEEN 2000 AND 4000;
