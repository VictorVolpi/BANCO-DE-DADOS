USE bdEmpresa

INSERT INTO tbDepartamento (nomeDepartamento)
VALUES
	('Vendas')
	,('Supervisor')
	,('Tecnologia')
	,('Finanças')
	,('Advogada')
	,('Diretoria')
	,('Marketing Digital')
	SELECT * FROM tbDepartamento

INSERT INTO tbFuncionario (nomeFuncionario, cpfFuncionario, rgFuncionario, idDepartamento)
VALUES
	('Kaua de Souza', '505.596.356-69', '61.223.666-9', 1)
	,('Victor Volpi',  '504.594.368-56', '60.220.664-9', 2)
	,('Bruno Silva' , '540.595.365-65' , '62.224.656-9', 3)
	,('Diego Olegario' , '541.596.366-65' , '63.225.657-9', 4)
	,('Gabrielle Oliveira Santana', '542.597.367-66' , '64.226.658-9', 5)
	,('Gabrielle Rocha Freitas' ,'543.598.368-65' , '68.228.658-9', 6)
	,('Ruthe Almeida' ,'590.599.369-69' , '69.225.657-9', 7)
	SELECT * FROM tbFuncionario

INSERT INTO tbFoneFuncionario (numFone, idFuncionario)
VALUES
	('+55(11)96275-4521', 1)
	,('+55(11)98142-0861', 2)
	,('+55(11)95386-0905', 3)
	,('+55(11)97647-9278',4)
	,('+55(11)98540-8603', 5)
	,('+55(11)97202-4965', 6)
	,('+55(11)95323-5148', 7)
	SELECT * FROM tbFoneFuncionario

INSERT INTO tbProjeto (nomeProjeto , cargaHoraria) 
VALUES

	('MetodoCurio',8)
	,('MetodoCurio',8)
	,('MetodoCurio',8)
	,('MetodoCurio',8)
	SELECT * FROM tbProjeto

INSERT INTO tbFuncionarioProjeto (idFuncionario , idProjeto , qtdeHoras) 
VALUES
	
	(1, 1, 8 )
	,(2, 2, 8 )
	,(3, 3, 8 )
	,(4, 4, 8)
	SELECT * FROM tbFuncionarioProjeto

INSERT INTO tbConjuge (nomeConjuge , idFuncionario)
VALUES

	('Camila Loures',1)
	,('Luara Fonseca',2)
	,('Larissa Manoela',3)
	,('Luísa Sonza',4)
	,('Pedro Henrique Efigênio da rocha',5)
	,('Thomaz Costa',6)
	,('Lucas Santos',7)
	SELECT * FROM tbConjuge

INSERT INTO tbDependente (nomeDependente, dtNasctoDependente, idFuncionario)
VALUES
		('Carla Loures de Souza','25/01/2016' , 1)
		,('Gael Volpi Fonseca' , '26/03/2015' ,2)
		,('Arthur Silva',  '27/03/2014',3)
		,('Helena Sonza','12/09/2015' , 4)
		,('Yeonimin Oliveira Rocha ','20/05/2017' ,5)
		,('Alice Rocha','10/09/2017', 6)
		,('Laura Santos de Almeida', '19/06/2016',7)
		SELECT * FROM tbDependente