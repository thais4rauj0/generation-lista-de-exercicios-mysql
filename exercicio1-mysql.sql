/*Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
*/

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

/*1. Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.*/
CREATE TABLE tb_classes(
	ID_CLASSE BIGINT AUTO_INCREMENT PRIMARY KEY,
    CLASSE VARCHAR(50),
    HABILIDADE VARCHAR(50),
    ARMA VARCHAR(50)
);

/*2. Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.*/
/*3. Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.*/
CREATE TABLE tb_personagens(
	ID_PERSONAGEM BIGINT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(50),
    HP INT,
    DEFESA INT,
    ATAQUE INT,
    GENERO CHAR,
    CLASSE BIGINT,
    FOREIGN KEY (CLASSE) REFERENCES tb_classes(ID_CLASSE)
);

/*4. Insira 5 registros na tabela tb_classes.*/
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Mago", "Bola de fogo", "Cajado");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Cavaleiro", "Derrubar inimigos", "Espada");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Arqueiro", "Flechas envenenadas", "Arco e flecha");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Druída", "Plantas Carnívoras", "Cajado");
INSERT INTO tb_classes (CLASSE, HABILIDADE, ARMA) VALUES ("Ladino", "Furtividade", "Besta");

/*5.Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira */
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("THAIS", 2500, 1500, 2100,"F", 1);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("MONNA", 1500, 3000, 1200,"F", 2);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("DUNDAN", 5000, 2000, 3000,"M", 4);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("BARTOLOMEU", 2000, 1000, 2500,"M", 3);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("GLAZE", 2200, 1100, 2800,"F", 5);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("WAVESPRING", 3500, 1500, 3000,"F", 1);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("SANDLAKE", 2500, 1500, 1100,"M", 3);
INSERT INTO tb_personagens (NOME, HP, DEFESA, ATAQUE, GENERO, CLASSE) VALUES ("LYNX", 2500, 1800, 3200,"F", 5);

/*6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.*/

SELECT * FROM tb_personagens WHERE ATAQUE > 2000;

/*7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.*/

SELECT * FROM tb_personagens WHERE ATAQUE > 1000 AND ATAQUE < 2000;

/*8. Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.*/

SELECT * FROM tb_personagens WHERE NOME LIKE "C%";

/*9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.*/

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.CLASSE = tb_classes.ID_CLASSE;

/*10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
 onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).*/

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.CLASSE = 3 AND tb_classes.ID_CLASSE=3;

/*11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/
 
 

