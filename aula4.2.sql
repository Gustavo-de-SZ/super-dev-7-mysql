CREATE DATABASE localizacao;
USE localizacao;

CREATE TABLE estado(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(50)
);

INSERT INTO estado (nome, sigla) VALUES ('sao paulo', 'SP');
INSERT INTO estado (nome, sigla) VALUES ('santa catarina', 'SC');

CREATE TABLE cidade(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    id_estado INT,
    FOREIGN KEY(id_estado) REFERENCES estado(id)
);

INSERT INTO cidade (nome, id_estado) VALUES ('sao paulo cidade', 1);
INSERT INTO cidade (nome, id_estado) VALUES ('blumenau', 1);
INSERT INTO cidade (nome, id_estado) VALUES ('real madrid', 2);
INSERT INTO cidade (nome, id_estado) VALUES ('abacaxi', 2);

CREATE TABLE bairro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    id_cidade INT,
    FOREIGN KEY(id_cidade) REFERENCES cidade(id)
);

INSERT INTO bairro (nome, id_cidade) VALUES ('gasparinho', 1);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 1);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 2);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 2);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 3);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 3);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 4);
INSERT INTO bairro (nome, id_cidade) VALUES ('catalunha', 4);

CREATE TABLE endereco(
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero INT,
    logradouro VARCHAR(50),
    complemento VARCHAR(50),
    id_bairro INT,
    FOREIGN KEY(id_bairro) REFERENCES bairro(id)
);

INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (1, 'rua 1', 'rua mt foda', 1);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (12, 'rua 2', 'rua mt legal', 2);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (13, 'rua 3', 'rua mt pica', 3);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (14, 'rua rua 5', 'rua mt massa', 4);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (15, 'rua rua 6', 'rua mt sinistra', 5);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (16, 'rua rua 7', 'rua mt tensa', 6);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (17, 'rua rua 8', 'rua mt rua', 7);
INSERT INTO endereco (numero, logradouro, complemento, id_bairro) VALUES (18, 'rua rua 9', 'rua mt', 8);



SELECT cidade.id,
       cidade.nome,
       estado.nome AS nome_estado,
       estado.sigla
FROM cidade
INNER JOIN estado
ON cidade.id_estado = estado.id;



SELECT bairro.id,
       bairro.nome,
       cidade.nome AS nome_cidade,
       estado.nome AS nome_estado,
       estado.sigla
FROM bairro
INNER JOIN cidade
ON bairro.id_cidade = cidade.id
INNER JOIN estado
ON cidade.id_estado = estado.id;



SELECT endereco.id,
       endereco.numero,
       endereco.logradouro,
       endereco.complemento,
       bairro.nome AS nome_bairro,
       cidade.nome AS nome_cidade,
       estado.nome AS nome_estado,
       estado.sigla
FROM endereco
INNER JOIN bairro
ON endereco.id_bairro = bairro.id
INNER JOIN cidade
ON bairro.id_cidade = cidade.id
INNER JOIN estado
ON cidade.id_estado = estado.id;


