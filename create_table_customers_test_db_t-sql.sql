USE test_db;
CREATE TABLE customers (
	customerid CHAR(5) NOT NULL,
	companyname VARCHAR(40) NOT NULL,
	contactname CHAR(30) NOT NULL,
	address VARCHAR(60) NULL,
	city CHAR(15) NULL,
	phone CHAR(24) NULL,
	fax CHAR(24) NULL);