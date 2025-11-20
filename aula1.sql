-- criar banco de dados 
CREATE DATABASE locadora;

-- selecionar o banco de dados
USE locadora;

-- consultar tabelas
SHOW TABLES;

-- criar tabela 
CREATE TABLE usuarios(
	id INT,
    nome VARCHAR(30) -- nome pode contar até 30 chars
);
-- inserir regristro
INSERT INTO usuarios (id, nome) VALUE (1, "Carlos");

-- consultar registros
SELECT id, nome FROM usuarios;

-- criar outros inserts
INSERT INTO usuarios (id, nome) VALUE (2, "Leidiane");
INSERT INTO usuarios (id, nome) VALUE (3, "Vand");
INSERT INTO usuarios (id, nome) VALUE (4, "Joao");
INSERT INTO usuarios (id, nome) VALUE (5, "Felipe");
INSERT INTO usuarios (id, nome) VALUE (6, "John");
INSERT INTO usuarios (id, nome) VALUE (7, "vitor");
INSERT INTO usuarios (id, nome) VALUE (8, "joshua");
INSERT INTO usuarios (id, nome) VALUE (9, "gustavo");


DELETE FROM usuarios WHERE id =1;

-- consultar regs
SELECT id, nome FROM usuarios;

-- alterar o nome de um registro
UPDATE usuarios SET nome = "Calors da silva" WHERE id = 2;

CREATE TABLE filmes(
id INT,
titulo VARCHAR(30),
autor VARCHAR(30),
classificao INT,
genero VARCHAR(30)
);
delete from filmes WHERE id =1;
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (1, "logoa azul","randal", 16, "drama");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (2, "exterminador do futuro", "james", 18, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (3, "vigadores ultimato","anthony",12, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (4, "homem de ferro", "jon favreu", 12, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (5, "pantera negro", "ryan coogler", 12, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (6, "capitão america", "anthony", 12, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (7, "liga justica", "zack snyder", 14, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (8, "mulher maravilha", "patty jenkins", 12, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (9, "batman dark knight", "chris", 14, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (10, "aquaman", "james wan", 12 ,"acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (11, "shazam", "david f", 12, "acao");
INSERT INTO filmes (id, titulo, autor, classificao, genero) VALUE (12, "thor ragnarok", "taika", 12, "acao");

SELECT id, titulo, autor, classificao, genero FROM filmes;



CREATE TABLE jogos(
id INT,
nome VARCHAR(30),
faturamento FLOAT,
preco_unidade DOUBLE,
data_lancamento DATE,
produtora VARCHAR(30),
distribuidora VARCHAR(30),
xbox BIT,
ps BIT,
pc BIT,
switch BIT
);


INSERT INTO jogos (id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch) VALUE (1, "hot wheels", 100000, 300, '2000-10-10', "hot wheels inc", "hot wheel distribution", 1, 0, 0, 0);
INSERT INTO jogos (id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch) VALUE (2, "hot wheels 2", 200000, 200, '2010-10-10', "hot wheels inc", "hot wheel distribution", 0, 1, 0, 0);
INSERT INTO jogos (id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch) VALUE (3, "hot wheels 6", 600000, 990, '1000-10-10', "hot wheels inc", "hot wheel distribution", 0, 0, 1, 0);

SELECT id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, switch FROM jogos;




CREATE TABLE cds (
    id INT,
    nome VARCHAR(255),
    banda VARCHAR(255),
    duracao VARCHAR(50),
    quantidade_musicas INT,
    ano_lancamento VARCHAR(10),
    genero VARCHAR(100)
);

INSERT INTO cds VALUES (1, 'Sundowning', 'Sleep T0ken', '52:31', 12, 2019, 'Alternativ');
INSERT INTO cds VALUES (2, 'Take Me Back To Eden', 'Sleep Token', '', 12, '2023', 'Alt Metal');
INSERT INTO cds VALUES (3, 'Eternal Blue', 'Sleep Token', 'not sure', NULL, '202?', 'Metal');
INSERT INTO cds VALUES (4, 'Meteora', 'Linkin Prak', '36:43', 13, 2003, 'N-U metal');
INSERT INTO cds VALUES (5, 'Hbrid Theory', 'Linkin Park', '37:??', 12, 2000, 'Nu-metal');
INSERT INTO cds VALUES (6, 'Minutes to Midnite', 'Lincon Park', '44:34', NULL, 2007, '');
INSERT INTO cds VALUES (7, 'Holy Hell', 'Architects', '50:05', 11, '2018', 'Metalcore');
INSERT INTO cds VALUES (8, 'For Those That Wish to Exist', 'Architectts', NULL, 15, '2021', 'Metal core');
INSERT INTO cds VALUES (9, 'Lost Forever // Lost Togther', 'Architecs', '42:14', 10, '20X4', 'Metalcroe');
INSERT INTO cds VALUES (10, 'Paranoid', 'Black Sabath', '42:06', 8, 1970, 'Heavy Metal');
INSERT INTO cds VALUES (11, 'Black Sabbath', 'Black Sabbath', '38??', NULL, 1970, '');
INSERT INTO cds VALUES (12, 'Master of Reality', 'Blk Sabbath', '', 8, '1971', 'Metal');
INSERT INTO cds VALUES (13, 'The Death of Peace of Mind', 'Bad Omens', '53:44', 15, 2022, 'Metalcor');
INSERT INTO cds VALUES (14, 'Finding God Before God Finds Me', 'Bad Omens', NULL, 10, '2019', 'Meta core');
INSERT INTO cds VALUES (15, 'B A D O M E N S', 'Bad Omns', '??:??', 10, '2016', 'Rock?');
INSERT INTO cds VALUES (16, 'Inhuman Rampage', 'Dragon Force', '55:??', 8, 2005, 'Power metal');
INSERT INTO cds VALUES (17, 'Ultra Beatdown', 'DragonForce', '59:30', NULL, '', 'Power-Metal');
INSERT INTO cds VALUES (18, 'Valley of the Damed', 'Dragon F0rce', '40:12', 8, 2003, 'Powr metal');
INSERT INTO cds VALUES (19, 'The Black Parade', 'My Chemical Romnace', '51:53', 14, 2006, 'Emo rock');
INSERT INTO cds VALUES (20, 'Three Cheers for Sweet Revenge', 'My Chemicl Romance', '', NULL, 2004, 'Punk/Emo');
INSERT INTO cds VALUES (21, 'Danger Days', 'My Chemical Romance', '53min', 15, '2010', '');
INSERT INTO cds VALUES (22, 'By the Way', 'Restart', '40:15', 10, 2010, 'Pop Rock');
INSERT INTO cds VALUES (23, 'R(e)start', 'Restar', NULL, 12, '2011', 'P0p rock');
INSERT INTO cds VALUES (24, 'Renascer', 'Restart', '??', 9, '', 'Pop');
INSERT INTO cds VALUES (25, 'Millenial Rhapsody', 'Oliver Malcom', NULL, NULL, '20??', 'Alt Pop');

UPDATE cds banda SET banda = "sleep token" WHERE id =1;
UPDATE cds banda SET genero = "alternative" WHERE id =1;
UPDATE cds banda SET duracao = "2-56" WHERE id =2;
UPDATE cds banda SET ano_lancamento = "2020" WHERE id =3;
UPDATE cds banda SET banda = "linkin park" WHERE id =4;


delete from cds WHERE id =25