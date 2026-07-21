-- FUNÇÕES AGREGADAS;

-- MEDIA = AVG
select avg(valor) from pedido

-- CONTAGEM = count
select count(idmunicipio) from municipio
select count(*) from municipio

-- FILTRO
select count(idmunicipio) from municipio where iduf = 2

-- MAIOR = max e MENOR = min VALOR 
select max(valor) from pedido
select min(valor) from pedido
select max(valor), min(valor) from pedido

-- SOMA = sum
select sum(valor) from pedido

-- AGRUPAMENTO = group by
select idcliente, sum(valor) from pedido group by idcliente

-- FILTROS = having sum
select idcliente, sum(valor) from pedido group by idcliente having sum(valor) > 500 order by idcliente
