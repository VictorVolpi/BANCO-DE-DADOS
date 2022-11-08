drop database bdFacul

CREATE DATABASE bdLoja
go
USE bdLoja

CREATE TABLE tbFabricante (

idFabricante INT PRIMARY KEY IDENTITY (1,1)
, nomeFabricante varchar (40) not null
)

CREATE TABLE tbFuncionario (
idFuncionario  int primary key identity (1,1)
,nomeFuncionario varchar (60) not null
,idadeFuncionario int check (idadeFuncionario>=18)
,dataAdmissao smalldatetime default '13/01/2010'
,salarioFuncionario smallmoney not null check (salarioFuncionario>=565.00)
)
CREATE TABLE tbProduto (
idProduto int primary key identity (200,2) 
,nomeProduto varchar (40) not null unique
,precoProduto smallmoney not null
,idFabricante int foreign key references tbFabricante (idFabricante)
,dataEntradaProduto smalldatetime default getdate()
,idFuncionario int foreign key references tbFuncionario (idFuncionario)
)