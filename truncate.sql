
-- uso de db criado previamente
USE exemplo;

SHOW TABLES;
-- mostrar os dados pré-populados na tabela de exemplo
SELECT * FROM teste;

-- deleta todos os registros da tabela mas não deleta a tabela em si
TRUNCATE TABLE teste;

-- mostra a tabela 'teste' vazia
SELECT * FROM teste;
