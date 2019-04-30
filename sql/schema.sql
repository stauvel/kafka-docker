CREATE TABLE account (
	number VARCHAR(50) NOT NULL PRIMARY KEY,
	owner VARCHAR(50),
	balance	INT
);

CREATE TABLE card (
	number VARCHAR(50),
	ceiling INT,
	account_number VARCHAR(50) NOT NULL,
	FOREIGN KEY (account_number) REFERENCES account(number)
);

