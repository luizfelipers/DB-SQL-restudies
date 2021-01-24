-- criação de bd de exemplo 'exemplo'

CREATE DATABASE exemplo;

-- acesso ao bd 'exemplo'
USE exemplo;

-- mostrar todas as tabelas no bd acessado
SHOW TABLES;

-- criacao de tabela de teste 'teste' para o bd 'exemplo', com dados ID (int), nome(string/varchar) e idade(int)
CREATE TABLE teste(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT

);
-- mostrar as tabelas do bd acessado, com a tabela teste criada
SHOW TABLES;

-- mostra os dados da tabela 'teste' criada. Inicializada vazia
SELECT * FROM teste;
SHOW TABLES;

-- deletar a table 'teste'
DROP TABLE teste;

-- retorna erro uma vez que não existe mais tabela 'teste'   (excluída na linha anterior)
SELECT * FROM teste;

-- mostra as tabelas do bd exemplo, que não contém mais a tabela 'teste'
SHOW TABLES;
