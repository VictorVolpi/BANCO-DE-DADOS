USE bdEscola1

INSERT INTO tbCurso (nomeCurso,cargahorariaCurso,valorCurso)
VALUES
	('Ingles','2000',356.00)
	,('Alemao','3000',478.00)
	--SELECT * FROM tbCurso

INSERT INTO tbAluno (nomeAluno,dataNascimentoAluno,rgAluno, naturalidadeAluno)
VALUES
	('Paulo Santos','2000/10/03','82.292.122-0','SP')
	,('Maria da Gloria','1999/03/10','45.233.123-0','SP')
	,('Perla Nogueira Silva ','1998/04/04','23.533.211-9','SP')
	,('Gilson Barros Silva','1995/09/09','34.221.111-X','PE')
	,('Mariana Barbosa Santos','2001/10/10','45.233.123-0','RJ')
	--SELECT * FROM tbAluno

INSERT INTO tbTurma (nomeTurma,horarioTurma,idCurso)
VALUES
	('1|A','1900/01/01',1)
	,('1|B','1900/01/01',1)
	,('1|AA','1900/01/01',2)
	--SELECT * FROM tbTurma


INSERT INTO tbMatricula (dataMatricula,idAluno,idTurma)
VALUES
	('2015/03/10',1,1)
	,('2014/04/05',2,1)
	,('2012/03/05',3,2)
	,('2016/03/03',1,3)
	,('2015/07/05',4,2)
	,('2015/05/07',4,3)
	,('2015/06/06',5,1)
	,('2015/05/05',5,3)
	--SELECT * FROM tbMatricula


