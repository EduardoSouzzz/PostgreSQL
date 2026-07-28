-- 9 UF
select max(iduf) + 1 from uf
create sequence uf_id_seq minvalue 7
alter table uf alter iduf set default nextval('uf_id_seq')
alter sequence uf_id_seq owned by uf.iduf

insert into uf (nome, sigla)
values ('Mato Grosso', 'MT')
select * from uf
