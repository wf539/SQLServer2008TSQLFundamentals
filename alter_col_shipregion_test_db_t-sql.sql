USE test_db;
ALTER TABLE orders 
	ALTER COLUMN shipregion CHAR(8) NULL;