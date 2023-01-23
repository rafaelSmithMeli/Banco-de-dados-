-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 

CREATE DATABASE Serviço_RH;

USE Serviço_RH;

-- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.


CREATE TABLE colaboradores(
id BIGINT  AUTO_INCREMENT,
nome varchar(30) NOT NULL,
cargo varchar(30) NOT NULL,
departamento varchar(30) NOT NULL,
salario double NOT NULL,
PRIMARY KEY(ID)
);
-- Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO colaboradores(nome,cargo,departamento,salario)
VALUES ("Luis","Desenvolvedor","IT",7000) ;

INSERT INTO colaboradores(nome,cargo,departamento,salario)
VALUES ("Maria","Talent Acquisition","RH",6000);

INSERT INTO colaboradores(nome,cargo,departamento,salario)
VALUES ("Marcos","Auxiliar de Serviços Gerais","Operacional",1500);

INSERT INTO colaboradores(nome,cargo,departamento,salario)
VALUES ("Luiza","Cozinheira","Operacional",1700);
INSERT INTO colaboradores(nome,cargo,departamento,salario)
VALUES ("Carlos","Contador","Financeiro",8000) ;

-- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM colaboradores WHERE salario > 200;

-- Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM colaboradores WHERE salario < 200;

-- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE colaboradores
SET departamento = "Patrimonial"
WHERE id = 3




