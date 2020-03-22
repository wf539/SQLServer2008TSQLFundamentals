USE test_db;
DROP TABLE customers;
GO

USE test_db;
CREATE TABLE customers (
	customerid CHAR(5) NOT NULL ,
	companyname VARCHAR(40) NOT NULL,
	contactname CHAR(30) NOT NULL,
	address VARCHAR(60) NULL,
	city CHAR(15) NULL,
	phone CHAR(24) NULL,
	fax CHAR(24) NULL,
	CONSTRAINT prim_cust PRIMARY KEY (customerid));
GO

USE test_db;
DROP TABLE orders;
GO

USE test_db;
CREATE TABLE orders (
	orderid INTEGER NOT NULL,
	customerid CHAR(5) NOT NULL,
	orderdate DATE NULL,
	shippeddate DATE NULL,
	freight MONEY NULL,
	shipname VARCHAR(40) NULL,
	shipaddress VARCHAR(60) NULL,
	quantity INTEGER NULL,
	CONSTRAINT prim_order PRIMARY KEY (orderid),
	CONSTRAINT foreign_order FOREIGN KEY (customerid)
		REFERENCES customers(customerid));
GO
