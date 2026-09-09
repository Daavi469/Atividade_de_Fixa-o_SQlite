SELECT alunos.nome AS aluno,
turmas.nome AS turma
FROM alunos
JOIN turmas
ON alunos.turma_id = turmas.id;