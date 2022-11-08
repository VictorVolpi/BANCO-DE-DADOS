
CREATE DATABASE bdEscola
go
USE bdEscola
Create table tblperiodo(
	codPeriodo int primary key identity(1,1)
	,nomePeriodo varchar (60) not null
)
	
Create table tblcurso(
	codCurso int primary key identity(1,1)
	,nomeCurso varchar (60) not null
	,cargahorariaCurso smalldatetime not null
	, codperiodo int foreign key references tblperiodo (codperiodo)
)	
Create table tblAluno(
	codAluno int primary key identity(1,1)
	,nomeAluno varchar (60) not null
	,datanascAluno smalldatetime  not null
	,ruaAluno varchar (50) not null
	,numcasaAluno varchar (10) not null
	,bairroAluno varchar (30) not null
	,telAluno varchar (9) not null
)	
	
Create table tblMatricula(
	codMatricula int primary key identity(1,1)
	,nomeCurso varchar (60) not null
	,dataMatricula smalldatetime default getdate ()
	,codAluno int foreign key references tblAluno (codAluno)
	,codCurso int foreign key references tblCurso (codCurso)
	,codperiodo int foreign key references tblperiodo (codperiodo)
)	
