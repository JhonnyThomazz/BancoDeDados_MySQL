create database cadastroCliente;
use cadastroCliente;

create table cliente(
cliente_id int primary key auto_increment,
nome varchar(50),
cpf varchar(50),
rg varchar(50),
telefone varchar(50),
endereco varchar(50)
);

create table dependente(
dependente_id int primary key auto_increment,
nome varchar(50),
cpf varchar(50),
cliente_id int,
constraint dependente_cliente foreign key (cliente_id) references cliente(cliente_id)
);

##############################

##Clientes
insert into cliente(nome, cpf, rg, telefone, endereco) values('Sub Zero', '000 000 000 00', '0000000','9999 9999', 'Rua X' ),
('Jax', '000 000 000 00', '0000000','9999 9999', 'Rua Y' ),
('Scorpion', '000 000 000 00', '0000000','9999 9999', 'Rua Z' ),
('Sonya Blade', '000 000 000 00', '0000000','9999 9999', 'Rua AX' ),
('Johnny Cage', '000 000 000 00', '0000000','9999 9999', 'Rua AY' );

select * from cliente;

############################

##Dependentes
insert into dependente(nome, cpf) values('Liu Kang','000 000 000 00'),
('Kung Lao','000 000 000 00'),
('Raiden','000 000 000 00'),
('Mileena','000 000 000 00'),
('Kano','000 000 000 00'),
('Baraka','000 000 000 00'),
('Shang Tsung','000 000 000 00'),
('Reptile','000 000 000 00');

select* from dependente;

##############################

##Alterando nomes e endereços de 3 clientes
update cliente
set nome = 'Ryu'
where cliente_id = 1;

update cliente
set nome = 'Ken'
where cliente_id = 2;

update cliente
set nome = 'Chun Li'
where cliente_id = 3;

select * from cliente;

##############################
##Excluindo 3 dependentes

delete from dependente
where dependente_id = 1;

delete from dependente
where dependente_id = 2;

delete from dependente
where dependente_id = 3;

select * from dependente;
##############################

select nome, endereco from cliente;