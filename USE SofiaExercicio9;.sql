USE SofiaExercicio9;
GO


CREATE TABLE Estudantes_Novos (
    Id_Estudantes INT PRIMARY KEY,
    matricula VARCHAR(100) NOT NULL,
    turma VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL
);



CREATE TABLE Sala (
    Id_Sala INT PRIMARY KEY,
    bloco INT NOT NULL,
    numero VARCHAR(100) NOT NULL,
    capacidade INT NOT NULL
);




CREATE TABLE Disciplina (
    Id_Disciplina INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL
);


INSERT INTO Estudantes_Novos
    (Id_Estudantes, matricula, turma, nome)
VALUES
    (1, '2026001', '1A', 'Lucas Ferreira'),
    (2, '2026002', '2B', 'Mariana Costa'),
    (3, '2026003', '3A', 'Pedro Henrique'),
    (4, '2026004', '1C', 'Julia Santos'),
    (5, '2026005', '2A', 'Gabriel Oliveira'),
    (6, '2026006', '3B', 'Beatriz Almeida'),
    (7, '2026007', '1B', 'Rafael Souza'),
    (8, '2026008', '2C', 'Isabela Martins'),
    (9, '2026009', '3C', 'Matheus Lima'),
    (10, '2026010', '2B', 'Ana Clara');


INSERT INTO Sala
    (Id_Sala, bloco, numero, capacidade)
VALUES
    (1, 1, '101', 30),
    (2, 1, '102', 35),
    (3, 1, '103', 40),
    (4, 1, '104', 25),
    (5, 2, '201', 30),
    (6, 2, '202', 35),
    (7, 2, '203', 40),
    (8, 2, '204', 25),
    (9, 3, '301', 45),
    (10, 3, '302', 50);


INSERT INTO Disciplina
    (Id_Disciplina, nome, carga_horaria)
VALUES
    (1, 'Matemática', 80),
    (2, 'Português', 80),
    (3, 'História', 60),
    (4, 'Geografia', 60),
    (5, 'Ciências', 60),
    (6, 'Inglês', 40),
    (7, 'Educação Física', 40),
    (8, 'Artes', 40),
    (9, 'Programação', 80),
    (10, 'Banco de Dados', 60);


SELECT * FROM Estudantes_Novos;
SELECT * FROM Sala;
SELECT * FROM Disciplina;
