-- 5
create view pedido_transportadora_cliente_vendedor as
select
   pdd.data_pedido,
   pdd.valor,
   tsp.nome as transportadora,
   cln.nome as cliente,
   vnd.nome as vendedor
from pedido as pdd
left outer join transportadora as tsp
   on pdd.idtransportadora = tsp.idtransportadora
left outer join cliente as cln
   on pdd.idcliente = cln.idcliente
left outer join vendedor as vnd
   on pdd.idvendedor = vnd.idvendedor

select * from pedido_transportadora_cliente_vendedor
