USE sample;
CREATE TABLE sales (
	order_no INT NOT NULL,
	order_date DATE NOT NULL,
	ship_date DATE NOT NULL);
ALTER TABLE sales
	ADD CONSTRAINT order_check CHECK (order_date <= ship_date);