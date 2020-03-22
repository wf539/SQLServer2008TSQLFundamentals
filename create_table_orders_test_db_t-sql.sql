USE test_db;
CREATE TABLE orders (
	orderid INTEGER NOT NULL,
	customerid CHAR(5) NOT NULL,
	orderdate DATE NULL,
	shippeddate DATE NULL,
	freight MONEY NULL,
	shipname VARCHAR(40) NULL,
	shipaddress VARCHAR(60) NULL,
	quantity INTEGER NULL);