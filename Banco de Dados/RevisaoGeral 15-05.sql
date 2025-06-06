CREATE DATABASE BD2;

USE BD2;

CREATE TABLE TB1505_Prod_Cur_ETEC(
id INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(200),
nome_fornecedor VARCHAR (200),
quantidade INT,
valor_unitario DECIMAL(10,2)
);

ALTER TABLE TB1505_Prod_Cur_ETEC ADD produto_perecivel BOOLEAN;

ALTER TABLE TB1505_Prod_Cur_ETEC ADD valido BOOLEAN;

ALTER TABLE TB1505_Prod_Cur_ETEC DROP valido;

SELECT * FROM TB1505_Prod_Cur_ETEC; 

ALTER TABLE TB1505_Prod_Cur_ETEC DROP produto_perecivel;

ALTER TABLE TB1505_Prod_Cur_ETEC ADD codigoBarra VARCHAR (200);

CREATE TABLE TB1505_Forn_Cur_ETEC(
id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
cnpj VARCHAR(15),
nome VARCHAR(100),
descricao VARCHAR(200),
id_produto INT,
FOREIGN KEY (id_produto) REFERENCES TB1505_Prod_Cur_ETEC(id)
);

SELECT * FROM TB1505_Forn_Cur_ETEC;

INSERT INTO TB1505_Prod_Cur_ETEC(nome_produto, nome_fornecedor, quantidade, valor_unitario,codigoBarra) VALUE
('Faca', 'Tramontina', 10 , '10010','121903773097320932'),
('Garrafa', 'crystal', 13 , '20020','958649553397320932'),
('Faca', 'Tramontina', 10 , '30030','323424456898997867');

INSERT INTO TB1505_Forn_Cur_ETEC(cnpj, nome, descricao, id_produto) VALUE
('1209821038213', 'danPASS', 'HIDROLAPACIBACIA...' , '1'),
('120971421421', 'davilanches', 'Lanches de carne...' , '2'),
('2139721021', 'passosGUIA', 'passeios de cao..' , '3');

