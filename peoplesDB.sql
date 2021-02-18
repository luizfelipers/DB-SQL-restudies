
-- creating test DB to store Adresses, People's infos and theirs pets infos.
CREATE DATABASE test;
USE test;

-- creating the Address table
CREATE TABLE addresses(
	id INT AUTO_INCREMENT PRIMARY KEY,
    house_number INT,
    city VARCHAR(30),
    zip_code VARCHAR(10)
);
SHOW TABLES;

-- creating tables without setting Primary Key and Foreign Key
CREATE TABLE people(
id INT,
first_name VARCHAR(20),
last_name VARCHAR(20),
address_id INT -- represents the Foreign Key to the Addresses's table

);

-- creating tables without setting Primary Key and Foreign Key
CREATE TABLE pets(
	id INT,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT -- represents the Foreign Key to the People's table

);
