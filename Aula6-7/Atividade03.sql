#atividade03
create database gerenciamento_ATIVIDADE_JT;
use gerenciamento_ATIVIDADE_JT;

create table produtos(
cod_prod integer primary key auto_increment,
nome varchar(50),
preco decimal(10,2)
);

create table pedidos(
cod_pedido integer primary key auto_increment,
cod_prod integer,
quantidade integer,
foreign key(cod_prod)references produtos(cod_prod)
);