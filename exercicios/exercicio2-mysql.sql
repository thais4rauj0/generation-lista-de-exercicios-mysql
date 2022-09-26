/* Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal.
 O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas 
 e tb_categorias, que deverão estar relacionadas.
*/

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

/*1. Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.*/
CREATE TABLE tb_categorias(
	ID_CATEGORIAS BIGINT AUTO_INCREMENT PRIMARY KEY,
    CATEGORIA VARCHAR(50),
    TAMANHO INT
);

/*2. Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.*/
/*3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.*/

 CREATE TABLE tb_pizzas(
	ID_PIZZA BIGINT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(50),
    VALOR DECIMAL(9,2),
    BORDA VARCHAR(50),
    DESCRICAO VARCHAR (100),
    ADICIONAL VARCHAR(100),
    CATEGORIA BIGINT,
    FOREIGN KEY (CATEGORIA) REFERENCES tb_categorias(ID_CATEGORIAS)
);

/*4. Insira 5 registros na tabela tb_categorias.*/

INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Broto", 4);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Esfiha", 1);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Beirute", 4);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Calzone", 2);
INSERT INTO tb_categorias(CATEGORIA, TAMANHO) VALUES ("Pizza Grande", 8);

/*5. Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.*/

INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Calabresa", 45.00, "Recheada com Catupiry", "Calabresa com cebola, azeitonas e molho de tomate", "Sem adicional", 5);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Mussarela", 55.00, "Comum", "Mussarela, azeitonas e catupiry", "Sem adicional", 4);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Baiana", 25.00, "Recheada com Cheddar", "Mussarela, azeitonas, milho, presunto, catupiry e pimenta", "Sem adicional", 1);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Frango com Catupiry", 65.00, "Recheada com Catupiry", "Frango, catupiry e azeitonas", "Adicionar Catupiry", 2);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Nuttela com banana", 50.00, "Recheada com Nutella", "Nutella e banana", "Adicionar morango", 4);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Vegana", 35.00, "Comum", "Alface, milho, ervilha, tomates, brocólis e cebola", "Adicionar aspargos", 3);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Portuguesa", 75.00, "Recheada com Cheddar", "Presunto, mussarela, ovo, ervilha, milho, cebola e catupiry", "Adicionar azeitonas", 5);
INSERT INTO tb_pizzas(NOME, VALOR, BORDA, DESCRICAO, ADICIONAL, CATEGORIA) 
VALUES ("Camarao", 120.00, "Recheada com Catupiry", "Camarão, mussarela, cebola e azeitona", "Sem adicional", 5);


/*6. Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.*/

SELECT * FROM tb_pizzas WHERE VALOR > 45.00;

/*7. Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.*/

SELECT * FROM tb_pizzas WHERE VALOR BETWEEN 50.00 AND 100.00;

/*8. Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.*/

SELECT * FROM tb_pizzas WHERE NOME LIKE "%M%";

/*9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.*/

SELECT * FROM tb_pizzas INNER JOIN tb_categorias WHERE tb_pizzas.CATEGORIA = tb_categorias.ID_CATEGORIAS;

/*10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, 
onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/

SELECT * FROM tb_pizzas INNER JOIN tb_categorias WHERE tb_pizzas.CATEGORIA = 5 AND tb_categorias.ID_CATEGORIAS = 5;

