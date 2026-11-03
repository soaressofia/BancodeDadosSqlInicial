CREATE DATABASE SofiaDesafio;
USE Desafio

USE SofiaDesafio;
GO


CREATE TABLE DEPARTAMENTO (
    id_departamento INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    orcamento INT NOT NULL
);

CREATE TABLE EMPREGADOS1 (
    id_empregados INT PRIMARY KEY,
    matricula VARCHAR(100),
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    e_mail VARCHAR(100) NOT NULL,
    telefones VARCHAR(50) NOT NULL
);

CREATE TABLE CLIENTEEEE (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(200) NOT NULL,
    e_mail VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefones VARCHAR(100) NOT NULL
);

CREATE TABLE ENDERECO (
    id_endereco INT PRIMARY KEY,
    rua VARCHAR(150) NOT NULL,
    sequencia VARCHAR(20),
    cep VARCHAR(10) NOT NULL,
    ponto_referencia VARCHAR(150),
    numero INT NOT NULL,
    bairro VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

CREATE TABLE CHAMADO (
    id_chamado INT PRIMARY KEY,
    assunto VARCHAR(100) NOT NULL,
    descricao VARCHAR(1000),
    data_abertura DATE NOT NULL,
    prioridade VARCHAR(20) NOT NULL,
    status_chamado VARCHAR(30) NOT NULL
);

CREATE TABLE PRODUTO (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco INT NOT NULL,
    descricao TEXT,
    categoria VARCHAR(50),
    quantidade_minima INT,
    garantia VARCHAR(50) NOT NULL
);

CREATE TABLE DEPOSITO (
    id_deposito INT PRIMARY KEY,
    endereco VARCHAR(150) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    capacidade_maxima INT
);


CREATE TABLE FORNECEDOR (
    id_fornecedor INT PRIMARY KEY,
    razao_social VARCHAR(150),
    cnpj VARCHAR(18) NOT NULL,
    e_mail VARCHAR(100) NOT NULL,
    telefone VARCHAR(50) NOT NULL
);

CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    Data_pedido DATE NOT NULL,
    status_pedido1 VARCHAR(30) NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL
);

CREATE TABLE FATURA (
    id_fatura INT PRIMARY KEY,
    data_emissao DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    situacao VARCHAR(30) NOT NULL
);

CREATE TABLE PAGAMENTOSS (
    id_pagamento INT PRIMARY KEY,
    data_pagamentos DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    status_PAGAMENTO VARCHAR(30) NOT NULL
);

CREATE TABLE ENTREGADOR (
    id_entregador INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf INT NOT NULL,
    telefone VARCHAR(50) NOT NULL,
    tipo_veiculo VARCHAR(50)
);

CREATE TABLE ENTREGA (
    id_entregas INT PRIMARY KEY,
    data_saida DATE NOT NULL,
    previsao_entrega DATE NOT NULL,
    data_efetiva_entrega DATE NOT NULL,
    status_entrega VARCHAR(30) NOT NULL
);

CREATE TABLE PROJETOS (
    id_chave INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_prevista DATE,
    orcamento DECIMAL(12, 2) NOT NULL,
    entrega VARCHAR(100)
);

INSERT INTO DEPARTAMENTO (id_departamento, nome, orcamento)
VALUES
(1, 'Recursos Humanos', 50000),
(2, 'Tecnologia da Informacao', 120000),
(3, 'Financeiro', 80000),
(4, 'Marketing', 60000),
(5, 'Vendas', 90000),
(6, 'Logistica', 70000),
(7, 'Producao', 150000),
(8, 'Compras', 45000),
(9, 'Atendimento', 55000),
(10, 'Administrativo', 65000);

SELECT * from DEPARTAMENTO;
GO

INSERT INTO EMPREGADOS1
(id_empregados, matricula, nome, cpf, cargo, e_mail, telefones)
VALUES
(1, 'MAT001', 'Ana Silva', 123456789, 'Analista', 'ana@empresa.com', '11911111111'),
(2, 'MAT002', 'Bruno Santos', 234567890, 'Gerente', 'bruno@empresa.com', '11922222222'),
(3, 'MAT003', 'Carla Souza', 345678901, 'Assistente', 'carla@empresa.com', '11933333333'),
(4, 'MAT004', 'Daniel Lima', 456789012, 'Desenvolvedor', 'daniel@empresa.com', '11944444444'),
(5, 'MAT005', 'Eduarda Costa', 567890123, 'Analista', 'eduarda@empresa.com', '11955555555'),
(6, 'MAT006', 'Felipe Alves', 678901234, 'Supervisor', 'felipe@empresa.com', '11966666666'),
(7, 'MAT007', 'Gabriela Rocha', 789012345, 'Vendedora', 'gabriela@empresa.com', '11977777777'),
(8, 'MAT008', 'Henrique Melo', 890123456, 'Estoquista', 'henrique@empresa.com', '11988888888'),
(9, 'MAT009', 'Isabela Martins', 901234567, 'Secretaria', 'isabela@empresa.com', '11999999999'),
(10, 'MAT010', 'Joao Pereira', 112233445, 'Tecnico', 'joao@empresa.com', '11910101010');

SELECT * from EMPREGADOS1;
GO

INSERT INTO ENDERECO
(id_endereco, rua, sequencia, cep, ponto_referencia, numero, bairro, cidade)
VALUES
(1, 'Rua das Flores', 'A', '01001000', 'Proximo a praca', 100, 'Centro', 'Sao Paulo'),
(2, 'Avenida Brasil', 'B', '20040002', 'Ao lado do mercado', 250, 'Centro', 'Rio de Janeiro'),
(3, 'Rua das Palmeiras', 'C', '30130010', 'Perto da escola', 75, 'Savassi', 'Belo Horizonte'),
(4, 'Rua Amazonas', 'D', '80010000', 'Em frente ao banco', 340, 'Centro', 'Curitiba'),
(5, 'Avenida Paulista', 'E', '01310100', 'Proximo ao metro', 1500, 'Bela Vista', 'Sao Paulo'),
(6, 'Rua Bahia', 'F', '40020000', 'Perto da farmacia', 80, 'Comercio', 'Salvador'),
(7, 'Rua Recife', 'G', '50010000', 'Ao lado da igreja', 45, 'Santo Antonio', 'Recife'),
(8, 'Avenida Central', 'H', '70040010', 'Perto do shopping', 600, 'Asa Sul', 'Brasilia'),
(9, 'Rua Goias', 'I', '74010010', 'Proximo ao parque', 120, 'Centro', 'Goiania'),
(10, 'Rua das Acacias', 'J', '88010000', 'Em frente a praca', 90, 'Centro', 'Florianopolis');

SELECT * from ENDERECO;
GO

INSERT INTO CHAMADO
(id_chamado, assunto, descricao, data_abertura, prioridade, status_chamado)
VALUES
(1,  'Erro no sistema', 'Sistema apresenta erro ao iniciar', '2026-01-10', 'Alta', 'Aberto'),
(2, 'Problema na impressora', 'Impressora nao imprime documentos', '2026-01-11', 'Media', 'Em andamento'),
(3, 'Acesso bloqueado', 'Usuario nao consegue acessar a conta', '2026-01-12', 'Alta', 'Aberto'),
(4,  'Internet lenta', 'Conexao apresenta lentidao', '2026-01-13', 'Baixa', 'Resolvido'),
(5,  'Atualizacao de software', 'Solicitacao de atualizacao', '2026-01-14', 'Media', 'Em andamento'),
(6,  'Falha no computador', 'Computador nao liga', '2026-01-15', 'Alta', 'Aberto'),
(7,  'Problema no email', 'Emails nao estao sendo recebidos', '2026-01-16', 'Media', 'Resolvido'),
(8,  'Solicitacao de acesso', 'Acesso a nova pasta compartilhada', '2026-01-17', 'Baixa', 'Aberto'),
(9,  'Erro no cadastro', 'Cadastro apresenta informacoes incorretas', '2026-01-18', 'Media', 'Em andamento'),
(10, 'Sistema indisponivel', 'Sistema fora do ar', '2026-01-19', 'Alta', 'Resolvido');

SELECT * from CHAMADO;
GO

INSERT INTO CLIENTEEEE
(id_cliente, nome, cpf, e_mail, data_nascimento, telefones)
VALUES
(1, 'Mariana Oliveira', 123123123, 'mariana@email.com', '1995-03-12', '11912345678'),
(2, 'Pedro Almeida', 234234234, 'pedro@email.com', '1988-07-25', '11923456789'),
(3, 'Julia Ferreira', 345345345, 'julia@email.com', '2000-01-15', '11934567890'),
(4, 'Lucas Ribeiro', 456456456, 'lucas@email.com', '1992-11-08', '11945678901'),
(5, 'Beatriz Gomes', 567567567, 'beatriz@email.com', '1998-05-20', '11956789012'),
(6, 'Rafael Carvalho', 678678678, 'rafael@email.com', '1985-09-17', '11967890123'),
(7, 'Camila Barbosa', 789789789, 'camila@email.com', '1999-12-02', '11978901234'),
(8, 'Gustavo Martins', 890890890, 'gustavo@email.com', '1991-06-30', '11989012345'),
(9, 'Larissa Mendes', 901901901, 'larissa@email.com', '1997-02-14', '11990123456'),
(10,'Thiago Nunes', 112112112, 'thiago@email.com', '1993-08-09', '11911223344');

SELECT * from CLIENTEEEE;
GO

INSERT INTO PRODUTO
(id_produto, nome, preco, descricao, categoria, quantidade_minima, garantia)
VALUES
(1, 'Notebook', 3500, 'Notebook para uso profissional', 'Informatica', 5, '12 meses'),
(2, 'Mouse', 80, 'Mouse optico USB', 'Acessorios', 10, '6 meses'),
(3, 'Teclado', 120, 'Teclado USB ABNT2', 'Acessorios', 10, '12 meses'),
(4, 'Monitor', 950, 'Monitor LED 24 polegadas', 'Informatica', 5, '12 meses'),
(5, 'Impressora', 780, 'Impressora multifuncional', 'Escritorio', 3, '12 meses'),
(6,  'Cadeira', 650, 'Cadeira ergonomica', 'Moveis', 4, '24 meses'),
(7,  'Mesa', 900, 'Mesa para escritorio', 'Moveis', 3, '12 meses'),
(8,  'Headset', 180, 'Fone com microfone', 'Acessorios', 8, '6 meses'),
(9,  'Webcam', 220, 'Webcam HD USB', 'Informatica', 5, '12 meses'),
(10, 'Roteador', 300, 'Roteador wireless', 'Redes', 4, '12 meses');

SELECT * from PRODUTO;
GO

INSERT INTO DEPOSITO
(id_deposito, endereco, cidade, capacidade_maxima)
VALUES
(1,  'Rua A, 100', 'Sao Paulo', 1000),
(2,  'Rua B, 200', 'Rio de Janeiro', 1500),
(3,  'Rua C, 300', 'Belo Horizonte', 800),
(4,  'Rua D, 400', 'Curitiba', 1200),
(5,  'Rua E, 500', 'Salvador', 900),
(6,  'Rua F, 600', 'Recife', 700),
(7,  'Rua G, 700', 'Brasilia', 1100),
(8,  'Rua H, 800', 'Goiania', 600),
(9,  'Rua I, 900', 'Florianopolis', 750),
(10, 'Rua J, 1000', 'Porto Alegre', 1300);

SELECT * from DEPOSITO;
GO

INSERT INTO FORNECEDOR
(id_fornecedor, razao_social, cnpj, e_mail, telefone)
VALUES
(1, 'Tech Distribuidora Ltda', 123456780001, 'contato@tech.com', '1133334444'),
(2,  'Moveis Brasil Ltda', 234567890001, 'vendas@moveis.com', '1144445555'),
(3,  'Informatica Total Ltda', 345678900001, 'suporte@info.com', '1155556666'),
(4, 'Papelaria Central Ltda', 456789010001, 'contato@papelaria.com', '1166667777'),
(5, 'Eletronicos Silva Ltda', 567890120001, 'vendas@eletronicos.com', '1177778888'),
(6,  'Distribuidora Nacional Ltda', 678901230001, 'contato@dist.com', '1188889999'),
(7, 'Comercial Andrade Ltda', 789012340001, 'comercial@andrade.com', '1199990000'),
(8, 'Suprimentos Gerais Ltda', 890123450001, 'vendas@suprimentos.com', '1122223333'),
(9, 'Logistica Express Ltda', 901234560001, 'contato@logistica.com', '1133332222'),
(10,  'Produtos Omega Ltda', 112233440001, 'vendas@omega.com', '1144443333');

SELECT * from FORNECEDOR;
GO

INSERT INTO PEDIDO
(id_pedido, Data_pedido, status_pedido1, valor_total)
VALUES
(1,  '2026-02-01', 'Pendente', 3500.00),
(2,  '2026-02-02', 'Aprovado', 1200.00),
(3,  '2026-02-03', 'Enviado', 850.50),
(4, '2026-02-04', 'Entregue', 450.00),
(5, '2026-02-05', 'Cancelado', 200.00),
(6, '2026-02-06', 'Pendente', 780.00),
(7, '2026-02-07', 'Aprovado', 1500.00),
(8,  '2026-02-08', 'Enviado', 320.00),
(9,  '2026-02-09', 'Entregue', 2200.00),
(10,  '2026-02-10', 'Pendente', 990.00);

SELECT * from PEDIDO;
GO

INSERT INTO FATURA
(id_fatura, data_emissao, valor, situacao)
VALUES
(1,  '2026-02-01', 3500.00, 'Paga'),
(2,  '2026-02-02', 1200.00, 'Pendente'),
(3,  '2026-02-03', 850.50, 'Paga'),
(4,  '2026-02-04', 450.00, 'Vencida'),
(5,  '2026-02-05', 200.00, 'Cancelada'),
(6,  '2026-02-06', 780.00, 'Pendente'),
(7,  '2026-02-07', 1500.00, 'Paga'),
(8,  '2026-02-08', 320.00, 'Pendente'),
(9,  '2026-02-09', 2200.00, 'Paga'),
(10, '2026-02-10', 990.00, 'Vencida');

SELECT * from FATURA;
GO

INSERT INTO PAGAMENTOSS
(id_pagamento, data_pagamentos, valor, forma_pagamento, status_PAGAMENTO)
VALUES
(1, '2026-02-01', 3500.00, 'PIX', 'Aprovado'),
(2, '2026-02-02', 1200.00, 'Cartao de credito', 'Pendente'),
(3, '2026-02-03', 850.50, 'Boleto', 'Aprovado'),
(4, '2026-02-04', 450.00, 'Dinheiro', 'Aprovado'),
(5, '2026-02-05', 200.00, 'PIX', 'Cancelado'),
(6, '2026-02-06', 780.00, 'Cartao de debito', 'Pendente'),
(7, '2026-02-07', 1500.00, 'PIX', 'Aprovado'),
(8, '2026-02-08', 320.00, 'Boleto', 'Pendente'),
(9, '2026-02-09', 2200.00, 'Cartao de credito', 'Aprovado'),
(10,'2026-02-10', 990.00, 'Dinheiro', 'Pendente');

SELECT * from PAGAMENTOSS;
GO

INSERT INTO ENTREGADOR
(id_entregador, nome, cpf, telefone, tipo_veiculo)
VALUES
(1, 'Marcos Silva', 123456701, '11911112222', 'Moto'),
(2, 'Paulo Santos', 234567802, '11922223333', 'Carro'),
(3, 'Renata Lima', 345678903, '11933334444', 'Van'),
(4, 'Carlos Souza', 456789004, '11944445555', 'Moto'),
(5, 'Fernanda Alves', 567890105, '11955556666', 'Bicicleta'),
(6, 'Roberto Costa', 678901206, '11966667777', 'Carro'),
(7, 'Patricia Rocha', 789012307, '11977778888', 'Van'),
(8, 'Anderson Melo', 890123408, '11988889999', 'Moto'),
(9, 'Juliana Martins', 901234509, '11999990000', 'Bicicleta'),
(10,'Ricardo Pereira', 112233410, '11910102020', 'Carro');

SELECT * from ENTREGADOR;
GO

INSERT INTO ENTREGA
(id_entregas, data_saida, previsao_entrega, data_efetiva_entrega, status_entrega)
VALUES
(1, '2026-02-01', '2026-02-03', '2026-02-03', 'Entregue'),
(2, '2026-02-02', '2026-02-04', '2026-02-04', 'Entregue'),
(3, '2026-02-03', '2026-02-05', '2026-02-05', 'Entregue'),
(4, '2026-02-04', '2026-02-06', '2026-02-06', 'Entregue'),
(5, '2026-02-05', '2026-02-07', '2026-02-07', 'Entregue'),
(6, '2026-02-06', '2026-02-08', '2026-02-08', 'Entregue'),
(7, '2026-02-07', '2026-02-09', '2026-02-09', 'Entregue'),
(8, '2026-02-08', '2026-02-10', '2026-02-10', 'Entregue'),
(9, '2026-02-09', '2026-02-11', '2026-02-11', 'Entregue'),
(10, '2026-02-10', '2026-02-12', '2026-02-12', 'Entregue');

SELECT * from ENTREGA;
GO

INSERT INTO PROJETOS
(id_chave, nome, data_inicio, data_prevista, orcamento, entrega)
VALUES
(1, 'Implantacao de ERP', '2026-01-01', '2026-06-30', 150000.00, 'Sistema ERP implantado'),
(2, 'Novo site', '2026-01-05', '2026-04-30', 30000.00, 'Site publicado'),
(3, 'Aplicativo mobile', '2026-01-10', '2026-08-30', 80000.00, 'Aplicativo desenvolvido'),
(4, 'Reforma do escritorio', '2026-02-01', '2026-05-30', 50000.00, 'Escritorio reformado'),
(5, 'Treinamento interno', '2026-02-05', '2026-03-30', 12000.00, 'Equipe treinada'),
(6, 'Expansao do deposito', '2026-03-01', '2026-09-30', 95000.00, 'Deposito ampliado'),
(7, 'Campanha de marketing', '2026-03-05', '2026-06-15', 25000.00, 'Campanha realizada'),
(8, 'Modernizacao da rede', '2026-03-10', '2026-07-30', 40000.00, 'Rede atualizada'),
(9, 'Sistema de atendimento', '2026-04-01', '2026-08-30', 60000.00, 'Sistema implantado'),
(10, 'Automacao do estoque', '2026-04-10', '2026-10-30', 75000.00, 'Estoque automatizado');

SELECT * from PROJETOS;
GO