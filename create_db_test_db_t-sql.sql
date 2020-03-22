USE master;
CREATE DATABASE test_db
	ON (NAME = test_db_dat,
		FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\test_db.mdf',
		SIZE = 5,
		MAXSIZE = UNLIMITED,
		FILEGROWTH = 8%)
	LOG ON (NAME = test_db_log,
			FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\test_db.ldf',
			SIZE = 2,
			MAXSIZE = 10,
			FILEGROWTH = 500KB);