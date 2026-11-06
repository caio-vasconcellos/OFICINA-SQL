# Aula 4 - Funções de agregação e GROUP BY

## Objetivo

Produzir pequenos resumos sobre os dados.

## Conteúdo

`COUNT`, `SUM`, `AVG`, `MIN`, `MAX` e `GROUP BY`.

## Exemplos

```sql
USE EmpresaBrasil;

SELECT COUNT(*) AS TotalClientes FROM Clientes;
SELECT SUM(Preco * Unidades) AS ValorEstoque FROM Produtos;
SELECT AVG(Preco) AS PrecoMedio FROM Produtos;
SELECT MIN(Preco) AS MenorPreco, MAX(Preco) AS MaiorPreco FROM Produtos;
SELECT Regiao, COUNT(*) AS TotalClientes
FROM Clientes
GROUP BY Regiao;
```

Faça uma pergunta de negócio antes de escrever cada consulta: “o que eu quero contar, somar ou comparar?”.
