-- 3
create view produto_fornecedor as
select
   prd.nome as produto,
   prd.valor,
   frn.nome as fornecedor
from produto as prd
left outer join fornecedor as frn
   on prd.idfornecedor = frn.idfornecedor

select * from produto_fornecedor
