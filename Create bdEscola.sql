CREATE DATABASE bdEscola1

GO

USE bdEscola1

CREATE TABLE tbCurso(
idCurso INT PRIMARY KEY IDENTITY(1,1)
,nomeCurso VARCHAR (50) NOT NULL
,cargahorariaCurso SMALLINT NOT NULL 
,valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno(
idAluno INT PRIMARY KEY IDENTITY(1,1)
,nomeAluno VARCHAR(30) NOT NULL
,dataNascimentoAluno SMALLDATETIME NOT NULL
,rgAluno CHAR (12)NOT NULL
,naturalidadeAluno CHAR(2) NOT NULL
)

CREATE TABLE tbTurma(
idTurma INT PRIMARY KEY IDENTITY(1,1)
,nomeTurma VARCHAR (30) NOT NULL
,horarioTurma SMALLDATETIME NOT NULL 
,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
)

CREATE TABLE tbMatricula(
idMatricula INT PRIMARY KEY IDENTITY(1,1)
,dataMatricula SMALLDATETIME NOT NULL
,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)

