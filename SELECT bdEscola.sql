USE bdEscola1

SELECT nomeAluno AS 'Nome', rgAluno AS 'RG', dataNascimentoAluno AS 'Nascimento' FROM tbAluno
WHERE naturalidadeAluno = 'SP'

SELECT nomeAluno AS 'Nome', rgAluno AS 'RG' FROM tbAluno
WHERE nomeAluno LIKE 'P%'

SELECT nomeCurso AS 'Curso' FROM tbCurso
WHERE cargaHorariaCurso > 2000

SELECT nomeAluno AS 'Nome' FROM tbAluno
WHERE nomeAluno LIKE '%Silva%'

SELECT nomeAluno AS 'Nome', dataNascimentoAluno AS 'Nascimento' FROM tbAluno
WHERE MONTH(dataNascimentoAluno) = 3

SELECT idAluno AS 'ID Aluno', dataMatricula AS 'Data Matrícula' FROM tbMatricula
WHERE MONTH(dataMatricula) = 5

SELECT idAluno AS 'ID Aluno' FROM tbMatricula
WHERE idTurma IN (1, 2)

SELECT idAluno AS 'ID Aluno' FROM tbMatricula
WHERE idTurma = 3

SELECT * FROM tbAluno

SELECT * FROM tbTurma