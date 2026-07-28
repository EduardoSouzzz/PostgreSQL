-- 10 Vendedor
select max(idvendedor) + 1 from vendedor
create sequence vendedor_id_seq minvalue 9
alter table vendedor alter idvendedor set default nextval('vendedor_id_seq')
alter sequence vendedor_id_seq owned by vendedor.idvendedor

insert into vendedor (nome) values ('Kauã')
select * from vendedor
