
CREATE DATABASE SofiaExercicio8;
GO

USE SofiaExercicio8;
GO


CREATE TABLE Alunos (
    Id_Alunos INT PRIMARY KEY,
    matricula VARCHAR(100) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);




CREATE TABLE Endereco (
    Id_Endereco INT PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    ponto_referencia VARCHAR(100) NOT NULL,
    cep VARCHAR(9) NOT NULL
);

INSERT INTO Alunos (
    Id_Alunos,
    matricula,
    telefone,
    nome,
    email
)
VALUES
    (1, '2026001', '(14) 99123-4567', 'Lucas Ferreira', 'lucas@email.com'),
    (2, '2026002', '(14) 99234-5678', 'Mariana Costa', 'mariana@email.com'),
    (3, '2026003', '(14) 99345-6789', 'Pedro Henrique', 'pedro@email.com'),
    (4, '2026004', '(14) 99456-7890', 'Julia Santos', 'julia@email.com'),
    (5, '2026005', '(14) 99567-8901', 'Gabriel Oliveira', 'gabriel@email.com'),
    (6, '2026006', '(14) 99678-9012', 'Beatriz Almeida', 'beatriz@email.com'),
    (7, '2026007', '(14) 99789-0123', 'Rafael Souza', 'rafael@email.com'),
    (8, '2026008', '(14) 99890-1234', 'Isabela Martins', 'isabela@email.com'),
    (9, '2026009', '(14) 99901-2345', 'Matheus Lima', 'matheus@email.com'),
    (10, '2026010', '(14) 99012-3456', 'Ana Clara', 'ana@email.com');

INSERT INTO Endereco (
    Id_Endereco,
    rua,
    numero,
    bairro,
    cidade,
    ponto_referencia,
    cep
)
VALUES
    (1, 'Rua das Flores', '120', 'Centro', 'Jaú', 'Próximo à praça', '17201-000'),
    (2, 'Rua das Palmeiras', '245', 'Jardim América', 'Jaú', 'Perto da escola', '17202-000'),
    (3, 'Avenida Brasil', '350', 'Vila Nova', 'Jaú', 'Ao lado do mercado', '17203-000'),
    (4, 'Rua São Paulo', '87', 'Centro', 'Bauru', 'Próximo à farmácia', '17010-000'),
    (5, 'Rua das Acácias', '410', 'Jardim Europa', 'Jaú', 'Em frente à praça', '17204-000'),
    (6, 'Avenida Central', '55', 'Vila Industrial', 'Bauru', 'Perto do posto', '17020-000'),
    (7, 'Rua do Comércio', '190', 'Centro', 'Botucatu', 'Próximo à igreja', '18600-000'),
    (8, 'Rua dos Ipês', '275', 'Jardim Planalto', 'Jaú', 'Ao lado da padaria', '17205-000'),
    (9, 'Rua Bela Vista', '68', 'Vila Mariana', 'Bauru', 'Perto do parque', '17030-000'),
    (10, 'Rua Sete de Setembro', '500', 'Centro', 'Botucatu', 'Em frente ao banco', '18601-000');


SELECT * FROM Alunos;
SELECT * FROM Endereco;
