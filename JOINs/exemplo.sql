-- RELACIONAMENTO COM JOINs
-- 1
select 
   cln.nome as cliente, 
   prf.nome as profissao
from 
   cliente as cln
left outer join -- left = usar a tabela a esquerda e da direita (cliente e profissao).
-- join = junção de tables
-- valores nulls aparecem sem problemas com LEFT OUTER JOIN
   profissao as prf on cln.idprofissao = prf.idprofissao


-- 2
select 
   cln.nome as cliente, 
   prf.nome as profissao
from 
   cliente as cln
inner join -- junção interna
-- inner join obriga o relacionamento entre as duas tables, assim
-- não possuindo valores nulls
   profissao as prf on cln.idprofissao = prf.idprofissao


-- 3
select 
   cln.nome as cliente, 
   prf.nome as profissao
from 
   cliente as cln
right outer join -- TABLE DA DIREITA primeiro, DPS o da esquerda
   profissao as prf on cln.idprofissao = prf.idprofissao
