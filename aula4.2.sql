create database localizacao;
use localizacao;

create table estado(
id int primary key auto_increment,
nome varchar(50),
sigla varchar(50)
);
insert into estado (nome, sigla) values ('sao paulo', 'SP');
insert into estado (nome, sigla) values ('santa catarina', 'SC');


create table cidade(
id int primary key auto_increment,
nome varchar(50),
id_estado int,

foreign key(id_estado) references estado(id)
);

insert into cidade (nome, id_estado) values ('sao paulo cidade', 1);
insert into cidade (nome, id_estado) values ('blumenau', 1);
insert into cidade (nome, id_estado) values ('real madrid', 2);
insert into cidade (nome, id_estado) values ('abacaxi', 2);


create table bairro (
id int primary key auto_increment,
nome varchar(50),
id_cidade int,

foreign key(id_cidade) references cidade(id));

insert into bairro (nome, id_cidade) values ('gasparinho', 1);
insert into bairro (nome, id_cidade) values ('catalunha', 1);
insert into bairro (nome, id_cidade) values ('catalunha', 2);
insert into bairro (nome, id_cidade) values ('catalunha', 2);
insert into bairro (nome, id_cidade) values ('catalunha', 3);
insert into bairro (nome, id_cidade) values ('catalunha', 3);
insert into bairro (nome, id_cidade) values ('catalunha', 4);
insert into bairro (nome, id_cidade) values ('catalunha', 4;

create table endereco(
id int primary key auto_increment,
numero int,
logradouro varchar(50),
complemento varchar(50),
id_bairro int,

foreign key(id_bairro) references bairro(id));

insert into endereco (numero, logradouro, complemento, id_bairro) values (1, 'rua 1', 'rua mt foda', 1);
insert into endereco (numero, logradouro, complemento, id_bairro) values (12, 'rua 2', 'rua mt legal', 2);
insert into endereco (numero, logradouro, complemento, id_bairro) values (13, 'rua 3', 'rua mt pica', 3);
insert into endereco (numero, logradouro, complemento, id_bairro) values (14, 'rua rua 5', 'rua mt massa', 4);
insert into endereco (numero, logradouro, complemento, id_bairro) values (15, 'rua rua 6', 'rua mt sinistra', 5);
insert into endereco (numero, logradouro, complemento, id_bairro) values (16, 'rua rua 7', 'rua mt tensa', 6);
insert into endereco (numero, logradouro, complemento, id_bairro) values (17, 'rua rua 8', 'rua mt rua', 7);
insert into endereco (numero, logradouro, complemento, id_bairro) values (18, 'rua rua 9', 'rua mt', 8);
