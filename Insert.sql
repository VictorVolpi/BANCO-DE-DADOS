USE bdLojadeRoupa

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES
	('Kaua de Souza',22)
	,('Diego Olegario',22)
	,('Ruthe Almeida',21)
	,('Rosangela Freire',45)
	,('Vanessa Lopes',43)
	SELECT * FROM tbCliente

INSERT INTO tbFabricante (nomeFabricante)
VALUES
	('Malwee')
	,('Marisol')
	,('Cia da Malha')
	SELECT * FROM tbFabricante

INSERT INTO tbVendedor (nomeVendedor) 
VALUES

	('João Santana')
	,('Raquel Torres')
	SELECT * FROM tbVendedor

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdimissao, salarioFuncionario)
VALUES
	('Victor Volpi', 21, '11/05/2022', 1200)
	,('Bruno Silva' , 22, '11/05/2022', 1200)
	SELECT * FROM tbFuncionario

INSERT INTO tbVenda (dataVenda , totalVenda  , idCliente, idVendedor) 
VALUES
		('15/08/2022',699.99,1,1)
		,('17/09/2022',449.99,2,1)
		,('19/10/2022',400,3,1)
		,('21/11/2022',364.84,4,2)
		,('23/12/2022',372.99,5,2)
	
	SELECT * FROM tbVenda

	INSERT INTO tbProduto (nomeProduto , preçoProduto  ,dataEntradaProduto, estoqueProduto, idFuncionario, idFabricante ) 
VALUES
	
	('Camisetas Nike',99.99,'02/07/2022',64,1,1)
	,('Tênis Nike',150,'05/07/2022',88,2,1)
	,('Blusa Nike',349,'08/07/2022',75,1,1)
	,('Camisetas Adidas',59.99,'02/07/2022',64,2,2)
	,('Tênis Adidas',120,'05/07/2022',88,1,2)
	,('Blusa Adidas',300,'08/07/2022',75,2,2)
	,('Camisetas Puma',99.99,'02/07/2022',64,1,3)
	,('Tênis Puma',150,'05/07/2022',88,2,3)
	,('Blusa Puma',349,'08/07/2022',75,1,3)

	SELECT * FROM tbProduto


	INSERT INTO tbItensVenda(quantidadeItens, subTotalItens,idVenda,idProduto ) 
VALUES

		(15,64,1,1)
		,(26,88,1,2)
		,(5,75,2,3)
		,(7,64,2,4)
		,(8,75,3,6)
		,(6,64,3,7)
		,(4,88,4,5)
		,(6,88,4,8)
		,(2,75,5,9)
		,(5,64,5,7)


	SELECT * FROM tbItensVenda



