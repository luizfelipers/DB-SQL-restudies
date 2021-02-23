USE coffee_store;

-- define o novo delimitador de ; para //, de modo que não pare a execução do comando durante a chamada encontrada na linha 6 (BEGIN SELECT * FROM customers;)
DELIMITER //
-- cria a stored procedure
CREATE PROCEDURE SelectAllCustomers() 
  BEGIN SELECT * FROM customers;
 END//

-- re-define o delimitador para ;
DELIMITER ;

-- chama a stored procedure criada, que retorna todos os dados da tabela Customers no BD Coffee_Store
CALL SelectAllCustomers();
