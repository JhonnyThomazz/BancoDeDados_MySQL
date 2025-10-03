create database gerencia_vendas;
use gerencia_vendas;

create table produtos(
produto_id integer primary key auto_increment,
nome varchar(50),
preco decimal(10,2),
estoque integer 
);

use gerencia_vendas;
create table vendas(
venda_id integer primary key auto_increment,
produto_id integer,
quantidade integer,
data_venda date,
constraint venda_produto foreign key (produto_id) references produtos(produto_id)
);

#Comandos do tipo DML
##inserir dados na tabela:
insert into produtos (nome, preco, estoque) values ('Notebook Dell Inspiron l15', 5000.00, 10);

##Selecionar a tabela inteira:
select * from produtos;

insert into produtos (nome, preco, estoque) values('Johnny Christ Custom 5-String Bass Guitar', 1250.00, 20), ('Johnny Christ Custom 4-String Bass Guitar', 1200.00, 25),('AMD Radeon RX6600', 3400.00, 15);
insert into vendas (produto_id, quantidade, data_venda) values(2, 3, '2025-10-03');
insert into vendas (produto_id, quantidade, data_venda) values(4, 2, '2025-10-03');
insert into vendas (produto_id, quantidade, data_venda) values(5, 1, '2025-09-10');

#Update
update produtos
set preco = 3500.00
where produto_id = 6;

update vendas
set quantidade = 2
where venda_id = 3;

#Delete
delete from produtos 
where produto_id = 3;

#select
select nome from produtos;
select venda_id, quantidade from vendas;

select * from vendas
where venda_id = 1;
