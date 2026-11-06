USE EmpresaBrasil;
GO

SELECT C.Nome, P.NumPed
FROM Clientes AS C
INNER JOIN Pedidos AS P ON P.CodCli = C.CodCli;

SELECT C.Nome, P.NumPed
FROM Clientes AS C
LEFT JOIN Pedidos AS P ON P.CodCli = C.CodCli;

SELECT C.Nome
FROM Clientes AS C
LEFT JOIN Pedidos AS P ON P.CodCli = C.CodCli
WHERE P.NumPed IS NULL;
