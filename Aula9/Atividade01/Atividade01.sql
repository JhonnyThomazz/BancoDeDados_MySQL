create database locacao;
use locacao;

create table cliente(
codigo_cliente integer(10) primary key auto_increment,
nome varchar(45),
endereco varchar(45),
bairro varchar(45),
cidade varchar(45),
uf varchar(2),
telefone varchar(45)
);

create table titulo(
codigo_titulo integer(10) primary key auto_increment,
nome varchar(45),
tipo varchar(45),
locado integer(10)
);

create table locacoes(
codigo_locacoes integer(10) primary key auto_increment,
codigo_cliente integer(10),
codigo_titulo integer(10),
data_saida date,
data_retorno date,
constraint locacoes_cliente foreign key (codigo_cliente) references cliente(codigo_cliente),
constraint locacoes_titulo foreign key (codigo_titulo) references titulo(codigo_titulo)
);
##insert
insert into cliente (nome) values('JhonnyThomazz'),('Maria'),('Shadow'),('Ralf Jones'),('Chun-li');

insert into titulo (nome) values('Duro de matar'),('Transformers'),('Anônimo'),('Anônimo 2'),('John Wick 3 : Parabellum');

insert into locacoes (data_saida) values('2025-05-12'),('2025-05-22'),('2025-09-20'),('2025-10-01'),('2025-09-15');


##############################

##Delete
delete from cliente
where codigo_cliente = 5;

delete from cliente
where codigo_cliente = 4;

delete from cliente
where codigo_cliente = 1;

##########################

delete from titulo
where codigo_titulo = 5;

delete from titulo
where codigo_titulo = 1;

delete from titulo
where codigo_titulo = 2;

###########################

delete from locacoes
where codigo_locacoes = 1;

delete from locacoes
where codigo_locacoes = 2;

delete from locacoes
where codigo_locacoes = 3;

###########################

##update
update cliente
set nome = 'Shadow The Hedgehog'
where codigo_cliente = 3;

update cliente
set nome = 'Maria Robotinik'
where codigo_cliente = 2;

select * from cliente;
##########################

update titulo 
set nome = 'Nobody'
where codigo_titulo = 3;

update titulo
set nome ='Nobody 2'
where codigo_titulo = 4;

select * from titulo;
##########################

update locacoes
set data_saida = '2025-01-31'
where codigo_locacoes = 4;

update locacoes
set data_saida = '2025-01-31'
where codigo_locacoes = 5;

select* from locacoes;