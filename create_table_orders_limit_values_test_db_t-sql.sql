USE test_db;
CREATE TYPE type_quantity
	FROM TINYINT NOT NULL;
	
USE test_db;
DROP TABLE orders;
GO

USE test_db;
CREATE TABLE orders (
	orderid INTEGER NOT NULL,
	customerid CHAR(5) NOT NULL,
	orderdate DATE DEFAULT GETDATE(),
	shippeddate DATE NULL,
	freight MONEY NULL,
	shipname VARCHAR(40) NULL,
	shipaddress VARCHAR(60) NULL,
	quantity type_quantity NULL,
	CHECK (quantity BETWEEN 1 AND 30),
	CONSTRAINT prim_order PRIMARY KEY (orderid),
	CONSTRAINT foreign_order FOREIGN KEY (customerid)
		REFERENCES customers(customerid));
GO