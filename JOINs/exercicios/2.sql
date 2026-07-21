-- 2
select 
   prd.nome,
   prd.valor,
   frn.nome as fornecedor
   
from
   produto as prd
left outer join fornecedor as frn
   on prd.idfornecedor = frn.idfornecedor
