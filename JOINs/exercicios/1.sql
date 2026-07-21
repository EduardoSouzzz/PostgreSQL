-- 1
select
   cln.nome as cliente,
   prf.nome as profissao,
   ncn.nome as nacionalidade,
   cln.logradouro,
   cln.numero,
   cmp.nome as complemento,
   bro.nome as bairro,
   mnc.nome as municipio,
   uf.nome as uf
   
from cliente as cln
left outer join profissao as prf 
   on cln.idprofissao = prf.idprofissao
   
left outer join nacionalidade as ncn
   on cln.idnacionalidade = ncn.idnacionalidade
   
left outer join complemento as cmp
   on cln.idcomplemento = cmp.idcomplemento

left outer join bairro as bro
   on cln.idbairro = bro.idbairro

left outer join municipio as mnc
   on cln.idmunicipio = mnc.idmunicipio

-- table uf não tem na tabela cliente, ent faça relacionamento
left outer join uf on mnc.iduf = uf.iduf
