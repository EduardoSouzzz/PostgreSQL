-- 7 Profissao
select max(idprofissao) + 1 from profissao
create sequence profissao_id_seq minvalue 6
alter table profissao alter idprofissao set default nextval('profissao_id_seq')
alter sequence profissao_id_seq owned by profissao.idprofissao

insert into profissao (nome) values ('Ciêntista')
select * from profissao
