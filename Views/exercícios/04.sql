-- 4
create view transportadora_uf as
select 
   tsp.nome as transportadora,
   tsp.logradouro,
   tsp.numero,
   uff.nome as unidade_federacao,
   uff.sigla
   
from transportadora as tsp
left outer join municipio as mnc
   on tsp.idmunicipio = mnc.idmunicipio
left outer join uf as uff
   on mnc.iduf = uff.iduf

select * from transportadora_uf
