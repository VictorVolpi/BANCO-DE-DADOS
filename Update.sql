USE bdLojadeRoupa


UPDATE tbFabricante 
SET nomeFabricante = 'Turma da Malha'
WHERE nomeFabricante = 'Cia da Malha'
	SELECT * FROM tbFabricante 


UPDATE tbVenda
SET totalVenda = totalVenda*0.90
WHERE idCliente = 1 
	SELECT * FROM tbVenda


UPDATE tbProduto
SET preçoProduto = preçoProduto*1.20
WHERE idFabricante = 2
	SELECT * FROM tbProduto 

UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE idProduto = 3
	SELECT * FROM tbProduto 


DELETE FROM tbItensVenda
WHERE idVenda = 3
	SELECT * FROM tbItensVenda


DELETE tbFabricante
WHERE idFabricante = 1
	SELECT * FROM tbFabricante

/* Erro: Não exclui o fabricante Malwee por ele fazer referencia a uma tabela de produto.
	

