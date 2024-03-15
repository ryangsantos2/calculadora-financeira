create database tabelaryan;
use tabelaryan;

create table obras(
idObra int primary key auto_increment,
localobra varchar(20) not null,
nome varchar(40) not null,
tempMedia decimal(4,2) not null,
umdMedia decimal(4,2) not null
);

create table sensores(
idSensores int primary key auto_increment,
nome varchar(20),
dtCaptura datetime not null
);

create table empregados(
idEmpregados int primary key auto_increment,
nome varchar(40) default('Desconhecido'),
funcao varchar(30) 
);

alter table empregados add constraint chkFuncao check(funcao in('funcionario', 'coordenador', 'limpeza', 'chefe', 'segurança'));