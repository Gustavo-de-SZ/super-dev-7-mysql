CREATE DATABASE assistencia_tenica;
use assistencia_tenica;

CREATE TABLE pecas_reposicao(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50)
);
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

ALTER TABLE clientes ADD COLUMN email VARCHAR(50);

UPDATE clientes SET email = "ana.silva@gmail.com" WHERE id = 1;
UPDATE clientes SET email = "joao.santos@hotmail.com" WHERE id = 2;
UPDATE clientes SET email = "maria.oliveira@yahoo.com.br" WHERE id = 3;
UPDATE clientes SET email = "pedro.costa@gmail.com" WHERE id = 4;
UPDATE clientes SET email = "juliana.alves@outlook.com" WHERE id = 5;
UPDATE clientes SET email = "roberto.ferreira@gmail.com" WHERE id = 6;
UPDATE clientes SET email = "carla.souza@hotmail.com" WHERE id = 7;
UPDATE clientes SET email = "lucas.rodrigues@gmail.com" WHERE id = 8;
UPDATE clientes SET email = "fernanda.lima@yahoo.com.br" WHERE id = 9;
UPDATE clientes SET email = "marcos.pereira@outlook.com" WHERE id = 10;


SELECT * FROM clientes WHERE email LIKE "%@gmail.com%";
SELECT * FROM clientes WHERE email LIKE "%.com.br";

ALTER TABLE clientes ADD COLUMN cidade VARCHAR(50);

UPDATE clientes SET cidade = "São Paulo" WHERE id = 1;
UPDATE clientes SET cidade = "Rio de Janeiro" WHERE id = 2;
UPDATE clientes SET cidade = "Belo Horizonte" WHERE id = 3;
UPDATE clientes SET cidade = "Curitiba" WHERE id = 4;
UPDATE clientes SET cidade = "Porto Alegre" WHERE id = 5;
UPDATE clientes SET cidade = "Brasília" WHERE id = 6;
UPDATE clientes SET cidade = "Salvador" WHERE id = 7;
UPDATE clientes SET cidade = "Recife" WHERE id = 8;
UPDATE clientes SET cidade = "Belém" WHERE id = 9;
UPDATE clientes SET cidade = "São Paulo" WHERE id = 10;

SELECT * FROM clientes WHERE cidade = "São Paulo";

ALTER TABLE clientes ADD COLUMN data_cadastro DATE;

UPDATE clientes SET data_cadastro = "2024-11-15" WHERE id = 1;
UPDATE clientes SET data_cadastro = "2024-10-20" WHERE id = 2;
UPDATE clientes SET data_cadastro = "2024-09-10" WHERE id = 3;
UPDATE clientes SET data_cadastro = "2024-08-25" WHERE id = 4;
UPDATE clientes SET data_cadastro = "2024-07-30" WHERE id = 5;
UPDATE clientes SET data_cadastro = "2024-06-12" WHERE id = 6;
UPDATE clientes SET data_cadastro = "2024-05-18" WHERE id = 7;
UPDATE clientes SET data_cadastro = "2024-04-22" WHERE id = 8;
UPDATE clientes SET data_cadastro = "2024-03-14" WHERE id = 9;
UPDATE clientes SET data_cadastro = "2024-02-28" WHERE id = 10;

SELECT * FROM clientes WHERE MONTH(data_cadastro) = 11;
SELECT * FROM clientes WHERE data_cadastro BETWEEN "2024-03-01" AND "2024-06-30";
SELECT * FROM clientes ORDER BY data_cadastro DESC;
SELECT id, nome, YEAR(data_cadastro) AS ano FROM clientes;
SELECT id, nome, MONTH(data_cadastro) AS mes FROM clientes;
SELECT id, nome, DAY(data_cadastro) AS dia FROM clientes;
SELECT id, nome, DATE_FORMAT(data_cadastro, "%M") AS mes_extenso FROM clientes;
SELECT id, nome, DATE_FORMAT(data_cadastro, "%W") AS dia_semana FROM clientes;	

SELECT id, nome, DATE_FORMAT(data_cadastro, "%d/%m/%Y") AS data_formatada FROM clientes;
SELECT id, nome, DATEDIFF(CURDATE(), data_cadastro) AS dias_desde_cadastro FROM clientes;
SELECT * FROM clientes WHERE DATEDIFF(CURDATE(), data_cadastro) > 180;
SELECT * FROM clientes WHERE DATEDIFF(CURDATE(), data_cadastro) < 90;
SELECT id, nome, DATE_ADD(data_cadastro, INTERVAL 30 DAY) AS mais_30_dias FROM clientes;
SELECT id, nome, DATE_SUB(data_cadastro, INTERVAL 15 DAY) AS menos_15_dias FROM clientes;
SELECT * FROM clientes WHERE DAY(data_cadastro) % 2 = 0;
SELECT * FROM clientes WHERE DAY(data_cadastro) % 2 = 1;
SELECT id, nome, DATE_FORMAT(data_cadastro, "%M %Y") AS mes_ano FROM clientes;

ALTER TABLE clientes ADD COLUMN status VARCHAR(20);

UPDATE clientes SET status = "Ativo" WHERE id = 1;
UPDATE clientes SET status = "Ativo" WHERE id = 2;
UPDATE clientes SET status = "Pendente" WHERE id = 3;
UPDATE clientes SET status = "Ativo" WHERE id = 4;
UPDATE clientes SET status = "Inativo" WHERE id = 5;
UPDATE clientes SET status = "Ativo" WHERE id = 6;
UPDATE clientes SET status = "Ativo" WHERE id = 7;
UPDATE clientes SET status = "Pendente" WHERE id = 8;
UPDATE clientes SET status = "Ativo" WHERE id = 9;
UPDATE clientes SET status = "Inativo" WHERE id = 10;

SELECT * FROM clientes WHERE status = "Ativo";
SELECT * FROM clientes WHERE status NOT IN ("ativo");

ALTER TABLE clientes ADD COLUMN cpf VARCHAR(20);

UPDATE clientes SET cpf = "123.456.789-01" WHERE id = 1;
UPDATE clientes SET cpf = "234.567.890-12" WHERE id = 2;
UPDATE clientes SET cpf = "345.678.901-23" WHERE id = 3;
UPDATE clientes SET cpf = "456.789.012-34" WHERE id = 4;
UPDATE clientes SET cpf = "567.890.123-45" WHERE id = 5;
UPDATE clientes SET cpf = "678.901.234-56" WHERE id = 6;
UPDATE clientes SET cpf = "789.012.345-67" WHERE id = 7;
UPDATE clientes SET cpf = "890.123.456-78" WHERE id = 8;
UPDATE clientes SET cpf = "901.234.567-89" WHERE id = 9;
UPDATE clientes SET cpf = "012.345.678-90" WHERE id = 10;

SELECT * FROM clientes WHERE cpf LIKE "123%";
SELECT * FROM clientes WHERE cpf LIKE "%456%";

ALTER TABLE clientes ADD COLUMN total_gasto DECIMAL(10,2);

UPDATE clientes SET total_gasto = 1250.00 WHERE id = 1;
UPDATE clientes SET total_gasto = 890.50 WHERE id = 2;
UPDATE clientes SET total_gasto = 2340.00 WHERE id = 3;
UPDATE clientes SET total_gasto = 560.00 WHERE id = 4;
UPDATE clientes SET total_gasto = 3120.75 WHERE id = 5;
UPDATE clientes SET total_gasto = 780.00 WHERE id = 6;
UPDATE clientes SET total_gasto = 1890.00 WHERE id = 7;
UPDATE clientes SET total_gasto = 450.00 WHERE id = 8;
UPDATE clientes SET total_gasto = 2670.00 WHERE id = 9;
UPDATE clientes SET total_gasto = 1100.00 WHERE id = 10;

SELECT SUM(total_gasto) FROM clientes;
SELECT MIN(total_gasto) FROM clientes;
SELECT MAX(total_gasto) FROM clientes;
SELECT AVG(total_gasto) FROM clientes;
SELECT * FROM clientes WHERE total_gasto > 1000;
SELECT * FROM clientes WHERE total_gasto < 1000;
SELECT * FROM clientes ORDER BY total_gasto DESC;
SELECT * FROM clientes ORDER BY total_gasto DESC LIMIT 5;

ALTER TABLE clientes ADD COLUMN data_ultima_compra DATE;

UPDATE clientes SET data_ultima_compra = "2024-11-10" WHERE id = 1;
UPDATE clientes SET data_ultima_compra = "2024-11-15" WHERE id = 2;
UPDATE clientes SET data_ultima_compra = "2024-10-20" WHERE id = 3;
UPDATE clientes SET data_ultima_compra = "2024-09-05" WHERE id = 4;
UPDATE clientes SET data_ultima_compra = "2024-08-18" WHERE id = 5;
UPDATE clientes SET data_ultima_compra = "2024-07-22" WHERE id = 6;
UPDATE clientes SET data_ultima_compra = "2024-06-30" WHERE id = 7;
UPDATE clientes SET data_ultima_compra = "2024-05-12" WHERE id = 8;
UPDATE clientes SET data_ultima_compra = "2024-04-08" WHERE id = 9;
UPDATE clientes SET data_ultima_compra = "2024-03-25" WHERE id = 10;

SELECT * FROM clientes WHERE DATEDIFF(CURDATE(), data_ultima_compra) > 120;
SELECT * FROM clientes WHERE MONTH(data_ultima_compra) = MONTH(data_cadastro);
SELECT id, nome, DATEDIFF(data_ultima_compra, data_cadastro) AS diff_dias FROM clientes;
SELECT * FROM clientes WHERE YEAR(data_cadastro) = 2024;
SELECT * FROM clientes WHERE MONTH(data_cadastro) BETWEEN 1 AND 6;
SELECT * FROM clientes WHERE MONTH(data_cadastro) BETWEEN 7 AND 12;
SELECT id, nome, DATE_FORMAT(data_ultima_compra, "%d de %M de %Y") AS formatada FROM clientes;
SELECT * FROM clientes WHERE MONTH(data_ultima_compra) = MONTH(CURDATE());
SELECT id, nome, (DATEDIFF(data_ultima_compra, data_cadastro)) AS diferenca FROM clientes ORDER BY diferenca DESC;
SELECT id, nome, QUARTER(data_cadastro) AS trimestre FROM clientes;
SELECT * FROM clientes WHERE QUARTER(data_cadastro) = QUARTER(CURDATE());

UPDATE clientes SET data_ultima_compra = NULL WHERE id = 10;

SELECT * FROM clientes WHERE data_ultima_compra IS NULL;

SELECT id, nome, WEEK(data_cadastro) AS semana FROM clientes;
SELECT * FROM clientes WHERE nome LIKE "%e%";
SELECT * FROM clientes WHERE email LIKE "%gmail%" OR email LIKE "%hotmail%";
UPDATE clientes SET status = "Inativo" WHERE total_gasto = 0;
SELECT * FROM clientes ORDER BY cidade, total_gasto DESC;
SELECT id, nome, DAYOFYEAR(data_cadastro) AS dia_ano FROM clientes;
SELECT * FROM clientes WHERE DAYOFWEEK(data_cadastro) IN (1,7);
SELECT id, nome, DATE_FORMAT(data_cadastro, "%Y-%m") AS ano_mes FROM clientes;
SELECT id, nome, DATE_ADD(data_cadastro, INTERVAL 1 YEAR) AS aniversario FROM clientes;
SELECT * FROM clientes WHERE YEAR(data_ultima_compra) != YEAR(data_cadastro);
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
SELECT id, nome, telefone, email, cidade, data_cadastro, status, cpf, total_gasto, data_ultima_compra FROM clientes ORDER BY data_cadastro;

INSERT INTO clientes (nome, telefone, email, cidade, data_cadastro, status, cpf, total_gasto, data_ultima_compra) VALUES ("Carlos Alberto Mendes", "(85) 99123-4567", "carlos.mendes@email.com", "Fortaleza", "2024-12-01", "Ativo", "987.654.321-00", 1500.00, "2024-12-15");

SELECT id, nome, LAST_DAY(data_cadastro) AS ultimo_dia FROM clientes;
SELECT id, nome, UNIX_TIMESTAMP(data_cadastro) AS timestamp FROM clientes;
SELECT id, nome, TIMESTAMPDIFF(MONTH, data_cadastro, CURDATE()) AS meses_desde_cadastro FROM clientes;
SELECT * FROM clientes WHERE MONTH(data_cadastro) IN (1,3,5,7,8,10,12);
SELECT id, nome, TIMESTAMPDIFF(YEAR, data_cadastro, CURDATE()) AS idade_anos FROM clientes;
SELECT id, nome, DATE_ADD(data_cadastro, INTERVAL 6 MONTH) AS mais_6_meses FROM clientes;
SELECT * FROM clientes WHERE DATEDIFF(data_ultima_compra, data_cadastro) < 30;
SELECT id, nome, DATE_FORMAT(data_cadastro, "%W, %d/%m/%Y") AS data_completa FROM clientes;
select * from clientes;





























