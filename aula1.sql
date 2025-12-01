

CREATE DATABASE escola;
USE escola;
CREATE TABLE alunos (
id INT PRIMARY KEY AUTO_INCREMENT
);

DESCRIBE alunos;

ALTER TABLE alunos ADD COLUMN nome VARCHAR(50);
INSERT INTO alunos (nome) VALUES ('Pedrinho');
INSERT INTO alunos (nome) VALUE ('Aninha');
INSERT INTO alunos (nome) VALUE ('Mariazinha');
INSERT INTO alunos (nome) VALUE ('Clebinho');
INSERT INTO alunos (nome) VALUE ('Luiza');
INSERT INTO alunos (nome) VALUE ('Fabiana');
INSERT INTO alunos (nome) VALUE ('Thaiz');
INSERT INTO alunos (nome) VALUE ('Du dudu e edu');


SELECT nome FROM alunos ORDER BY nome;

ALTER TABLE alunos ADD COLUMN nota1 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota2 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota3 DOUBLE;

SHOW CREATE TABLE alunos;

select id from alunos where nome = "Pedrinho";

update alunos SET nota1= 9 where id = 1;
update alunos set nota2 = 8.5 where id = 1;
update alunos set nota3 = 6.5 where id = 1;

update alunos SET nota1 = 5, nota2 = 8, nota3 = 1.5 where id = 2;