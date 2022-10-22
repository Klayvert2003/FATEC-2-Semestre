SELECT 
	p.id,
	p.descricao,
	(SELECT 
		COUNT(*) 
	 FROM 
	 	item i 
	 WHERE 
	 i.idproduto = p.id
	 ) as ocorrencias
FROM
	produto p 
WHERE
	p.id >= 3
AND p.id <= 3
	
-----------------------------------------------------------------------------------------------------------------------------------

SELECT 
	 p.id,
	 p.descricao,
	(SELECT 
		COUNT(*) 
	 FROM 
	 	item i 
	 WHERE 
	 i.idproduto = p.id) as Movimentação,
	 (SELECT
	 	SUM(quantidade)
	  FROM 
			item i
	  WHERE i.idproduto = p.id) AS QuantidadeVendida,
	  (SELECT
	 	SUM(precodevenda * quantidade)
	  FROM 
			item i
	  WHERE i.idproduto = p.id) AS TotalLiquido
FROM
	produto p 
WHERE
	p.id = 1
	
	
	
----------------------------------------------------------------------------------------------------------------------------------

SELECT 
	p.id,
	p.descricao,
	COUNT(i.idproduto) AS Movimentação,
	SUM(i.quantidade) AS Quantidade,
	SUM(i.quantidade * i.precounitario) AS TotalLiquido
FROM 
	produto p, item i
WHERE
	i.idproduto = p.id
GROUP BY
	1, 2

----------------------------------------------------------------------------------------------------------------------------------


SELECT Estadão.nome
FROM
	(SELECT 
	c.id,
	c.nome,
	c.municipio 
FROM 
	cliente c
WHERE
	c.estado = 'SP') AS Estadão
WHERE
	Estadão.municipio = 'ITAPIRA'
	
	
----------------------------------------------------------------------------------------------------------------------------------


SELECT 
	p.idcliente,
	p.datemissao,
	p.idformapagto,
	i.idproduto,
	i.quantidade,
	i.precounitario
FROM 
	pedido p, item i
WHERE 
	i.idpedido = p.id
	
	
----------------------------------------------------------------------------------------------------------------------------------

/*Sub-consulta que traz por nome de cliente*/

SELECT
	idcliente, 
	c.nome,
	SUM(quantidade * precounitario) AS TOTAL
FROM 
	(SELECT 
	p.idcliente,
	p.datemissao,
	p.idformapagto,
	i.idproduto,
	i.quantidade,
	i.precounitario 
FROM
	pedido p, item i
WHERE 
	i.idpedido = p.id) AS SEILA,
	cliente c
WHERE
	 c.id = SEILA.idcliente
GROUP BY 1



----------------------------------------------------------------------------------------------------------------------------------

/*Sub-consulta que traz por forma de pagamento*/

SELECT
	idcliente, 
	descricao,
	SUM(quantidade * precounitario) AS TOTAL
FROM 
	(SELECT 
	p.idcliente,
	p.datemissao,
	p.idformapagto,
	i.idproduto,
	i.quantidade,
	i.precounitario,
	f.descricao
FROM
	pedido p, item i, formapagto f
WHERE 
	i.idpedido = f.id) AS t,
	cliente c
WHERE
	c.id = t.idcliente
GROUP BY 
	2

SELECT * from formapagto



----------------------------------------------------------------------------------------------------------------------------------

/*Sub-consulta que traz por produto*/

SELECT
	idproduto, 
	p.descricao,
	SUM(quantidade * precounitario) AS TOTAL
FROM 
	(SELECT 
		p.idcliente,
		p.datemissao,
		p.idformapagto,
		i.idproduto,
		i.quantidade,
	
		i.precounitario
FROM
	pedido p, item i
WHERE 
	i.idpedido = p.id) AS t,
	produto p
WHERE
	p.id = t.idproduto
GROUP BY 
	1

SELECT * from produto

----------------------------------------------------------------------------------------------------------------------------------

/*Exemplo de CASE WHEN*/

SELECT
		nome,
		municipio,
	(CASE
		WHEN TIPO = 'J' THEN "Pessoa Jurídica"
		WHEN TIPO = 'F' THEN "Pessoa Física"
	END) AS TipoPessoa,
		idrepresentante
FROM 
	cliente
ORDER BY 4


