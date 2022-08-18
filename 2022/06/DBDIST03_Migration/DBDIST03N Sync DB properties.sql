/*
	Task - Upgrade SQL Server DBDIST03 to 2019
		7- Set COMPATIBILITY_LEVEL=150 (8)
		8- Set owner db to 'sa'
	Run on DBDIST03N
*/

USE master
GO
ALTER DATABASE [MONDB] SET COMPATIBILITY_LEVEL = 150;
ALTER DATABASE [Monitor] SET COMPATIBILITY_LEVEL = 150;

USE master
GO
EXEC [MONDB].dbo.sp_changedbowner @loginame = N'sa'
EXEC [Monitor].dbo.sp_changedbowner @loginame = N'sa'