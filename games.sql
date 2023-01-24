CREATE DATABASE db_generation_game_online1;

USE db_generation_game_online1;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255) NOT NULL,
    estrelas INT NOT NULL
);

CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder INT NOT NULL,
    universo  VARCHAR(255) NOT NULL,
    fk_classes BIGINT NOT NULL,
	FOREIGN KEY (fk_classes) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(classe, estrelas)
VALUES("Esmeralda", 5);
INSERT INTO tb_classes(classe, estrelas)
VALUES("Diamante", 4);
INSERT INTO tb_classes(classe, estrelas)
VALUES("Ouro", 3);
INSERT INTO tb_classes(classe, estrelas)
VALUES("Prata", 2);
INSERT INTO tb_classes(classe, estrelas)
VALUES("Bronze", 1);

INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Fênix", 20, 4000,"Marvel" , 7);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Homem-Aranha", 5, 2100,"Marvel" , 4);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Ken", 2, 1100, "Capcom", 2);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("The Flash", 3, 2000, "DC", 7);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Super-Man", 25, 5000,"DC", 8);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Batman", 10, 2500, "DC", 5);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Homen-Formiga", 3, 1600, "Marvel", 3);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Chun-Li", 5, 2200, "Capcom", 5);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Enoc", 5, 2300, 4, 5);
INSERT INTO tb_personagens(nome, nivel, poder, universo, fk_classes)
VALUES("Victor", 3, 800, 2, 1);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens WHERE poder > 2000;
SELECT * FROM tb_personagens WHERE poder < 2000 AND poder > 1000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.fk_classes AND fk_classes = 3;
