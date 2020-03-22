USE master;
GO
ALTER DATABASE test_db
	MODIFY FILE (NAME = test_db_dat,
		FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\test_db.mdf',
		SIZE = 10,
		MAXSIZE = UNLIMITED,
		FILEGROWTH = 2);