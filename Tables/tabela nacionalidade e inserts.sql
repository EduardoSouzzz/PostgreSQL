-- Criando a tabela nacionalidade
create table nacionalidade (
     idnacionalidade integer not null,
	 nome varchar(30) not null,

	 constraint pk_ncn_idnacionalidade primary key(idnacionalidade),
	 constraint un_ncn_nome unique (nome)
);

-- Inserção de dados na tabela nacionalidade
select nacionalidade from cliente;
insert into nacionalidade(idnacionalidade, nome) values (1, 'Brasileira');
insert into nacionalidade(idnacionalidade, nome) values (2, 'Italiana');
insert into nacionalidade(idnacionalidade, nome) values (3, 'Norte-americana');
insert into nacionalidade(idnacionalidade, nome) values (4, 'Alemã');

select * from nacionalidade;
