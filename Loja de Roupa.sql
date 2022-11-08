CREATE DATABASE bdLojadeRoupa

GO

USE bdLojadeRoupa

CREATE TABLE tbCliente(
idCliente INT PRIMARY KEY IDENTITY(1,1)
,nomeCliente VARCHAR(30) NOT NULL
,idadeCliente SMALLINT NOT NULL
)

CREATE TABLE tbFabricante(
idFabricante INT PRIMARY KEY IDENTITY(1,1)
,nomeFabricante VARCHAR (30) NOT NULL
)

CREATE TABLE tbVendedor(
idVendedor INT PRIMARY KEY IDENTITY(1,1)
,nomeVendedor  VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario(
idFuncionario INT PRIMARY KEY IDENTITY(1,1)
,nomeFuncionario VARCHAR (30) NOT NULL
,idadeFuncionario SMALLINT NOT NULL
,dataAdimissao SMALLDATETIME NOT NULL
,salarioFuncionario SMALLMONEY NOT NULL
)

CREATE TABLE tbVenda(
idVenda INT PRIMARY KEY IDENTITY(1,1)
,dataVenda SMALLDATETIME NOT NULL
,totalVenda SMALLMONEY NOT NULL
,idCliente INT FOREIGN KEY REFERENCES tbCliente(idCliente)
,idVendedor INT FOREIGN KEY REFERENCES tbVendedor(idVendedor)
)

CREATE TABLE tbProduto(
idProduto INT PRIMARY KEY IDENTITY(1,1)
,nomeProduto VARCHAR(30) NOT NULL
,preçoProduto SMALLMONEY NOT NULL
,dataEntradaProduto SMALLDATETIME NOT NULL
,estoqueProduto INT NOT  NULL
,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
,idFabricante INT FOREIGN KEY REFERENCES tbFabricante(idFabricante)
)

CREATE TABLE tbItensVenda(
idItensVenda INT PRIMARY KEY IDENTITY(1,1)
,idVenda INT FOREIGN KEY REFERENCES tbVenda(idVenda)
,idProduto INT FOREIGN KEY REFERENCES tbProduto(idProduto)
,quantidadeItens SMALLINT NOT NULL
,subTotalItens  SMALLINT NOT NULL
)