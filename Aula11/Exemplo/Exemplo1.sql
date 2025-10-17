create database estoque;
use estoque;

create table vendas(
id_venda integer primary key auto_increment,
produto varchar(50) not null,
quantidade integer(100) not null,
preco double(10,2) not null
);

insert into vendas (produto, quantidade, preco) values('Produto A', 10, 19.99),
('Produto B', 5, 29.99),
('Produto A', 8, 19.99),
('Produto C', 15, 39.99),
('Produto B', 12, 29.99),
('Produto C', 7, 39.99); 

select * from vendas;
################################################
##count
select count(*) as total_vendas from vendas;

##sum
select sum(quantidade) as total_produtos_vendidos from vendas;

##avg
select avg(preco) as media_precos_vendas from vendas;

##min
select min(preco) as menor_preco from vendas;

##max
select max(preco) as maior_preco from vendas;

##group by##
select produto, count(*) as total_vendas
from vendas
group by produto;

##group by sum##
select produto, sum(quantidade) as total_produtos_vendidos
from vendas
group by produto;

##group by avg##
select produto, avg(preco) as preco_medio
from vendas
group by produto;

##group by min##
select produto, min(preco) as preco_minimo
from vendas
group by produto;

##group by max##
select produto, max(preco) as preco_maximo
from vendas
group by produto;

##group by Having##
select produto, sum(quantidade) as total_quantidade
from vendas
group by produto
having total_quantidade > 18;

##order by ascendente/ descendente##
select * from vendas
order by preco asc;

select * from vendas
order by preco desc;

##limit##
select * from vendas
limit 3;

##sub consulta(subselect)##
select produto, preco,
	(select max(preco) from vendas) as preco_max
from vendas;

##sub consulta 02(subselect 02)##
select produto, preco
from vendas
where preco > (select avg(preco) from vendas);