-- 8 Transportadora
select max(idtransportadora) + 1 from transportadora
create sequence transportadora_id_seq minvalue 3
alter table transportadora alter idtransportadora set default nextval('transportadora_id_seq')
alter sequence transportadora_id_seq owned by transportadora.idtransportadora

insert into transportadora (idmunicipio, nome, logradouro, numero) 
values (2, 'IG. Transport.s', null, null)
select * from transportadora
