

USE SofiaExercicio7;
GO


CREATE TABLE Usuario (
    Id_Usuario INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    apelido VARCHAR(30) NOT NULL,
    email VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);




CREATE TABLE Post (
    Id_Post INT PRIMARY KEY,
    texto VARCHAR(500) NOT NULL,
    tempo VARCHAR(100) NOT NULL,
    hora_publicacao TIME NOT NULL
);


INSERT INTO Usuario (
    Id_Usuario,
    nome,
    apelido,
    email,
    data_nascimento
)
VALUES
    (1, 'Lucas Ferreira', 'lucasf', 'lucas@email.com', '2008-03-15'),
    (2, 'Mariana Costa', 'maryc', 'mariana@email.com', '2009-07-22'),
    (3, 'Pedro Henrique', 'pedroh', 'pedro@email.com', '2008-11-10'),
    (4, 'Julia Santos', 'julias', 'julia@email.com', '2009-01-05'),
    (5, 'Gabriel Oliveira', 'gabiol', 'gabriel@email.com', '2008-06-18'),
    (6, 'Beatriz Almeida', 'biaa', 'beatriz@email.com', '2009-09-30'),
    (7, 'Rafael Souza', 'rafaelz', 'rafael@email.com', '2008-12-12'),
    (8, 'Isabela Martins', 'isam', 'isabela@email.com', '2009-04-25'),
    (9, 'Matheus Lima', 'matlima', 'matheus@email.com', '2008-08-08'),
    (10, 'Ana Clara', 'anac', 'ana@email.com', '2009-02-14');


INSERT INTO Post (
    Id_Post,
    texto,
    tempo,
    hora_publicacao
)
VALUES
    (1, 'Hoje foi um dia incrível!', '2026-10-01', '08:30:00'),
    (2, 'Adoro ouvir música nos tempos livres.', '2026-10-02', '09:15:00'),
    (3, 'Estudando para a prova de matemática.', '2026-10-03', '10:00:00'),
    (4, 'Um bom livro muda o nosso dia.', '2026-10-04', '11:20:00'),
    (5, 'Fim de semana chegando!', '2026-10-05', '12:45:00'),
    (6, 'Hoje aprendi algo novo na escola.', '2026-10-06', '13:10:00'),
    (7, 'Filmes e pipoca são a combinação perfeita.', '2026-10-07', '14:30:00'),
    (8, 'Nunca deixe de acreditar nos seus sonhos.', '2026-10-08', '15:00:00'),
    (9, 'Praticando programação hoje.', '2026-10-09', '16:25:00'),
    (10, 'Que a semana seja cheia de coisas boas!', '2026-10-10', '17:40:00');


SELECT * FROM Usuario;
SELECT * FROM Post;
