CREATE DATABASE assistencia_tenica;
USE assistencia_tenica;
CREATE TABLE pecas_reposicao(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30)
);
DESCRIBE pecas_reposicao;

INSERT INTO pecas_reposicao (nome) VALUE ("RTX 5090");
INSERT INTO pecas_reposicao (nome) VALUE ("RTX 4090");
INSERT INTO pecas_reposicao (nome) VALUE ("RTX 2060");
INSERT INTO pecas_reposicao (nome) VALUE ("RTX 3060");
INSERT INTO pecas_reposicao (nome) VALUE ("GTX 1080 TI");
INSERT INTO pecas_reposicao (nome) VALUE ("I7");
INSERT INTO pecas_reposicao (nome) VALUE ("I5");
INSERT INTO pecas_reposicao (nome) VALUE ("I9");
INSERT INTO pecas_reposicao (nome) VALUE ("I3");
INSERT INTO pecas_reposicao (nome) VALUE ("Memória ram 16gb");
INSERT INTO pecas_reposicao (nome) VALUE ("HD");
INSERT INTO pecas_reposicao (nome) VALUE ("placa video");
INSERT INTO pecas_reposicao (nome) VALUE ("SSD");



SELECT nome FROM pecas_reposicao ORDER BY nome;
SELECT id, nome, tipo FROM pecas_reposicao;
SELECT id, nome FROM pecas_reposicao ORDER BY nome ASC;
SELECT id, nome FROM pecas_reposicao ORDER BY nome DESC;
SELECT id, nome FROM pecas_reposicao LIMIT 5;
SELECT id, nome FROM pecas_reposicao WHERE ID > 3;
SELECT * FROM pecas_reposicao WHERE nome LIKE "Memória%";
SELECT * FROM pecas_reposicao WHERE nome LIKE "%HD";
SELECT * FROM pecas_reposicao WHERE nome LIKE "%Placa%";
SELECT id, nome FROM pecas_reposicao WHERE ID > 3;
SELECT id, nome FROM pecas_reposicao WHERE id BETWEEN 2 AND 7;
SELECT COUNT(id) from pecas_reposicao;
SELECT * FROM pecas_reposicao WHERE nome LIKE "%SSD%" OR nome LIKE "%HD%";
SELECT nome FROM pecas_reposicao;
SELECT id, nome FROM pecas_reposicao WHERE length(nome) > 10;
SELECT UPPER(nome) FROM pecas_reposicao;
SELECT REPLACE(nome, " ", "-") FROM pecas_reposicao;
SELECT SUBSTRING(nome, 1, 3) FROM pecas_reposicao;
SELECT * FROM pecas_reposicao WHERE nome NOT LIKE "%Placa%";
SELECT LOWER(nome) FROM pecas_reposicao;
SELECT id, nome FROM pecas_reposicao WHERE ID != 5;
SELECT id, nome FROM pecas_reposicao ORDER BY LENGTH(nome);

ALTER TABLE pecas_reposicao ADD COLUMN tipo VARCHAR(30);

UPDATE pecas_reposicao SET tipo = "Placa" WHERE id = 1;
UPDATE pecas_reposicao SET tipo = "Placa" WHERE id = 2;
UPDATE pecas_reposicao SET tipo = "CPU" WHERE id = 7;
UPDATE pecas_reposicao SET tipo = "RAM" WHERE id = 11;
UPDATE pecas_reposicao SET tipo = "SSD" WHERE id = 15;
UPDATE pecas_reposicao SET tipo = "HD" WHERE id = 13;
SELECT id, nome, tipo FROM pecas_reposicao;

ALTER TABLE pecas_reposicao ADD COLUMN quantidade INT;
UPDATE pecas_reposicao SET quantidade = 10 WHERE id > 1 AND ID < 17;

SELECT id, nome, tipo, quantidade FROM pecas_reposicao;
SELECT id, nome, tipo, quantidade FROM pecas_reposicao WHERE quantidade > 10;

UPDATE pecas_reposicao SET quantidade = 5 WHERE id = 1;
UPDATE pecas_reposicao SET quantidade = 20 WHERE id = 2;
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 3;
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 4;
UPDATE pecas_reposicao SET quantidade = 24 WHERE id = 5;
UPDATE pecas_reposicao SET quantidade = 39 WHERE id = 6;
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 7;
UPDATE pecas_reposicao SET quantidade = 34 WHERE id = 8;
UPDATE pecas_reposicao SET quantidade = 12 WHERE id = 9;
UPDATE pecas_reposicao SET quantidade = 0 WHERE id = 10;
UPDATE pecas_reposicao SET quantidade = 1 WHERE id = 11;
SELECT id, nome, tipo, quantidade FROM pecas_reposicao;

SELECT * FROM pecas_reposicao WHERE nome LIKE "%e%";
SELECT * FROM pecas_reposicao WHERE nome LIKE "%a%";

ALTER TABLE pecas_reposicao ADD COLUMN preco FLOAT;
UPDATE pecas_reposicao SET preco = 13.39 WHERE id = 1;
UPDATE pecas_reposicao SET preco = 24.99 WHERE id = 2;
UPDATE pecas_reposicao SET preco = 12.99 WHERE id = 3;
UPDATE pecas_reposicao SET preco = 19.39 WHERE id = 4;
UPDATE pecas_reposicao SET preco = 29.39 WHERE id = 5;
UPDATE pecas_reposicao SET preco = 39.39 WHERE id = 6;
UPDATE pecas_reposicao SET preco = 49.39 WHERE id = 7;
UPDATE pecas_reposicao SET preco = 59.39 WHERE id = 8;
UPDATE pecas_reposicao SET preco = 69.39 WHERE id = 9;
UPDATE pecas_reposicao SET preco = 79.39 WHERE id = 10;
UPDATE pecas_reposicao SET preco = 19.39 WHERE id = 11;
SELECT id, nome, tipo, quantidade, preco FROM pecas_reposicao;
SELECT SUM(preco) FROM pecas_reposicao;
SELECT SUM(preco) FROM pecas_reposicao WHERE tipo = "placa";
SELECT SUM(preco) FROM pecas_reposicao WHERE tipo = "CPU";
SELECT SUM(preco) FROM pecas_reposicao WHERE tipo = "RAM";
SELECT SUM(preco) FROM pecas_reposicao WHERE tipo = "SSD";
SELECT SUM(preco) FROM pecas_reposicao WHERE tipo = "HD";
SELECT MIN(preco) FROM pecas_reposicao;
SELECT MAX(preco) FROM pecas_reposicao;
SELECT AVG(preco) FROM pecas_reposicao;

ALTER TABLE pecas_reposicao ADD COLUMN data_pedido DATE;
 
INSERT INTO pecas_reposicao (nome, tipo, quantidade, preco, data_pedido) VALUE ("Intel core i7", "processador", 10, 19.99, '2023-01-01');
SELECT id, nome, tipo, quantidade, preco, data_pedido FROM pecas_reposicao;

UPDATE pecas_reposicao SET data_pedido = '2025-11-01' WHERE id = 1;
UPDATE pecas_reposicao SET data_pedido = '2025-10-28' WHERE id = 2;
UPDATE pecas_reposicao SET data_pedido = '2025-09-15' WHERE id = 3;
UPDATE pecas_reposicao SET data_pedido = '2025-08-22' WHERE id = 4;
UPDATE pecas_reposicao SET data_pedido = '2025-07-29' WHERE id = 5;
UPDATE pecas_reposicao SET data_pedido = '2025-06-06' WHERE id = 6;
UPDATE pecas_reposicao SET data_pedido = '2025-05-04' WHERE id = 7;
UPDATE pecas_reposicao SET data_pedido = '2025-04-05' WHERE id = 8;
UPDATE pecas_reposicao SET data_pedido = '2025-07-03' WHERE id = 9;
UPDATE pecas_reposicao SET data_pedido = '2025-02-04' WHERE id = 10;
UPDATE pecas_reposicao SET data_pedido = '2025-01-07' WHERE id = 11;

SELECT id, nome, tipo, quantidade, preco, data_pedido FROM pecas_reposicao ORDER BY preco DESC;

CREATE TABLE clientes(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50)
);

INSERT INTO clientes (nome) VALUE ("Ana Paula Silva");
INSERT INTO clientes (nome) VALUE ("João Carlos Santos");
INSERT INTO clientes (nome) VALUE ("Maria Oliveira");
INSERT INTO clientes (nome) VALUE ("Pedro Henrique Costa");
INSERT INTO clientes (nome) VALUE ("Juliana Alves");
INSERT INTO clientes (nome) VALUE ("Roberto Ferreira");
INSERT INTO clientes (nome) VALUE ("Carla Souza");
INSERT INTO clientes (nome) VALUE ("Lucas Rodrigues");
INSERT INTO clientes (nome) VALUE ("Fernanda Lima");
INSERT INTO clientes (nome) VALUE ("Marcos Antônio Pereira");

SELECT id, nome FROM clientes;
SELECT id, nome FROM clientes ORDER BY nome ASC;
SELECT id, nome FROM clientes ORDER BY nome DESC;
SELECT id, nome FROM clientes LIMIT 3;
SELECT id, nome FROM clientes WHERE id > 5;
SELECT * FROM clientes WHERE nome LIKE "A%";
SELECT * FROM clientes WHERE nome LIKE "%a";
SELECT * FROM clientes WHERE nome LIKE "%Silva%";
SELECT id, nome FROM clientes WHERE id > 2 AND id < 9;
SELECT COUNT(id) FROM clientes;
SELECT * FROM clientes WHERE nome LIKE "%Maria%" OR nome LIKE "%João%";
SELECT nome FROM clientes;
SELECT id, nome FROM clientes WHERE LENGTH(nome) < 15;
SELECT UPPER(nome) FROM clientes;
SELECT REPLACE(nome, " ", "_") FROM clientes;
SELECT SUBSTRING(nome, 1, 5) FROM clientes;
SELECT nome FROM clientes WHERE nome LIKE "%Santos%";
SELECT LOWER(nome) FROM clientes;

ALTER TABLE clientes ADD COLUMN telefone VARCHAR(20);
UPDATE clientes SET telefone = ("(11) 98765-4321") where id = 1;
UPDATE clientes SET telefone = ("(21) 91234-5678") where id = 2;
UPDATE clientes SET telefone = ("(31) 98765-4321") where id = 3;
UPDATE clientes SET telefone = ("(41) 98765-4321") where id = 4;
UPDATE clientes SET telefone = ("(51) 98765-4321") where id = 5;
UPDATE clientes SET telefone = ("(61) 98765-4321") where id = 6;
UPDATE clientes SET telefone = ("(71) 98765-4321") where id = 7;
UPDATE clientes SET telefone = ("(81) 98765-4321") where id = 8;
UPDATE clientes SET telefone = ("(91) 98765-4321") where id = 9;
 
SELECT * FROM clientes WHERE telefone LIKE "(11)%";
SELECT * FROM clientes WHERE telefone LIKE "%9876%";



























