-- Criando table PROFISSAO
create table profissao (
     idprofissao integer not null,
	 nome varchar(30) not null,

	 constraint pk_prf_idprofissao primary key (idprofissao),
	 constraint un_prf_nome unique (nome)
);

-- Inserção de dados na tabela PROFISSAO
insert into profissao (idprofissao, nome) values (1, 'Estudante');
insert into profissao (idprofissao, nome) values (2, 'Engenheiro');
insert into profissao (idprofissao, nome) values (3, 'Pedreiro');
insert into profissao (idprofissao, nome) values (4, 'Jornalista');
insert into profissao (idprofissao, nome) values (5, 'Professor');
