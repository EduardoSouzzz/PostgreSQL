-- 1
create view cliente_view as
select
   cln.nome as cliente,
   prf.nome as profissao,
   nac.nome as nacionalidade,
   cmp.nome as complemento,
   mnc.nome as municipio,
   uff.nome as uf,
   brr.nome as bairro,
   cln.cpf,
   cln.rg,
   cln.data_nascimento,
   cln.genero,
   cln.logradouro,
   cln.numero,
   cln.observacoes
   
from 
   cliente as cln
left outer join municipio as mnc
   on cln.idmunicipio = mnc.idmunicipio
left outer join profissao as prf
   on cln.idprofissao = prf.idprofissao
left outer join nacionalidade as nac
   on cln.idnacionalidade = nac.idnacionalidade
left outer join bairro as brr
   on cln.idbairro = brr.idbairro
left outer join complemento as cmp
   on cln.idcomplemento = cmp.idcomplemento
left outer join uf as uff
   on cln.iduf = uff.iduf

select * from cliente_view
