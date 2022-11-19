USE bdEscola

INSERT INTO tbCurso (nomeCurso)
VALUES

	('Alemao')
	,('Ingles')
	,('Espanhol')
	SELECT * FROM tbCurso

INSERT INTO tbNivel (descNivel)
VALUES

	('Amador')
	,('Intermediario')
	,('Avançado')
	SELECT * FROM tbNivel

INSERT INTO tbPeriodo(descPeriodo)
VALUES

	('Manha')
	,('Tarde')
	,('Noite')
	SELECT * FROM tbPeriodo

INSERT INTO tbDiaSemana(diaSemana)
VALUES

	('Segunda-Feira')
	,('Terça-Feira')
	,('Quarta-Feira')
	,('Quinta-Feira')
	,('Sexta-Feira')
	,('Sabado')
	SELECT * FROM tbDiaSemana

INSERT INTO tbAluno(nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES

	('Kaua de Souza','61.223.666-9','Rua São José',66,'bloco B ', 'Guaianases', 88010-040 ,'Sâo Paulo')
	,('Bruno Silva','62.224.656-9','Rua Cruzeiro do Sul',67,'bloco A ','Santana',01311-000 ,'Sâo Paulo')
	,('Diego Olegario','63.225.657-9','Rua Paulista',69,'Bloco B',' Bela Vista',01311-123,'São Paulo')
	,('Victor Volpi','60.220.664-9','Rua Oscar Freire',70,'Bloco A','Jardins',01426-001,'São Paulo')
	,('Gabrielle Rocha Freitas', '68.228.658-9','Rua Galvão Bueno',71,'Bloco B','Liberdade',01506-000,'São Paulo')
	,('Ruthe Almeida', '69.225.657-9','Rua Augusta',72,'Bloco A','Consolação',01305-100,'São Paulo')
	SELECT * FROM tbAluno


INSERT INTO tbFoneAluno(foneAluno, idAluno)
VALUES

	('+55(11)96275-4521',1)
	,('(11) 2566-4793',1)
	,('+55(11)97647-9278',2)
	,('(11) 3407-1143',2)
	,('+55(11)95386-0905', 3)
	,('(11) 2241-7231',3)
	,('+55(11)98142-0861',4)
	,('(11) 3228-7454',4)
	,('+55(11)97202-4965',5)
	,('(11) 3168-6586',5)
	,('+55(11)95323-5148',6)
	,('(11) 3248-8585',6)
	SELECT * FROM tbFoneAluno

INSERT INTO tbTurma (horario, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES

	('14:00',1,2,1,2)
	,('13:30',2,2,2,6)
	,('08:00',3,3,1,3)
	,('10:00',1,2,1,1)
	,('15:30',2,1,2,4)
	,('17:00',3,2,3,5)
	SELECT * FROM tbTurma

INSERT INTO tbMatricula (dataMatricula ,idAluno ,idTurma)
VALUES

	('25/01/2022',1,2)
	,('26/02/2022',1,1)
	,('26/03/2022',2,4)
	,('27/04/2022',2,3)
	,('27/05/2022',3,5)
	,('28/06/2022',3,2)
	,('13/07/2022',4,1)
	,('14/08/2022',4,2)
	,('15/05/2022',5,3)
	,('16/05/2022',5,5)
	,('19/06/2022',6,6)
	,('19/06/2022',6,4)
	SELECT * FROM tbMatricula




	

