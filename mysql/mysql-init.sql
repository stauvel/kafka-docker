GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'replicator' IDENTIFIED BY 'replpass';

GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT  ON *.* TO 'debezium' IDENTIFIED BY 'dbz';


CREATE DATABASE mydb;

USE mydb;

CREATE TABLE account (
	number VARCHAR(50) NOT NULL PRIMARY KEY,
	balance	INT
);

CREATE TABLE card (
	number VARCHAR(50),
	limit INT,
	account_number VARCHAR(50) NOT NULL,
	FOREIGN KEY (account_number) REFERENCES account(number)
);

INSERT INTO account(number, balance) VALUES ('123', 1000);
INSERT INTO card(number, account_number, limit) VALUES ('111', '123', 1000);
