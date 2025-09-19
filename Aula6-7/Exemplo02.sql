#Criar BD, selecionar BD e criar tabela
create database teste;
use teste;

create table cliente(
	codigo integer,
    nome varchar(50),
    endereco varchar(50)
);
#Descreve os itens da tabela criada
describe cliente;

drop table cliente;
drop database teste;