# Aula 2 - Filtros e ordenação

## Objetivo

Escolher melhor os registros que aparecem em uma consulta.

## Conteúdo da aula

`WHERE`, `LIKE`, `DISTINCT`, `TOP`, `ORDER BY`, `IN`, `OR` e `BETWEEN`.

## Exemplos

```sql
USE EmpresaBrasil;

SELECT Nome, Regiao FROM Clientes WHERE Regiao = 'SP';
SELECT Nome FROM Clientes WHERE Nome LIKE 'A%';
SELECT DISTINCT Regiao FROM Clientes;
SELECT TOP 5 Nome, Salario FROM Funcionarios ORDER BY Salario DESC;
SELECT Nome, Regiao FROM Clientes WHERE Regiao IN ('SP', 'MG');
SELECT Nome, Regiao FROM Clientes WHERE Regiao = 'SP' OR Regiao = 'RJ';
SELECT Nome, Salario FROM Funcionarios WHERE Salario BETWEEN 2000 AND 4000;
```

## Prática guiada

Comece com uma consulta simples e adicione apenas um filtro por vez. `AND`, `NOT`, cálculos, `IS NULL` e funções ficam fora do conteúdo obrigatório desta aula.
