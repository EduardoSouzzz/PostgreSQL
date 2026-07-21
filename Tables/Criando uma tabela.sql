create table cliente (
  idcliente integer not null,
	nome varchar(50) not null, --varchar, pois os nomes podem
	-- ser dinamicos.
	cpf char(11), --char, pois ja sabemos que cpf tem
	-- 11 caracteres.
	rg varchar(15),
	data_nascimento date,
	genero char(1), -- F ou M
	profissao varchar(30),
	nacionalidade varchar(30),
	logradouro varchar(30),
	numero varchar(10),
	complemento varchar(30),
	bairro varchar(30),
	municipio varchar(30),
	uf varchar(30),
	observacoes text);
