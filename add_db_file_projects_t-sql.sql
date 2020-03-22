USE master;
GO
ALTER DATABASE projects
	ADD FILE (NAME = projects_dat1,
		FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\projects1.mdf',
		SIZE = 10,
		MAXSIZE = 100,
		FILEGROWTH = 5);