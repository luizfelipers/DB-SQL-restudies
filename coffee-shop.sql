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
