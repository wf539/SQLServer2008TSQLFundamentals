USE test_db;
ALTER TABLE orders
	DROP CONSTRAINT foreign_order;
GO

USE test_db;
DROP TABLE customers;
GO

CREATE TABLE customers (
	customerid CHAR(5) NOT NULL,
	companyname VARCHAR(40) NOT NULL,
	contactname CHAR(30) NOT NULL,
	address VARCHAR(60) NULL,
	town CHAR(15) NULL,
	phone CHAR(24) NULL,
	fax CHAR(24) NULL,
	CONSTRAINT prim_cust PRIMARY KEY (customerid));
GO

USE test_db;
ALTER TABLE orders
	ADD CONSTRAINT foreign_order FOREIGN KEY (customerid)
		REFERENCES customers(customerid);