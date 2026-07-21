-- Alter = alterar a estrutura de uma tabela
alter table cliente rename column profissao to idprofissao;

alter table cliente alter column idprofissao type integer;
-- Estudante -> 1, 9, 10, 12, 15, 17
-- Engenheiro -> 2
-- Pedreiro -> 3
-- Jornalista -> 4, 5
-- Professor -> 6, 7, 8, 13
-- Null -> 11, 14


-- Drop = apagar um campo
alter table cliente drop idprofissao;

-- Add uma coluna na tabela cliente
alter table cliente add idprofissao integer;

-- Relacionamento 
alter table cliente add constraint fk_cln_idprofissao foreign key (idprofissao) references profissao (idprofissao);
