USE bdEstoque1

--1
	SELECT  SUM (quantidadeProduto) AS  ' Produtos P&G '  FROM tbProduto
	WHERE idFabricante =  2

--2
	SELECT AVG(valorProduto) AS 'Pre�o m�dia Produto, P&G' FROM tbProduto
	WHERE idFabricante = 2

--3
	SELECT SUM (valorProduto) AS 'Pre�o total produto, Unilever' FROM tbProduto
	WHERE idFabricante = 1

--4
	SELECT AVG(valorProduto) AS 'Pre�o m�dia produto. Bunge' FROM tbProduto
	WHERE idFabricante = 3

--5
	SELECT SUM(quantidadeProduto) AS 'Produtos.,Bunge' FROM tbProduto
	WHERE idFabricante = 3

--6
	SELECT AVG(quantidadeProduto) AS 'M�dia estoque, produto, P&G' FROM tbProduto
	WHERE idFabricante = 2

--7
	SELECT AVG(valorProduto) AS 'Pre�o m�dia produto, menor que 200' FROM tbProduto
	WHERE quantidadeProduto < 200

--8
	SELECT AVG(quantidadeProduto) AS 'Estoque m�dia. produto. Unilever' FROM tbProduto
	WHERE idFabricante = 1

--9
	SELECT MIN(valorProduto) AS 'Produto, mais barato' FROM tbProduto

--10
	SELECT COUNT(DISTINCT idProduto) AS 'Total Unilever' FROM tbProduto
	WHERE idFabricante = 1