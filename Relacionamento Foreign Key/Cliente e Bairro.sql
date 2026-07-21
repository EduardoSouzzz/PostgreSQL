-- RELACIONAMENTO COM CLIENTE E BAIRRO;

select * from cliente;
alter table cliente drop bairro; -- apaga campo bairro da table
alter table cliente add idbairro integer;

alter table cliente add constraint fk_cln_idbairro foreign key (idbairro)
references bairro (idbairro); -- cria fk e relacionamento entre as tables

update cliente set idbairro = 1 where idcliente in (1, 12, 13);
update cliente set idbairro = 2 where idcliente in (2, 3, 6, 8, 9);
update cliente set idbairro = 3 where idcliente in (4, 5);
update cliente set idbairro = 4 where idcliente = 7;
