drop database if exists mercado;
create database mercado;
use mercado;

create table categorias(
id int primary key auto_increment,
nome varchar(100)
);

insert into categorias (nome) values ('hortifruit'); 
insert into categorias (nome) values ('embutidos'); 
select * from categorias;

create table produtos(
id int primary key auto_increment,
nome varchar(100),
id_categoria int,

foreign key (id_categoria) references categorias (id)
);

insert into produtos (nome, id_categoria) values ('batatinha', 1);
insert into produtos (nome, id_categoria) values ('calabresa', 2);
insert into produtos (nome, id_categoria) values ('bacon', 2);
insert into produtos (nome, id_categoria) values ('toddy', 3);

select * from produtos;

-- criar tabela de times_futebol 
-- id pk
-- nome 
-- faturamento

-- criar 5 times
-- consultar

-- criar tebela jogadores
-- id pk
-- nome
-- id_time

-- inserir 2 jogadores por time
-- consultar 


create table times_futebol(
id int primary key auto_increment,
nome varchar(50),
faturamento DOUBLE
);

insert into times_futebol (nome, faturamento) values ('vasco', 0);
insert into times_futebol (nome, faturamento) values ('sp', 1);
insert into times_futebol (nome, faturamento) values ('tupi', 2);
insert into times_futebol (nome, faturamento) values ('fla', 3);
insert into times_futebol (nome, faturamento) values ('timezao', 4);

create table jogadores(
id int primary key auto_increment,
nome varchar(50),
id_time int,

foreign key (id_time) references times_futebol(id)
);

insert into jogadores (nome, id_time) values ('messi', 1);
insert into jogadores (nome, id_time) values ('ney', 2);
insert into jogadores (nome, id_time) values ('eu', 2);
insert into jogadores (nome, id_time) values ('ela', 3);
insert into jogadores (nome, id_time) values ('nos', 4);
select * from jogadores;
select jogadores.id_time, times_futebol.nome, jogadores.nome from jogadores inner join times_futebol on (jogadores.id_time = times_futebol.id);


create table categorias_financeiro(
id int primary key auto_increment,
nome varchar(50)
);

insert into categorias_financeiro (nome) values ('cat1');
insert into categorias_financeiro (nome) values ('cat2');
insert into categorias_financeiro (nome) values ('cat3');
insert into categorias_financeiro (nome) values ('cat4');
insert into categorias_financeiro (nome) values ('cat5');
insert into categorias_financeiro (nome) values ('cat6');
insert into categorias_financeiro (nome) values ('cat7');
insert into categorias_financeiro (nome) values ('cat8');
insert into categorias_financeiro (nome) values ('cat9');
insert into categorias_financeiro (nome) values ('cat10');

select id, nome from categorias_financeiro;

create table entradas(
id int primary key auto_increment,
nome varchar(50),
valor double,
id_categoria int,

foreign key(id_categoria) references categorias_financeiro (id)
);

select entradas.id, categorias_financeiro.nome, entradas.nome from entradas inner join categorias_financeiro on (entradas.id = categorias_financeiro.id);

insert into entradas (nome, valor, id_categoria) values ('entrada1', 4938983, 1);
insert into entradas (nome, valor, id_categoria) values ('entrada2', 4938984, 2);
insert into entradas (nome, valor, id_categoria) values ('entrada3', 4938985, 3);
insert into entradas (nome, valor, id_categoria) values ('entrada4', 4938986, 4);

select * from entradas;

create table saidas(
id int primary key auto_increment,
nome varchar(50),
valor double,
data_vencimento datetime,
status varchar(50),
id_categoria int,

foreign key(id_categoria) references categorias_financeiro(id)
);

select saidas.id, categorias_financeiro.nome, saidas.nome from saidas inner join categorias_financeiro on (saidas.id = categorias_financeiro.id);

insert into saidas (nome, valor, data_vencimento, id_categoria, status) values ('saida1', 2394433, '2000-10-10', 1, 'pago');
insert into saidas (nome, valor, data_vencimento, id_categoria, status) values ('saida2', 2394433, '2010-10-10', 2, 'devendo');
insert into saidas (nome, valor, data_vencimento, id_categoria, status) values ('saida3', 2394433, '2020-10-10', 3, 'pendente');
insert into saidas (nome, valor, data_vencimento, id_categoria, status) values ('saida4', 2394433, '2015-10-10', 4, 'nao');
insert into saidas (nome, valor, data_vencimento, id_categoria, status) values ('saida5', 2394433, '2016-10-10', 5, 'sla');


