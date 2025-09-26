create database universidade;

use universidade;
create table aluno(
id_aluno integer primary key auto_increment,
nome varchar(255) not null,
idade integer not null,
cpf bigint unique not null
);

use universidade;
create table disciplina(
id_disc integer primary key auto_increment,
aluno_id integer not null,
nome varchar(255),
descricao varchar(255),
constraint aluno_disciplina foreign key (aluno_id) references aluno(id_aluno)
);



