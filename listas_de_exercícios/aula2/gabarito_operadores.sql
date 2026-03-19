-- 1. Salário superior a 3000
SELECT * FROM Funcionarios 
WHERE Salario > 3000;

-- 2. Comercial ou Logística (Usando IN ou OR)
SELECT Nome, Cargo, Departamento FROM Funcionarios 
WHERE Departamento IN ('Comercial', 'Logística');

-- 3. Preço entre 10 e 25 (Usando BETWEEN)
SELECT * FROM Produtos 
WHERE Preco BETWEEN 10 AND 25;

-- 4. Clientes de MG, SP ou RJ
SELECT Nome, Cidade FROM Clientes 
WHERE Regiao IN ('MG', 'SP', 'RJ');

-- 5. Produtos que começam com 'C'
SELECT * FROM Produtos 
WHERE Descr LIKE 'C%';

-- 6. Funcionários fora do Comercial
SELECT * FROM Funcionarios 
WHERE Departamento <> 'Comercial'; -- Ou: WHERE NOT Departamento = 'Comercial'

-- 7. Frete < 20 e Status 'Entregue'
SELECT * FROM Pedidos 
WHERE Frete < 20 AND Status = 'Entregue';

-- 8. Fornecedores sem o domínio específico
SELECT Empresa, Email FROM Fornecedores 
WHERE Email NOT LIKE '%@distvale.com.br';

-- 9. Admitidos em 2021
SELECT * FROM Funcionarios 
WHERE DataAdmissao BETWEEN '2021-01-01' AND '2021-12-31';

-- 10. Mais de 100 unidades e Categoria 1
SELECT * FROM Produtos 
WHERE Unidades > 100 AND CodCategoria = 1;
