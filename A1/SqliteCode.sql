CREATE TABLE IF NOT EXISTS turmas (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL
);

CREATE TABLE alunos (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL,
turma_id INTEGER NOT NULL,
FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

CREATE TABLE carteirinhas (
id INTEGER PRIMARY KEY AUTOINCREMENT,
numero TEXT NOT NULL UNIQUE,
aluno_id INTEGER UNIQUE NOT NULL,
FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

CREATE TABLE disciplinas (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nome TEXT NOT NULL UNIQUE
);

CREATE TABLE aluno_disciplina (
aluno_id INTEGER,
disciplina_id INTEGER,
PRIMARY KEY (aluno_id, disciplina_id),
FOREIGN KEY (aluno_id) REFERENCES alunos(id),
FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);

//////////////////////////////////////////

SELECT * FROM turmas;
SELECT * FROM alunos;
SELECT * FROM carteirinhas;
SELECT * FROM disciplinas;
SELECT * FROM aluno_disciplina;

////////////////////////////////

SELECT *
FROM alunos
WHERE turma_id = 1;

SELECT *
FROM alunos
WHERE nome = 'Ana';

SELECT *
FROM alunos
WHERE nome LIKE '%ani%';

///////////////////////////////
1:N
SELECT alunos.nome AS aluno,
turmas.nome AS turma
FROM alunos
JOIN turmas
ON alunos.turma_id = turmas.id;

//////////////////////////////
1:1
SELECT alunos.nome AS aluno,
carteirinhas.numero AS carteirinha
FROM alunos
JOIN carteirinhas
ON alunos.id = carteirinhas.aluno_id;

//////////////////////////////
N:N
SELECT alunos.nome AS aluno,
disciplinas.nome AS disciplina
FROM aluno_disciplina
JOIN alunos
ON aluno_disciplina.aluno_id = alunos.id
JOIN disciplinas
ON aluno_disciplina.disciplina_id = disciplinas.id;