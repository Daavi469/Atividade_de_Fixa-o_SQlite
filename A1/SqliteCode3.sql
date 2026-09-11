SELECT *
FROM alunos
ORDER BY nome ASC;

SELECT *
FROM alunos
ORDER BY nome DESC;

SELECT alunos.nome AS aluno,
turmas.nome AS turma
FROM alunos
JOIN turmas
ON alunos.turma_id = turmas.id
ORDER BY turmas.nome, alunos.nome;

/////////////////////////////////////

SELECT COUNT(*) AS total_alunos
FROM alunos;

SELECT COUNT(*) AS total_disciplinas
FROM disciplinas;

SELECT COUNT(*) AS total
FROM aluno_disciplina
WHERE disciplina_id = 1;

////////////////////////////////////

SELECT turmas.nome AS turma,
COUNT(alunos.id) AS quantidade_alunos
FROM turmas
JOIN alunos
ON alunos.turma_id = turmas.id
GROUP BY turmas.id, turmas.nome;