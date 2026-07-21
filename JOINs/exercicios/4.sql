-- 4
select
   pdd.data_pedido,
   pdd.valor,
   cln.nome as cliente,
   tsp.nome as transportadora,
   vnd.nome as vendedor
   
from pedido as pdd

left outer join cliente as cln
   on pdd.idcliente = cln.idcliente

left outer join transportadora as tsp
   on pdd.idtransportadora = tsp.idtransportadora

left outer join vendedor as vnd
   on pdd.idvendedor = vnd.idvendedor

select * from pedido
