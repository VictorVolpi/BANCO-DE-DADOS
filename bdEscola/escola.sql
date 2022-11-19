CREATE DATABASE bdEscola

USE bdEscola

CREATE TABLE tbProfessor (
	idProfessor INT PRIMARY KEY IDENTITY(1,1)
	,nomeProfessor VARCHAR(30) NOT NULL
	,dtNascProfessor DATE NOT NULL
	,rgProfessor VARCHAR(15) NOT NULL
)

CREATE TABLE tbDisciplina (
	idDisciplina INT PRIMARY KEY IDENTITY(1,1)
	,nomeDisciplina VARCHAR(50) NOT NULL
	,cargaHorariaDisciplina TIME NOT NULL
)

	CREATE TABLE tbCampus (
	idCampus INT PRIMARY KEY IDENTITY(1,1)
	,nomeCampus VARCHAR(30) NOT NULL
)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY(1,1)
	,nomeCurso VARCHAR(35) NOT NULL
	,cargaHorariaCurso TIME NOT NULL
)

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY(1,1)
	,nomeAluno VARCHAR(30) NOT NULL
	,dtNascAluno DATE NOT NULL
	,cpfAluno CHAR(14) NOT NULL
)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY(1,1)
	,descricaoTurma VARCHAR(100) NOT NULL
	,numAlunos INT NOT NULL
	,semestre CHAR(2) NOT NULL
	,anoFormacao DATE NOT NULL
	,numSala VARCHAR(2) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso(idCurso)
	,idCampus INT FOREIGN KEY REFERENCES tbCampus(idCampus)
)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY(1,1)
	,dtMatricula DATE NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno(idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
)

CREATE TABLE tbAtribuicao (
	idAtribuicao INT PRIMARY KEY IDENTITY(1,1)
	,dataAtribuicao DATE NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor(idProfessor)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma(idTurma)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina(idDisciplina)
)