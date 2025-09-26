create database loja;

use loja;

create table vendedor(
id_vendedor int primary key auto_increment,
nome varchar(100),
salarioFixo double,
faixaComissao char 
);

create table cliente(
id_cliente int primary key auto_increment,
nome varchar(100),
logradouro varchar(100),
numero varchar(100),
complemento varchar(100),
bairro varchar(100),
cep varchar(100),
cidade varchar(100),
uf varchar(100)
);

create table produto(
id_produto integer primary key auto_increment,
descricao varchar(100) not null,
unidade integer(11) not null,
valor_unitario double not null
);

create table pedido(
id_pedido integer(11) primary key auto_increment,
id_cliente integer(11),
id_vendedor integer(11),
prazo_entrega integer(11),
constraint pedido_cliente foreign key (id_cliente) references cliente(id_cliente),
constraint pedido_vendedor foreign key (id_vendedor) references vendedor(id_vendedor)
);

create table itemPedido(
id_pedido integer(11),
id_produto integer(11),
quantidade integer(11),
constraint itemPedido_produto foreign key(id_pedido) references pedido(id_pedido),
constraint itemPedido_pedido foreign key(id_produto) references produto(id_produto)
);

