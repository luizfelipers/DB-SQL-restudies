
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
SHOW TABLES;

DESCRIBE addresses;

-- changes a column in a way that it's not the primary key anymore
ALTER TABLE addresses
DROP PRIMARY KEY,
CHANGE id id INT;

ALTER TABLE addresses ADD PRIMARY KEY (id);

DESCRIBE people;

ALTER TABLE people ADD PRIMARY KEY (id);
ALTER TABLE addresses ADD PRIMARY KEY (id);

DESCRIBE addresses;
DESCRIBE people;

ALTER TABLE people ADD CONSTRAINT FK_PeopleAddress FOREIGN KEY (address_id) REFERENCES addresses(id);

ALTER TABLE people DROP FOREIGN KEY FK_PeopleAddress;

SHOW DATABASES;
USE test;
SHOW TABLES;
DESCRIBE people;

SELECT * FROM pets;
ALTER TABLE pets ADD CONSTRAINT u_species UNIQUE (species);

DESCRIBE pets;
ALTER TABLE pets DROP INDEX u_species;

SELECT * FROM pets;
ALTER TABLE pets CHANGE `species` `animal_type`VARCHAR(20);

ALTER TABLE pets CHANGE `animal_type` `species`VARCHAR(20);
DESCRIBE pets;
DESCRIBE addresses;
ALTER TABLE addresses MODIFY city VARCHAR(20);
DESCRIBE addresses;
ALTER TABLE addresses MODIFY city VARCHAR(30);

SHOW TABLES;
DESCRIBE people;
ALTER TABLE people ADD PRIMARY KEY (id);
DESCRIBE pets;

-- Exercise 1 - Changing Keys, columns, constraints and datatypes
ALTER TABLE pets ADD CONSTRAINT FK_OwnerID FOREIGN KEY (owner_id) REFERENCES people(id);
ALTER TABLE people ADD COLUMN email VARCHAR(50);
ALTER TABLE people ADD CONSTRAINT u_email UNIQUE (email);
ALTER TABLE pets CHANGE `name` `first_name` VARCHAR(20);
DESCRIBE addresses;
ALTER TABLE addresses MODIFY zip_code CHAR(7);
