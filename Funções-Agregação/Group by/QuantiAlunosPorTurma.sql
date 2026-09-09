SELECT turmas.nome AS turma,
COUNT(alunos.id) AS quantidade_alunos
FROM turmas
JOIN alunos
ON alunos.turma_id = turmas.id
GROUP BY turmas.id, turmas.nome;