


USE SofiaExercicio10;
GO

-- Tabela AlunoNovo
CREATE TABLE AlunoNovo (
    Id_AlunoNovo INT PRIMARY KEY,
    matricula VARCHAR(100) NOT NULL,
    turma VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    data_nascimento DATE NOT NULL
);



-- Tabela Palcos
CREATE TABLE Palcos (
    Id_Palcos INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    capacidade INT NOT NULL
);


-- Tabela Apresentacoes
CREATE TABLE Apresentacoes (
    Id_Apresentacoes INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    estilo VARCHAR(100) NOT NULL,
    duracao INT NOT NULL,
    classificacao_etaria VARCHAR(20) NOT NULL
);



-- Tabela Responsaveis
CREATE TABLE Responsaveis (
    Id_Responsaveis INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);


INSERT INTO AlunoNovo
    (Id_AlunoNovo, matricula, turma, nome, telefone, data_nascimento)
VALUES
    (1, '2026001', '1A', 'Lucas Ferreira', '(14) 99123-4567', '2008-03-15'),
    (2, '2026002', '2B', 'Mariana Costa', '(14) 99234-5678', '2009-07-22'),
    (3, '2026003', '3A', 'Pedro Henrique', '(14) 99345-6789', '2008-11-10'),
    (4, '2026004', '1C', 'Julia Santos', '(14) 99456-7890', '2009-01-05'),
    (5, '2026005', '2A', 'Gabriel Oliveira', '(14) 99567-8901', '2008-06-18'),
    (6, '2026006', '3B', 'Beatriz Almeida', '(14) 99678-9012', '2009-09-30'),
    (7, '2026007', '1B', 'Rafael Souza', '(14) 99789-0123', '2008-12-12'),
    (8, '2026008', '2C', 'Isabela Martins', '(14) 99890-1234', '2009-04-25'),
    (9, '2026009', '3C', 'Matheus Lima', '(14) 99901-2345', '2008-08-08'),
    (10, '2026010', '2B', 'Ana Clara', '(14) 99012-3456', '2009-02-14');


INSERT INTO Palcos (Id_Palcos, nome, capacidade)
VALUES
    (1, 'Palco Principal', 1000),
    (2, 'Palco Jovem', 500),
    (3, 'Palco Cultural', 300),
    (4, 'Palco Acústico', 200),
    (5, 'Palco Rock', 800),
    (6, 'Palco Pop', 600),
    (7, 'Palco Alternativo', 250),
    (8, 'Palco Eletrônico', 700),
    (9, 'Palco Regional', 350),
    (10, 'Palco Infantil', 150);

    INSERT INTO Apresentacoes
    (Id_Apresentacoes, nome, estilo, duracao, classificacao_etaria)
VALUES
    (1, 'Show de Abertura', 'Pop', 60, 'Livre'),
    (2, 'Noite do Rock', 'Rock', 90, '12 anos'),
    (3, 'Festival Sertanejo', 'Sertanejo', 120, 'Livre'),
    (4, 'Dança Urbana', 'Hip-hop', 45, 'Livre'),
    (5, 'Orquestra Jovem', 'Clássica', 60, 'Livre'),
    (6, 'Noite Eletrônica', 'Eletrônica', 120, '16 anos'),
    (7, 'Samba na Praça', 'Samba', 75, 'Livre'),
    (8, 'Festival de Jazz', 'Jazz', 90, 'Livre'),
    (9, 'Especial MPB', 'MPB', 80, 'Livre'),
    (10, 'Teatro Infantil', 'Teatro', 50, 'Livre');

INSERT INTO Responsaveis (Id_Responsaveis, nome)
VALUES
    (1, 'Carlos Almeida'),
    (2, 'Fernanda Souza'),
    (3, 'Roberto Santos'),
    (4, 'Patricia Lima'),
    (5, 'Marcos Oliveira'),
    (6, 'Juliana Costa'),
    (7, 'André Martins'),
    (8, 'Camila Ferreira'),
    (9, 'Ricardo Gomes'),
    (10, 'Beatriz Rocha');

-- Consultar os dados
SELECT * FROM AlunoNovo;
SELECT * FROM Palcos;
SELECT * FROM Apresentacoes;
SELECT * FROM Responsaveis;