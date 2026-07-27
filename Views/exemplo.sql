-- Views
create view cliente_profissao as
select
   cln.nome as cliente,
   cln.cpf,
   prf.nome as profissao
from
   cliente as cln
left outer join profissao prf
   on cln.idprofissao = prf.idprofissao

select cliente from cliente_profissao where profissao = 'Professor'
