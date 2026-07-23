-- Comandos adicionais

-- Extração de coluna em uma tabela
select 
   data_pedido, 
   extract(day from data_pedido) as dia, -- extrai o dia
   extract(month from data_pedido) as mes, -- extrai o mes
   extract(year from data_pedido) as ano -- extrai o ano
from
   pedido


-- Sub string
-- vai mostrar apenas a 5 PRIMEIRAS LETRAS DOS NOMES
select nome, substring(nome from 1 for 5) from cliente

-- Os dois primeiros caracteres não será considerado
select nome, substring(nome from 1 for 5), substring(nome, 2) from cliente

-- LETRA MAIUSCULAS
select nome, upper(nome) from cliente

-- Mensagem personalizada
select nome, cpf, coalesce(cpf, 'CPF não informado') from cliente

-- Case 
select
   case sigla
      when 'PR'then 'Paraná'
	  when 'SC'then 'Santa Catarina'
	  when 'SP'then 'São Paulo'
	  when 'MG'then 'Minas Gerais'
	  when 'RS'then 'Rio Grande do Sul'
   else 'Outros'
   end as uf
from
   uf
