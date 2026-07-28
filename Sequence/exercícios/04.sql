-- 4 Municipio
select max(idmunicipio) + 1 from municipio
create sequence municipio_id_seq minvalue 10
alter table municipio alter idmunicipio set default nextval('municipio_id_seq')
alter sequence municipio_id_seq owned by municipio.idmunicipio

insert into municipio (nome, iduf) values ('Teste sequencia',1)
select * from municipio
