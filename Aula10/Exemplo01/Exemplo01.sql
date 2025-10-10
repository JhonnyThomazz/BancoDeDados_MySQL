create database RH;
use RH;

create table cargo(
cargo_id integer primary key auto_increment,
nome varchar(50) not null,
salario decimal(10,2) not null,
descricao text
);


create table funcionario(
funcionario_id integer primary key auto_increment,
nome varchar(100),
sobrenome varchar(100),
email varchar(100),
data_contratacao date,
cargo_id integer,
constraint funcionario_cargo foreign key (cargo_id) references cargo(cargo_id)
);

insert into cargo (nome, salario, descricao) values('DEV FULLSTACK', 15000.00, 'Desenvolve e participa de grandes projetos'), 
('DEV FRONTEND', 12000.00, 'Desenvolve a parte visual e as interfaces de projetos'), 
('DEV BACKEND', 14000.00, 'Desenvolve a parte funcional e lógica de projetos'), 
('ANALISTA DE DADOS',8000.00,'Analisa e monta Dashboards'), 
('GERENTE DE PROJETOS ÁGIL',13000.00,'Lidera o time de DEVs');
insert into cargo (nome, salario, descricao) values('DEV BANCO DE DADOS',15000.00,'Desenvolve e realiza manutenção de um Banco de Dados');
select * from cargo;

insert into funcionario (nome, sobrenome, email, cargo_id) values('Romeu', 'Da Silva', 'example@mail.com',5),
('João', 'Romão', 'example2@mail.com',4),
('Maria', 'Pasadena', 'example3@mail.com',6),
('Jhonny', 'Thomazz', 'example04@mail,com',1),
('Corey', 'Taylor', 'example05@mail.com',2),
('Marshall', 'Mathers', 'example06@mail.com',3); 


update cargo
set salario = 18000.00
where cargo_id = 4;
select * from funcionario

