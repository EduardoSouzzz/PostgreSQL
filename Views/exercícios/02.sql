-- 2
create view municipio_uf as
select
   uff.nome as uf,
   uff.sigla,
   mnc.nome as municipio
from uf as uff
left outer join municipio as mnc
   on uff.iduf = mnc.iduf

select * from municipio_uf
