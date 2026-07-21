-- Consultas simples postgreSQL:
-- SELECIONAR TODOS(*) DE CLIENTE
select * from cliente;

select nome, data_nascimento from cliente;

-- Renomeando um campo com as
select nome, data_nascimento as "Data de nascimento" from cliente;

-- Concatenação com || & Renomeando a tabela
select 'CPF: ' || cpf || 'RG: ' || rg as "CPF e RG" from cliente;

-- Limitando a quantidade de dados na tabela com o "limit"
select * from cliente limit 3


-- where = onde | usando um filtro para selecionar pessoas que nasceram após 01 de janeiro de 2000
select nome, data_nascimento from cliente where data_nascimento > '2000-01-01';

-- SELECIONAR nome na table cliente onde nome começa com C (% mostra todas as letras apos o C)
select nome from cliente where nome like 'C%'

-- SELECIONAR clientes que possuem letra C no meio de seus nomes
select nome from cliente where nome like '%a%'

-- between = intervalo entre datas = SELECIONAR DATAS ENTRE ELAS
select nome, data_nascimento from cliente where data_nascimento between '1990-01-01' and '1998-01-01';

-- SELECIONAR rg de clientes que são null
select nome, rg from cliente where rg is null;

-- SELECIONAR clientes por nome e em order alfabeta
select nome from cliente order by nome asc;

-- SELECIONAR cliente por nome em ordem decrecente
select nome from cliente order by nome desc;
