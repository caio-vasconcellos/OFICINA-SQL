# Aula 5 - JOINS

## Objetivo

Combinar informações que estão em tabelas diferentes.

## Caminho da aula

- `INNER JOIN`: mostra apenas registros que possuem correspondência.
- `LEFT JOIN`: mantém todos os registros da tabela da esquerda, mesmo sem correspondência.

```sql
USE EmpresaBrasil;

SELECT C.Nome, P.NumPed
FROM Clientes AS C
INNER JOIN Pedidos AS P ON P.CodCli = C.CodCli;

SELECT C.Nome, P.NumPed
FROM Clientes AS C
LEFT JOIN Pedidos AS P ON P.CodCli = C.CodCli;
```

`RIGHT JOIN`, `FULL JOIN`, `UNION` e `INTERSECT` ficam fora do caminho obrigatório para manter a aula acessível.
