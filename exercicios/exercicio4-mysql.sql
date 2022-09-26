/*Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. 
O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_dos_vegetais.
 O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
 O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/
 
 CREATE DATABASE db_cidade_dos_vegetais;
 
 USE db_cidade_dos_vegetais;
 
 /*1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/
 
 CREATE TABLE tb_categorias(
	id_categorias BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR (50),
    tipo VARCHAR(50)
 );
 
 /*2. Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.*/
 /*3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.*/
 CREATE TABLE tb_produtos(
	id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
	valor DECIMAL(9,2),
    un_medida CHAR (2),
    quantidade FLOAT,
    categoria BIGINT,
    FOREIGN KEY (categoria) REFERENCES tb_categorias(id_categorias)
 );
 
 /*4. Insira 5 registros na tabela tb_categorias.*/
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Frutas","orgânicas");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Frutas","convencionais");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Vegetais","orgânicas");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Vegetais","convencionais");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Verduras","orgânicas");
 INSERT INTO tb_categorias(categoria, tipo) VALUES("Verduras","convencionais");
 
 /*5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Cenoura", 5.00, "KG", 1,3);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Couve", 50, "MÇ", 15, 6);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Maça", 100, "UN", 50, 2);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Uva", 250, "CX", 20, 1);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Alface", 100, "MÇ", 85, 5);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Berinjela", 30, "UN", 10, 3);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Melancia", 600, "KG", 250, 2);
 INSERT INTO tb_produtos(nome, valor, un_medida, quantidade, categoria) VALUES ("Salsinha", 50,"MÇ", 25, 5);
 
 /*6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.*/
 
 SELECT * FROM tb_produtos WHERE valor > 50.00;
 
 /*7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.*/
 
SELECT * FROM tb_produtos WHERE valor BETWEEN 50 AND 150;

/*8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.*/

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

/*9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria = tb_categorias.id_categorias;

/*10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria = 2 AND tb_categorias.id_categorias =2;