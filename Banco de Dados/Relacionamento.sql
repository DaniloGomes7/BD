CREATE DATABASE relacionamento;

USE relacionamento;

CREATE TABLE cursos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250)
);

CREATE TABLE alunos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (250),
    curso INT, 
    salario DOUBLE,
    idade INT,
    FOREIGN KEY (curso) REFERENCES cursos(id)
);

INSERT INTO cursos (nome) VALUES ('PW2'), ('PTCC'), ('SE');

INSERT INTO alunos (nome, curso, salario, idade) VALUES 
('Joao Pedro' , 1 , 300.00, 20 ),
('Fabricio' , 3, 1100.00, 19 ),
('Julio da Gaita' , 2 , 10.00, 59 ),
('Hiana de Andrade' , 2 , 9900.00, 30 );

SELECT
	alunos.id AS alunoID,
    alunos.nome AS alunoNome,
    cursos.nome AS cursoNome,
    alunos.salario,
    alunos.idade
    
FROM
	alunos

JOIN
	cursos ON alunos.curso = cursos.id;
    