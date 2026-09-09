SELECT alunos.nome AS aluno,
COUNT(aluno_disciplina.disciplina_id) AS quantidade_disciplinas
FROM alunos
JOIN aluno_disciplina
ON alunos.id = aluno_disciplina.aluno_id
GROUP BY alunos.id, alunos.nome;