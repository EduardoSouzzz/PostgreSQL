-- 3
select
   tsp.nome,
   mnc.nome as municipio
from transportadora as tsp
left outer join municipio as mnc
   on tsp.idmunicipio = mnc.idmunicipio

select * from transportadora
