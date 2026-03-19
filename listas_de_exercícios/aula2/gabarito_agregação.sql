-- 1. Total de clientes
SELECT COUNT(*) AS TotalClientes 
FROM Clientes;

-- 2. Soma total dos salários
SELECT SUM(Salario) AS FolhaPagamentoTotal 
FROM Funcionarios;

-- 3. Média de preço da categoria 1
SELECT AVG(Preco) AS MediaPrecoBebidas 
FROM Produtos 
WHERE CodCategoria = 1;

-- 4. Maior valor de frete
SELECT MAX(Frete) AS MaiorFrete 
FROM Pedidos;

-- 5. Menor salário do departamento Comercial
SELECT MIN(Salario) AS MenorSalarioComercial 
FROM Funcionarios 
WHERE Departamento = 'Comercial';
