# Aula 1 - SELECT e FROM

## Objetivo

Aprender a consultar dados existentes sem alterar o banco.

## Ideia principal

- `SELECT` escolhe as colunas que queremos visualizar.
- `FROM` informa de qual tabela os dados virão.
- `*` significa “todas as colunas”.

## Exemplos

```sql
USE EmpresaBrasil;

SELECT * FROM Clientes;
SELECT Nome, Cidade FROM Clientes;
SELECT Descr, Preco FROM Produtos;
```

## Prática guiada

1. Liste todos os funcionários.
2. Mostre apenas nome e cargo dos funcionários.
3. Liste descrição e preço dos produtos.

Não use filtros, ordenação ou cálculos nesta aula. Eles entram nas próximas etapas.
