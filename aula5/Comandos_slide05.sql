-- Oficina SQL Essencial 2026/1 - Fatec Jundiaí
-- Aula 05 - Funções Associativas
-- Banco de Dados: Empresa Brasil


USE EmpresaBrasil


-- UNION

SELECT Estado FROM Fornecedores
UNION 
SELECT Regiao FROM Clientes;

SELECT Estado FROM Fornecedores
UNION ALL 
SELECT Regiao FROM Clientes;




-- LEFT JOIN

SELECT C.Nome, P.NumPed
FROM Clientes C
LEFT JOIN Pedidos P
    ON C.CodCli = P.CodCli;

-- LEFT JOIN + IS NULL

SELECT C.Nome
FROM Clientes C
LEFT JOIN Pedidos P
    ON C.CodCli = P.CodCli
WHERE P.CodCli IS NULL;




-- RIGHT JOIN

SELECT C.Nome, P.NumPed
FROM Clientes C
RIGHT JOIN Pedidos P
    ON C.CodCli = P.CodCli;

-- RIGHT JOIN + IS NULL

SELECT P.NumPed
FROM Clientes C
RIGHT JOIN Pedidos P
    ON C.CodCli = P.CodCli
WHERE C.CodCli IS NULL;




-- FULL JOIN

SELECT C.Nome, P.NumPed
FROM Clientes C
FULL JOIN Pedidos P
    ON C.CodCli = P.CodCli;

-- FULL JOIN + IS NULL

SELECT C.Nome, P.NumPed
FROM Clientes C
FULL JOIN Pedidos P
    ON C.CodCli = P.CodCli
WHERE C.CodCli IS NULL
	OR P.CodCli IS NULL;




-- INNER JOIN

 SELECT C.Nome, P.NumPed
FROM Clientes C
INNER JOIN Pedidos P
    ON C.CodCli = P.CodCli;




-- UNION e JOIN SÃO IGUAIS?

SELECT Estado FROM Fornecedores
UNION
SELECT Regiao FROM Clientes;


SELECT F.Estado, C.Regiao
FROM Fornecedores F
FULL JOIN Clientes C
ON C.Pais = F.Pais;