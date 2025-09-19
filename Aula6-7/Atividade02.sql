#criando e selecionando banco
create database  escola_feliz;
use escola_feliz;

#criando tabela sala(SEMPRE CRIE A TABELA QUE EMPRESTA CHAVE PRIMEIRO)
create table sala(
	id_sala integer primary key auto_increment,
	nome varchar(50)
);

#criando tabela turma
create table turma(
	id_turma integer primary key auto_increment,
	nome varchar(50),
    id_sala integer,
    foreign key (id_sala) references sala(id_sala)
);

