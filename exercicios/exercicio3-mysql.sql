/*Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar.
~ O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, 
que deverão estar relacionadas.*/

CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

/*1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.*/
CREATE TABLE tb_categorias(
	id_categorias BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(50),
	tipo_uso varchar(50)
);

/*2. Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.*/
/*3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.*/

 CREATE TABLE tb_produtos(
	id_produtos BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    un_medida CHAR(4),
    valor DECIMAL(9,2),
    empresa VARCHAR(50),
    quantidade DOUBLE,
    categoria BIGINT,
    FOREIGN KEY (categoria) REFERENCES tb_categorias(id_categorias)
);


/*4. Insira 5 registros na tabela tb_categorias.*/

INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Cosmético", "Adulto");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Remédio", "Adulto");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Cosmético", "Infantil");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Remédio", "Infantil");
INSERT INTO tb_categorias(categoria, tipo_uso) VALUES ("Alimento", "Todos os públicos");

/*5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/

INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Dipirona", "mg", 2.00, "EMS", 500.00, 2);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Protetor Solar", "g", 90.00, "La Roche-Posay", 50.00, 1);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Shampoo", "ml", 25.00, "Johnson's Baby", 400, 3);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Pomada", "g", 17.00, "Babymed", 45, 4);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Bala de gelatina", "g", 4.84, "Fini", 18, 5);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Pastilha Vitamina C", "un", 20.00, "Kley Hertz", 30, 5);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Analgésico", "un", 6.25, "Dorflex", 10, 1);
INSERT INTO tb_produtos(nome, un_medida, valor, empresa, quantidade, categoria) VALUES ("Suplemento de Ferro", "ml", 40.00, "Biotônico Fontoura", 400, 4);


/*6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.*/

SELECT * FROM tb_produtos WHERE valor > 50.00;

/*7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/

SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

/*8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.*/

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

/*9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria = tb_categorias.id_categorias;

/*10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, 
onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/

SELECT * FROM tb_produtos INNER JOIN tb_categorias WHERE tb_produtos.categoria= 1 AND tb_categorias.id_categorias = 1;

