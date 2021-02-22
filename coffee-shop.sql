SHOW DATABASES;

--creating a coffee shop database
CREATE DATABASE coffee_store;

USE coffee_store;

--creting the table for products
CREATE TABLE produtos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    preco DECIMAL(3,2)
    );
    
    SHOW TABLES;
--creating tables for clients
CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30),
    sobrenome VARCHAR(30),
    genero ENUM('M','F'),
    telefone VARCHAR(12)
    
);
--creating order tables, with ForeignKeys for Products and Clients
CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    cliente_id INT, 
    hora_pedido DATETIME,
    FOREIGN KEY (produto_id) REFERENCES produtos(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

SHOW TABLES;

DESCRIBE products;
SELECT * FROM products;

-- inserting some coffee data into the Products table
INSERT INTO products(name, price, coffee_origin)
VALUES ('Pelé Espresso', 9.50, 'Brazil' );

INSERT INTO products (name, price, coffee_origin) VALUES ('Starfake', 8.50, 'USA'), ('Nespressinho', 8.99, 'Brazil'), ('Cafézinho Pilão', 7.50, 'Brazil');

INSERT INTO products (name, price, coffee_origin) VALUES ('Caputinho', 9.99, 'Costa Rica');

SHOW TABLES;
SELECT * FROM products;
INSERT INTO products (name, price, coffee_origin) VALUES ('Latte', 3.50, 'Indonesia'), ('Americano', 3.00, 'Brazil'), ('Flat White', 3.50, 'Indonesia'), ('Filtrado', 3.00, 'India');


SELECT * FROM products;

-- updating values that match a Primary Key
UPDATE products SET coffee_origin = 'Chininha' WHERE id = 7;

--Setting the safe updates to false, so we're able to update other datas that are not Primary Keys
SET SQL_SAFE_UPDATES = 0;
-- updating the coffee origin of items that have values 'India' to 'Chininha'
UPDATE products SET coffee_origin = 'Chininha' WHERE coffee_origin='India';
SELECT * FROM products; -- seeing the result

-- testing the update method to a an item that has the 'Americano' name
UPDATE products SET price = 3.25, coffee_origin='PQP' WHERE name='Americano';
SELECT * FROM products;


SELECT * FROM customers;
SELECT * FROM orders;

-- populating the customers table
DESCRIBE customers;
INSERT INTO customers (first_name, last_name, gender, phone_number) VALUES ('Luiz', 'Silveira', 'M', 456787898), ('Felipinho', 'Bonitinho', 'M', 56746757), ('Claudia', 'Silva', 'F', 5789045), ('Omar', 'Silveira', 'M', 456789765), ('Aninha', 'Silveira', 'F',45787895), ('Luiz', 'Rosa', 'M', 67889945);

INSERT INTO customers (first_name, last_name, gender, phone_number) VALUES ('Luiz', 'Silveira', 'M', 456787898), ('Felipinho', 'Bonitinho', 'M', 56746757), ('Claudia', 'Silva', 'F', 5789045), ('Omar', 'Silveira', 'M', 456789765), ('Aninha', 'Silveira', 'F',45787895), ('Luiz', 'Rosa', 'M', 67889945);
DESCRIBE customers;
DESCRIBE orders;
INSERT INTO orders (product_id, customer_id, order_time) VALUES (1, 25, '1905-01-01 00:50:00'),(2, 25, '1905-02-01 00:20:00'),(8, 26, '1905-01-01 01:50:00'),(3, 26, '2018-01-01 00:50:00'),(6, 29, '2018-01-01 10:50:00'),(1, 30, '2018-01-01 12:50:00'),(4, 27, '2019-05-01 17:50:44'),(7, 26, '2018-06-27 07:50:24');
SELECT * FROM orders;

TRUNCATE TABLE orders;

-- inserting more customers data
INSERT INTO customers(first_name, last_name, gender, phone_number) VALUES ('Chris','Martin','M','01123147789'),('Emma','Law','F','01123439899'),('Mark','Watkins','M','01174592013'),('Daniel','Williams','M',NULL),('Sarah','Taylor','F','01176348290'),('Katie','Armstrong','F','01145787353'),('Michael','Bluth','M','01980289282'),('Kat','Nash','F','01176987789'),('Buster','Bluth','M','01173456782'),('Charlie',NULL,'F','01139287883'),('Lindsay','Bluth','F','01176923804'),('Harry','Johnson','M',NULL),('John','Smith','M','01174987221'),('John','Taylor','M',NULL),('Emma','Smith','F','01176984116'),('Gob','Bluth','M','01176985498'),('George','Bluth','M','01176984303'),('Lucille','Bluth','F','01198773214'),('George','Evans','M','01174502933'),('Emily','Simmonds','F','01899284352'),('John','Smith','M','01144473330'),('Jennifer',NULL,'F',NULL),('Toby','West','M','01176009822'),('Paul','Edmonds','M','01966947113');
SELECT * FROM customers;
-- order data insertion
INSERT INTO orders (product_id,customer_id,order_time) VALUES (1,31,'2017-01-01 08-02-11'),(1,32,'2017-01-01 08-05-16'),(5,32,'2017-01-01 08-44-34'),(3,44,'2017-01-01 09-20-02'),(1,39,'2017-01-01 11-51-56'),(6,42,'2017-01-01 13-07-10'),(1,41,'2017-01-02 08-03-41'),(3,50,'2017-01-02 09-15-22'),(2,42,'2017-01-02 10-10-10'),(3,53,'2017-01-02 12-07-23'),(1,41,'2017-01-03 08-13-50'),(7,46,'2017-01-03 08-47-09'),(6,51,'2017-01-03 09-12-11'),(5,52,'2017-01-03 11-05-33'),(4,43,'2017-01-03 11-08-55'),(3,41,'2017-01-03 12-02-14'),(2,43,'2017-01-03 13-41-22'),(1,31,'2017-01-04 08-08-56'),(3,50,'2017-01-04 11-23-43'),(4,52,'2017-01-05 08-30-09'),(7,41,'2017-01-06 09-02-47'),(3,48,'2017-01-06 13-23-34'),(2,46,'2017-01-07 09-12-39'),(2,34,'2017-01-07 11-24-15'),(4,35,'2017-01-08 08-54-11'),(1,31,'2017-01-09 08-03-11'),(6,50,'2017-01-10 10-34-12'),(3,43,'2017-01-10 11-02-11'),(4,44,'2017-01-11 08-39-11'),(4,48,'2017-01-12 13-20-13'),(1,41,'2017-01-14 08-27-10'),(4,45,'2017-01-15 08-30-56'),(1,47,'2017-01-16 10-02-11'),(2,50,'2017-01-17 09-50-05'),(1,51,'2017-01-18 08-22-55'),(3,49,'2017-01-19 09-00-19'),(7,51,'2017-01-19 11-33-00'),(6,32,'2017-01-20 08-02-21');
SELECT * FROM orders;


SELECT * FROM customers;
-- returns the 'last_name' column from 'customers' table
SELECT last_name FROM customers;
-- returns the 'last_name' and 'phone_number' columns from 'customers' table
SELECT last_name, phone_number FROM customers;

SELECT * FROM products;
-- returns all registers that match the entire Where Clause (price= 9.50 AND coffee_origin='Brazil' )
SELECT * FROM products WHERE price = 9.50 AND coffee_origin='Brazil';
-- returns all products that satisfies at least one of the statements conditions of the WHERE clause (price=9.50 OR coffee_origin='Brazil' )
SELECT * FROM products WHERE price= 9.50 OR coffee_origin='Brazil';

--returns all products that have their prices below 9.00
SELECT * FROM products WHERE price >= 9.00;


SELECT * FROM customers;
-- returns all registers that have NULL values on the 'phone_number' column
SELECT * FROM customers WHERE phone_number IS NULL;
-- returns all registers that their phone_number column value IS NOT NULL
SELECT * FROM customers WHERE phone_number IS NOT NULL;

-- returns all registers from the customers table that contains the passed values on the last_name column
SELECT * FROM customers WHERE last_name IN('Silveira', 'Rosa', 'Armstrong','Bluth');
-- returns all registers from the customers table that DON'T contains the passed values on the last_name column
SELECT * FROM customers WHERE last_name NOT IN ('Silveira','Rosa','Armstrong');

-- retorna todos os registros da tabela customers onde os dados contidos na coluna last_name começam com uma letra entre A e L.
SELECT * FROM customers WHERE last_name BETWEEN 'A' AND 'L';
-- retorna os dados da tabela orders, dos customers_id (chave estrangeira) estão entre 2 e 15
SELECT product_id, customer_id, order_time FROM orders WHERE customer_id BETWEEN 2 AND 15;

-- retorna todos os registros da tabela customers, do DB coffee_store, em que os registros na coluna last_name comecem com W e possuam qualquer número de caracteres.
SELECT * FROM customers WHERE last_name LIKE 'W%';
-- retorna todos os registros da tabela customers, do DB coffee_store, em que os registros na coluna 'last_name' possuam a letra o.
SELECT * FROM customers WHERE last_name LIKE '%o%';

-- retorna todos os registros da tabela customers, do DB coffee_store, em que os registros na coluna 'first_name' sigam a estrutura (_letra_),
-- sendo que os underscores representam qualquer caractere, porém, a palavra precisa possuir apenas 3 caracteres, sendo que a letra do meio é a letra definida pelo dba
SELECT * FROM customers WHERE first_name LIKE '_o_';

-- retorna todos os registros da tabela products, onde os dados na coluna price comecem com 3 e contenham quaisquer caracteres depois
SELECT * FROM products WHERE price LIKE '3%';

-- retorna todos os registros da tabela products, onde os dados retornam ordenados de forma crescente pelos valores contidos na coluna price
SELECT * FROM products ORDER BY price ASC;
-- retorna todos os registros da tabela products, onde os dados são ordenados de forma decrescente pelos valores da coluna price
SELECT * FROM products ORDER BY price DESC;

-- retorna os registros da tabela 'customers', ordenando os registros de 'last_name' alfabeticamente
SELECT * FROM customers ORDER BY last_name ASC; -- valores null são os primeiros a aparecerem
-- retorna os registros da tabela 'customers', ordenando os registros de 'last_name' de forma decrescente ao alfabeto
SELECT * FROM customers ORDER BY last_name DESC;
-- retorna todas as origens distintas de café
SELECT DISTINCT coffee_origin FROM products;

-- teste do Limit statement, que limita o número de resultados aos 5 primeiros registros retornados pela query
SELECT * FROM products LIMIT 5;

-- retorna os 5 primeiros registros, com um deslocamento de 5 registros antes, e ordenados via ordem alfabética em relação ao last_name
SELECT * FROM customers ORDER BY last_name LIMIT 5 OFFSET 5;

-- JOINS

-- inner join

SELECT * FROM products;
DESCRIBE orders;
SELECT * FROM orders;
-- o comando acima retorna todos os dados da tabela Orders, mas Product_Id não é uma informação que revela muita coisa,
-- e para isso, é útil juntar a tabela orders com products, para revelar o significado de product_id
SELECT * FROM orders INNER JOIN products ON orders.product_id = products.id;

-- realiza a mesma inner join acima, porém, só retorna os dados de products.name e orders.order_time
SELECT products.name, orders.order_time FROM orders INNER JOIN products ON orders.product_id = products.id;

-- realiza a mesma query acima, mas reescrevendo as tabelas e colunas de uma forma simplificada
SELECT p.name, o.order_time FROM orders o INNER JOIN products p ON o.product_id = p.id;
