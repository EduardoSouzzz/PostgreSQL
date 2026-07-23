-- +10 Exercícios de joins
-- 1
select * from cliente
select * from municipio
select 
   cln.nome,
   mnc.nome as municipio
from cliente as cln
left outer join municipio as mnc
   on cln.idmunicipio = mnc.idmunicipio
order by cln.nome


-- 2
select 
   cln.nome,
   bro.nome as bairro,
   mnc.nome as municipio
from cliente as cln
left outer join bairro as bro
   on cln.idbairro = bro.idbairro
left outer join municipio as mnc
   on cln.idmunicipio = mnc.idmunicipio


-- 3
select * from nacionalidade
select 
   cln.nome,
   nac.nome as nacionalidade
from cliente as cln
left outer join nacionalidade as nac
   on cln.idnacionalidade = nac.idnacionalidade


-- 4
select * from produto
select 
   pdd.nome,
   frn.nome as fornecedor
from produto as pdd
left outer join fornecedor as frn
   on pdd.idfornecedor = frn.idfornecedor
order by pdd.nome


-- 5
select * from pedido
select * from cliente
select 
   cln.nome,
   pdd.data_pedido as pedido
from cliente as cln
inner join pedido as pdd
   on cln.idcliente = pdd.idcliente


-- 6
select * from pedido
select * from pedido_produto
select * from produto
select
   cln.nome,
   count(pdd.idpedido) as pedido
from cliente as cln
left outer join pedido as pdd
   on cln.idcliente = pdd.idcliente
group by cln.nome


-- 7
select * from pedido
select * from pedido_produto
select 
   pdd.data_pedido,
   count(pdpr.quantidade) as pedido_produto
from pedido as pdd
left outer join pedido_produto as pdpr
   on pdd.idpedido = pdpr.idpedido
group by pdd.idcliente, pdd.data_pedido


-- 8
select * from produto
select 
   prd.nome,
   sum(pdpr.quantidade) as pedido_produto 
from produto as prd
left outer join pedido_produto as pdpr
   on prd.idproduto = pdpr.idproduto
group by prd.nome


-- 9
select * from pedido
select
   cln.nome,
   sum(pdd.valor) as valor_gasto
from cliente as cln
inner join pedido as pdd
   on cln.idcliente = pdd.idcliente
group by cln.nome


-- 10
select * from municipio
select 
   mnc.nome,
   count(cln.idcliente) as cliente
from municipio as mnc
left outer join cliente as cln
   on mnc.idmunicipio = cln.idmunicipio
group by mnc.nome
