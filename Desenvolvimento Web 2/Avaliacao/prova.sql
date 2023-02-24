CREATE DATABASE prova

USE PROVA

CREATE TABLE pessoa(
	nome VARCHAR(30),
	sobrenome VARCHAR(30),
	cpf VARCHAR(12) PRIMARY KEY
);

DROP TABLE pessoa

CREATE TABLE registro(
	login VARCHAR(30),
	senha VARCHAR(30) PRIMARY KEY
);

INSERT INTO registro VALUES('fatec', 'araras')

DROP TABLE registro

SELECT * FROM registro


USE prova
