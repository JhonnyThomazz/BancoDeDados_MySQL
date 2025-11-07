-- AULA14: VIEW --

create database AtividadeView;
use AtividadeView;

create table funcionario(
cod int(100) primary key auto_increment not null,
nome varchar(50) not null,
especialidade varchar(50) not null
);
create table dependentes(
cod int(100) primary key auto_increment not null,
nome varchar(50) not null,
cod_func int not null,
constraint dependente_funcionario foreign key(cod_func) references funcionario(cod)
);

insert into funcionario(nome, especialidade) 
values('John MacTavish', 'Fullstack'),
('Simon Riley','Front-end'),
('John Price','T.I'),
('Gary Sanderson','Back-end'),
('Kyle Garrick','Analista de dados');

insert into dependentes(nome, cod_func) 
values('Jhonny', 1),
('Mandy',2),
('April',3),
('May',4),
('Ellie',5);

## Criando view
create view vw_lista_funcionarios as 
select cod, nome, especialidade
from funcionario;

## Executando view
select * from vw_lista_funcionarios;

## view02-dependentes
create view vw_lista_dependentes as
select cod, nome, cod_func
from dependentes;

select * from vw_lista_dependentes;


## view - funcionario sem especialidade
create view vw_lista_funcionarios_sem_especialidade as
select cod, nome
from funcionario
where especialidade is null;

select * from vw_lista_funcionarios_sem_especialidade;


## view - funcionarios com a letra J
create view vw_lista_funcionarios_letra_J as
select cod, nome, especialidade
from funcionario
where nome like'J%';

select * from vw_lista_funcionarios_letra_J;


## view-inner join
create view vw_lista_funcionarios_dependentes as
select func.nome as nome_funcionario, depen.nome as nome_dependente
from funcionario func
inner join dependentes depen
on func.cod = depen.cod_func;

select * from vw_lista_funcionarios_dependentes;


## view - numero de dependentes por funcionario
create view vw_lista_dependentes_por_funcionario as
select func.nome as nome_funcionario, count(depen.cod) as quantidade_dependentes
from funcionario func
inner join dependentes depen
on func.cod = depen.cod_func
group by func.nome;

select * from vw_lista_dependentes_por_funcionario