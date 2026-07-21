-- RELACIONAMENTO COM CLIENTE E COMPLEMENTO;

select * from cliente;
alter table cliente drop complemento; -- apaga campo complemento
alter table cliente add idcomplemento integer; -- cria campo idcomplemento

alter table cliente add constraint fk_cln_idcomplemento foreign key (idcomplemento) 
references complemento (idcomplemento); -- cria chave estrangeira e relaciona com a table cliente

update cliente set idcomplemento = 1 where idcliente in (1, 4, 9, 13);
update cliente set idcomplemento = 2 where idcliente in (2, 3, 7);
