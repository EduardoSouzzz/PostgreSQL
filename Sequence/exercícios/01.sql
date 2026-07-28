-- Exercicio
-- 1 Cliente
select max(idcliente) + 1 from cliente
create sequence cliente_id_seq minvalue 18
alter table cliente alter idcliente set default nextval('cliente_id_seq')
alter sequence cliente_id_seq owned by cliente.idcliente

insert into cliente (nome) values ('Marcelo');
insert into cliente (nome) values ('Julia');

select * from cliente
