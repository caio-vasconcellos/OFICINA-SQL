#  Missão SQL: O Mistério do Whey Adulterado

> **Status da Missão:** Operação em andamento...
> **Nível de Dificuldade:** MEDIO (Envolve JOINs, Filtros Compostos e Análise de Dados).

Bem-vindo à equipe de perícia digital! O Diretor da academia foi envenenado na **Área VIP** na última quarta-feira, entre **19:30 e 20:30**. Sua missão é usar consultas SQL para filtrar os suspeitos e encontrar o verdadeiro culpado.

---

## Estrutura do Banco de Dados

O banco `Whey_Adulterado` contém as seguintes tabelas que você precisará cruzar:

* `Perfil`: Dados físicos dos suspeitos (cabelo, sapato, altura).
* `Inventario`: Objetos pessoais encontrados com cada suspeito.
* `Acessos_Area_VIP`: Registros biométricos de entrada na sala do crime.
* `Depoimentos`: Relatos colhidos no local que podem confirmar ou quebrar álibis.

---

##  Cronograma da Investigação 

### Etapa 1: Triagem Física (7 min)
A perícia coletou as seguintes evidências no tapete da cena do crime:
* **Fio de Cabelo:** Cor Preta.
* **Pegada:** Tamanho entre 40 e 41.
* **Perfil do Culpado:** Uma testemunha viu alguém "bem alto" saindo apressado (Altura > 180cm).

---

###  Etapa 2: A Prova Material (10 min)
O assassino precisou de um **Cartão Tech** para invadir a sala. Além disso, o perito encontrou um frasco de **Perfume Francês** deixado sobre a mesa da vítima.

>   **Destaque:** Com base nos IDs filtrados na Etapa 1, cruze os dados com a tabela `Inventario`.
>   **Desafio:** Você deve encontrar quem possui **AMBOS** os itens.

