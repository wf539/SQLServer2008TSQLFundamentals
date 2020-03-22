USE sample;
CREATE TABLE Item_Attributes (
	item_id INT NOT NULL,
	attribute NVARCHAR(30) NOT NULL,
	value SQL_VARIANT NOT NULL,
	PRIMARY KEY (item_id, attribute));