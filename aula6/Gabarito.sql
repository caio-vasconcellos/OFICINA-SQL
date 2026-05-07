USE Whey_Adulterado

-- Etapa 1 --
SELECT * FROM Perfil
WHERE tamanho_sapato IN ('40' , '41') AND cor_cabelo = 'Preto' AND altura_cm > 180

-- Etapa 2 --
SELECT Perfil.nome, Perfil.id_suspeito
FROM Perfil
JOIN Inventario ON Perfil.id_suspeito = Inventario.id_suspeito
WHERE Inventario.item = 'Cartão Tech'
  AND Perfil.tamanho_sapato IN ('40', '41')
  AND Perfil.cor_cabelo = 'Preto'
  AND Perfil.altura_cm > 180

INTERSECT 

SELECT Perfil.nome, Perfil.id_suspeito
FROM Perfil
JOIN Inventario ON Perfil.id_suspeito = Inventario.id_suspeito
WHERE Inventario.item = 'Perfume Francês'
  AND Perfil.tamanho_sapato IN ('40', '41')
  AND Perfil.cor_cabelo = 'Preto'
  AND Perfil.altura_cm > 180;

-- Etapa 3 -- 

SELECT a.id_suspeito, a.horario_entrada, a.tipo_chave 
FROM Acessos_Area_VIP a
JOIN Perfil P ON P.id_suspeito = a.id_suspeito
WHERE a.id_suspeito IN (1,4,5,7) AND a.horario_entrada BETWEEN '2023-10-25T19:30:00' AND '2023-10-25T20:00:00'
 

SELECT  DISTINCT P.nome as Criminoso, P.id_suspeito as ID_Criminoso
FROM Perfil P
JOIN Inventario I ON P.id_suspeito = I.id_suspeito
WHERE P.id_suspeito = 7;

