CREATE DATABASE bdEmpresa

GO

USE bdEmpresa

CREATE TABLE tbDepartamento(
idDepartamento INT PRIMARY KEY IDENTITY(1,1)
,nomeDepartamento VARCHAR(30) NOT NULL
)

CREATE TABLE tbFuncionario(
idFuncionario INT PRIMARY KEY IDENTITY(1,1)
,nomeFuncionario VARCHAR(30) NOT NULL
,cpfFuncionario CHAR (14) NOT NULL
,rgFuncionario  CHAR (12)NOT NULL
,idDepartamento INT FOREIGN KEY REFERENCES tbDepartamento(idDepartamento)
)

CREATE TABLE tbFoneFuncionario(
idFoneFuncionario INT PRIMARY KEY IDENTITY(1,1)
,numFone VARCHAR(30) NOT NULL
,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
)

CREATE TABLE tbProjeto(
idProjeto INT PRIMARY KEY IDENTITY(1,1)
,nomeProjeto VARCHAR (30) NOT NULL
,cargaHoraria  SMALLINT NOT NULL
)

CREATE TABLE tbFuncionarioProjeto(
idFuncionarioProjeto INT PRIMARY KEY IDENTITY(1,1)
,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
,idProjeto INT FOREIGN KEY REFERENCES tbProjeto(idProjeto)
,qtdeHoras SMALLINT NOT NULL
)

CREATE TABLE tbConjuge(
idConjuge INT PRIMARY KEY IDENTITY(1,1)
,nomeConjuge VARCHAR (50) NOT NULL
,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
)

CREATE TABLE tbDependente(
idDependente INT PRIMARY KEY IDENTITY(1,1)
,nomeDependente VARCHAR(30) NOT NULL
,dtNasctoDependente SMALLDATETIME NOT NULL
,idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(idFuncionario)
)
