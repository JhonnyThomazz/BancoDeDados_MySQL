create database EMPRESA_XPTO;
use EMPRESA_XPTO;

create table departamento(
depcodigo integer primary key auto_increment,
depnome varchar(50)
);
create table funcionario(
funcodigo integer primary key auto_increment,
depcodigo integer,
funnome varchar(100),
funnascimento date,
funsalario numeric(10,2),
foreign key(depcodigo)references departamento(depcodigo)
);
create table dependente(
depencodigo integer primary key auto_increment,
funcodigo integer,
depennome varchar(100),
foreign key (funcodigo) references funcionario(funcodigo)
);
