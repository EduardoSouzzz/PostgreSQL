-- 6 Pedido
select max (idpedido) + 1 from pedido
create sequence pedido_id_seq minvalue 16
alter table pedido alter idpedido set default nextval('pedido_id_seq')
alter sequence pedido_id_seq owned by pedido.idpedido

insert into pedido (data_pedido, valor, idcliente, idvendedor)
values (current_date, 130, 1, 1)
select * from pedido
