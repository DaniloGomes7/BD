CREATE DATABASE aula_pk_fk;
USE aula_pk_fk;

CREATE TABLE cursos(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome varchar(100) NOT NULL,
    descricao VARCHAR (100)
);

CREATE TABLE alunos(
	id_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    idade INT NOT NULL,
    email VARCHAR (100) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    id_curso INT,
    telefone VARCHAR(20),
    CONSTRAINT fk_alunos_curso FOREIGN KEY (id_curso) REFERENCES cursos (id_curso)
);

CREATE TABLE materias(
	materias_id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (100) NOT NULL,
    id_curso INT,
    professor VARCHAR(100),
    carga_horaria INT NOT NULL,
    CONSTRAINT fk_materias_curso FOREIGN KEY (id_curso) REFERENCES cursos (id_curso)
);

INSERT INTO 
	cursos (nome, descricao)
VALUES
	('Desenvolvimento de sistemas', 'curso voltado para desenvolvimento...'),
	('Administração', 'curso sobre adiministrar...'),
    ('Nutrição', 'curso sobre nutricao...');
    
SELECT * FROM cursos;

INSERT INTO 
	materias (nome, id_curso, professor, carga_horaria)
VALUES
	('Banco de dados II', 1, 'Cleiton', 60),
	('PW II', 2, 'Cleiton dias', 70),
    ('Design', 3, 'Paulo', 30);
    
SELECT * FROM materias;