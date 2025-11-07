##create database and use database
create database empresa_join2;
use empresa_join2;

##create table
create table departamento(
id bigint primary key auto_increment,
nome varchar(50)
);

create table funcionario(
id int primary key auto_increment,
salario decimal(10,2),
nome varchar(50),
id_departamento bigint,
constraint funcionario_departamento foreign key (id_departamento) references departamento(id)
);

create table dependente(
id int primary key auto_increment,
nome varchar(50),
id_funcionario int,
constraint dependente_funcionario foreign key (id_funcionario) references funcionario(id)
);

##insert
insert into departamento (nome) 
values('Tecnologia da Informação'),
('Recursos Humanos'),
('Finanças'),
('Produção'),
('Suporte');

insert into funcionario (salario, nome, id_departamento)
values(6000.00,'Johnny Test',1),
(8000.00,'Dexter', 1),
(5800.00,'Martin Kratt',2),
(9500.00,'Charlie Brown',5),
(6500.00,'Billy',4);

insert into dependente (nome, id_funcionario)
values('Mary Test',1),
('Susan Test',1),
('Chris Kratt',3),
('Snoopy',4),
('Mandy',5);

##Conferindo
select * from funcionario;
select * from departamento;
select * from dependente;

##Atividade01
use empresa_join2;
select func.nome as nome_funcionario, count(depen.id) as quantidade_dependentes
from funcionario func
inner join dependente depen
on func.id = depen.id_funcionario
group by func.nome
having count(depen.id) >= 2;

##atividade02
select depart.nome as nome_departamento, func.nome as nome_funcionario
from departamento depart
inner join funcionario func
on depart.id = func.id_departamento
order by func.nome asc;

##atividade03
select func.nome as nome_funcionario, depen.nome as nome_dependente
from funcionario func
left join dependente depen
on func.id = depen.id_funcionario;

##atividade04
select depart.nome as nome_departamento, avg(func.salario) as media_salarial
from departamento depart
inner join funcionario func
on depart.id = func.id_departamento
group by depart.nome;

##atividade05
select depart.nome as nome_departamento, func.nome as nome_funcionario
from departamento depart
left join funcionario func
on depart.id = func.id_departamento;

##atividade06
select sum(salario) as total_salario
from funcionario;

##atividade07
select depart.nome as nome_departamento, sum(func.salario) as custo_por_depart
from departamento depart
inner join funcionario func
on depart.id = func.id_departamento
group by depart.id;
 
