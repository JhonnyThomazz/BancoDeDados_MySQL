create database empresa_join;
use empresa_join;

create table departamento(
depcodigo integer primary key auto_increment,
depnome varchar(50)
);

create table funcionario(
funcodigo integer primary key auto_increment,
depcodigo integer,
funnome varchar(100) not null,
funnascimento date not null,
funsalario decimal(10.2) not null,
constraint funcionario_dept foreign key (depcodigo) references departamento(depcodigo)
);

create table dependente (
depencodigo integer primary key auto_increment,
funcodigo integer,
depennome varchar(100),
constraint dependente_func foreign key (funcodigo) references funcionario(funcodigo)
);

##insert Departamento
insert into departamento (depnome) values('Finanças'),('RH'),('TI'),('Vendas'),('Marketing');

##insert Funcionário
insert into funcionario (funnome, funnascimento, funsalario, depcodigo) values('Ralf Jones','1993-12-10',5500,1),
('Terry Bogard','1991-11-25',4000,2),
('Sonya Blade','1993-6-25',7000,3),
('Mario','1990-02-17',3500,4),
('Luigi','1987-03-20',3500,5);

##insert Dependente
insert into dependente (depennome, funcodigo) values('Jhonny',1), 
('Cassie',2), 
('Jax',3), 
('Mai',4), 
('Peach',5);

select * from funcionario;
select * from dependente;
select * from departamento;

##iner join
select func.funnome nome_funcionario, depen.depennome nome_dependente
from funcionario func
inner join dependente depen
on func.funcodigo = depen.funcodigo
