# Aula 9 - Power BI com SQL

1. Conectar o Power BI ao SQL Server.
2. Selecionar a base `EmpresaBrasil`.
3. Importar `Clientes`, `Produtos` ou `Pedidos`.
4. Criar uma tabela ou gráfico simples.
5. Explicar qual pergunta o visual responde.

Consulta de apoio:

```sql
SELECT Regiao, COUNT(*) AS TotalClientes
FROM Clientes
GROUP BY Regiao;
```

Os PDFs de cenários desta pasta ficam como exercícios opcionais. A atividade obrigatória é apenas a conexão, uma consulta simples e um visual explicado pelo aluno.
