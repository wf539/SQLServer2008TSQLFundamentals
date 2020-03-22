USE master;
CREATE DATABASE projects
	ON (NAME = projects_dat,
		FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\projects.mdf',
		SIZE = 10,
		MAXSIZE = 100,
		FILEGROWTH = 5)
	LOG ON (NAME = projects_log,
			FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\projects.ldf',
			SIZE = 40,
			MAXSIZE = 100,
			FILEGROWTH = 10);