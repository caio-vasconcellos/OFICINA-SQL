-- 1 SELECT
-- 2 WHERE
-- 3 SELECT DISTINCT
-- 4 TOP 5 ... ORDER BY ... DESC
-- 5 LIKE 'A%'
-- 6 COUNT
-- 7 AVG
-- 8 GROUP BY
-- 9 INNER JOIN
-- 10 LEFT JOIN

USE EmpresaBrasil;
GO

SELECT TOP 5 C.Nome, COUNT(P.NumPed) AS TotalPedidos
FROM Clientes AS C
LEFT JOIN Pedidos AS P ON P.CodCli = C.CodCli
GROUP BY C.Nome
ORDER BY TotalPedidos DESC;
