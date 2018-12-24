CREATE DATABASE codegym_dbtest;

USE codegym_dbtest;

CREATE TABLE contacts
(
	contacts_id INT(11) NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(30) NOT NULL,
    first_name VARCHAR(25),
	birthday DATE,
    CONSTRAINT contacts_pk PRIMARY KEY (contacts_id)
);

CREATE TABLE suppliers
(
	supplier_id INT(11) NOT NULL AUTO_INCREMENT,
    supplier_name VARCHAR(50) NOT NULL,
    account_rep VARCHAR(30) NOT NULL DEFAULT 'TBD',
    CONSTRAINT supplier_pk PRIMARY KEY (supplier_id)
);


DROP TABLE table_name;

ALTER TABLE contacts
	ADD middle_name VARCHAR(25) NOT NULL
		AFTER contacts_id;
        
        
ALTER TABLE contacts
	DROP COLUMN col_name;
    

ALTER TABLE contacts
	CHANGE COLUMN middle_name mid_name VARCHAR(25);
    
ALTER TABLE contacts
	RENAME TO new_name

CREATE TABLE users
(
	user_id INT AUTO_INCREMENT PRIMARY KEY,
    username NVARCHAR(40),
    password NVARCHAR(255),
    email VARCHAR(255)
);


CREATE TABLE roles
(
	role_id INT AUTO_INCREMENT,
    role_name NVARCHAR(50),
    PRIMARY KEY(role_id)
);

CREATE TABLE userroles
(
	user_id INT NOT NULL,
    role_id NOT NULL,
    PRIMARY KEY(user_id, role_id),
    FOREIGN KEY(user_id) REFERENCES user(user_id),
    FOREIGN KEY(role_id) REFERENCES roles(role_id)
);

ALTER TABLE table_name
	ADD PRIMARY KEY(primary_key_column);










