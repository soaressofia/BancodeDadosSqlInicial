

-----------ALTERANDO TABELAS ----------
---------------------------------------
-----------criar tabela-----------------

CREATE TABLE Teste (
    Id_Teste INT PRIMARY KEY, --CHAVE PRIMARIA
    DESCRICAO VARCHAR(50)
);

--------INSERINDO DADOS NA TABELA--------
INSERT INTO Teste (Id_Teste, descricao) 
VALUES (1,'Primeiro registro');

Select * FROM Teste;
 
 ------- ADICIONAR COLUNA ----------
 ALTER TABLE Teste
 ADD Observacao VARCHAR(100) NOT NULL;

 SELECT * FROM Teste;

 INSERT INTO Teste (Id_Teste, descricao, Observacao)
 VALUES('3', 'Registro criado depois', 'Terceira observacao');
 

 SELECT * FROM Teste;

 UPDATE Teste
 SET Observacao = 'Registro revisado pelo professor'
 WHERE Id_Teste=1;

  --------- DELETAR TABELAS -------------
  DROP TABLE Teste;
  GO

  SELECT * FROM Teste;

  SELECT name From sys.tables;
  GO




 