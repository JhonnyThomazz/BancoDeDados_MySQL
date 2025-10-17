create database atividade_funcao;
use atividade_funcao;

create table funcionario(
codfunc integer primary key auto_increment,
nomefunc varchar(50) not null,
sexofunc varchar(50) not null,
bairrofunc varchar(50) not null,
salfunc decimal(10.2) not null,
setorfunc varchar(50)
);

insert into funcionario (nomefunc, sexofunc, bairrofunc, salfunc, setorfunc) values('Larissa Menezes','F', 'Jabaquara', 1200.00, 'Marketing'),
('Selma Nunes','F','Grajaú',3800.00,'Vendas'),
('Leandro Henrique','M','Socorro',2950.00,'RH'),
('Amélia Jeremias','F','Socorro',4200,'Marketing'),
('Cláudio Jorge Silva','M','Jabaquara',1480.00,'Vendas'),
('Luciano Souza','M','Pedreira',1000,'Vendas'),
('Gabriela Santos Nunes','F','Jurubatuba',4150.00,''),
('Rafaela Vieira Jr','F','Jabaquara',700.00,'Marketing'),
('Suzana Crispim','F','Grajaú',5600.00,'Produção'),
('Sabrina Oliveira Castro','F','Pedreira',2900.00,'Marketing'),
('Jarbas Silv Nunes','M','Jurubatuba',5300.00,'Produção'),
('Ralf Borges','M','Jabaquara',1600.00,'Marketing');

select * from funcionario;
