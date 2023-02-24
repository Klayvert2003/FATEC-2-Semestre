DELIMITER $$
CREATE OR REPLACE FUNCTION hello(texto CHAR(20), texto2 CHAR(20)) RETURNS CHAR(50)
BEGIN
	RETURN CONCAT('Hello', texto, texto2);
END $$
DELIMITER ;

SELECT hello(' Fernando', ' Maldotado');


DELIMITER $$
CREATE OR REPLACE FUNCTION soma(n1 FLOAT, n2 FLOAT) RETURNS FLOAT
BEGIN
	DECLARE resultado FLOAT;
	
	SET resultado = n1 + n2;
	
	RETURN resultado;
	
END $$
DELIMITER ;

SELECT soma(35, 35);


DELIMITER $$
CREATE OR REPLACE FUNCTION MEDIA(n1 FLOAT, n2 FLOAT, n3 FLOAT) RETURNS FLOAT
BEGIN
	DECLARE resultado FLOAT;
	
	SET resultado = (n1 + n2 + n3) / 3;
	
	RETURN resultado;
	
END $$
DELIMITER ;


SELECT MEDIA(7, 7, 10);

DELIMITER $$
CREATE OR REPLACE FUNCTION maior_salario(ncargo VARCHAR(40)) RETURNS FLOAT
BEGIN
	DECLARE resultado FLOAT;
	
	SET resultado = (n1 + n2 + n3) / 3;
	
	RETURN resultado;
END $$
DELIMITER ;


SELECT maior_salario('ENGENHEIRO');


DELIMITER $$
CREATE OR REPLACE FUNCTION calc_icms(icms FLOAT, valor FLOAT) RETURNS FLOAT
BEGIN
	DECLARE resultado FLOAT;
	
	SET resultado = valor * icms / 100;
	
	RETURN resultado;
END $$
DELIMITER ;


SELECT calc_icms(18, 1000);


DELIMITER $$
CREATE OR REPLACE FUNCTION calc_nf(idpedido INT) RETURNS FLOAT
BEGIN
	DECLARE totalpedido FLOAT;
	DECLARE totalnf FLOAT; 
	DECLARE valoricms FLOAT;
	
	SELECT SUM(i.quantidade * i.precounitario) AS ValorTotal
	FROM item i
	WHERE i.idpedido = idpedido
	INTO totalpedido;
	
	SET valoricms = (SELECT calc_icms(18, totalpedido));
	
	SET totalnf = totalpedido + valoricms;
	
	RETURN totalnf;
END $$
DELIMITER ;

SELECT calc_nf(5)


DELIMITER $$
CREATE OR REPLACE FUNCTION hello2(s CHAR(20)) RETURNS CHAR(50)
BEGIN
	DECLARE mensagem VARCHAR(30);
	SET mensagem = CONCAT('Hello ', s, ' !');
	IF CURTIME() > "18:00:00"
		THEN SET mensagem = CONCAT(mensagem, ' Boa noite ');
		ELSE SET mensagem = CONCAT(mensagem, ' Bom dia ');
		END IF;
	RETURN mensagem;
END $$
DELIMITER ;

SELECT hello2('BEGUE TÉLA');



CREATE TABLE pedidoparcelas(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	idpedido INT NOT NULL, 
	numparcela INT DEFAULT NULL,
	datemissao DATE NOT NULL,
	datapagto DATE DEFAULT NULL,
	valorparcela DECIMAL(10,2) NOT NULL,
	valorpago DECIMAL(10,2) NOT NULL,
	FOREIGN KEY(idpedido) REFERENCES pedido(id)
);

DROP TABLE pedidoparcelas

INSERT INTO pedidoparcelas(idpedido, datemissao, valorparcela, valorpago) (SELECT id, datemissao, id*100, 0 FROM pedido)