-- 2 Complemento
select max(idcomplemento) + 1 from complemento
create sequence complemento_id_seq minvalue 3
alter table complemento alter idcomplemento set default nextval('complemento_id_seq')
alter sequence complemento_id_seq owned by complemento.idcomplemento

insert into complemento (nome) values ('Sítio');
select * from complemento
