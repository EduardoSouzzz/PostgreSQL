-- Exemplo
select max(idbairro) + 1 from bairro
create sequence bairro_id_seq minvalue 5
alter table bairro alter idbairro set default nextval('bairro_id_seq')
alter sequence bairro_id_seq owned by bairro.idbairro

insert into bairro (nome) values ('Teste 1');
insert into bairro (nome) values ('Teste 2');

select * from bairro
