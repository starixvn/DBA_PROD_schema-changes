/*
	Task - Upgrade SQL Server DB054 to 2019
		+ Enable clr enabled
	Run on db054N3
*/

--Disable clr strict security
exec sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
EXEC sp_configure 'clr strict security', 0;  
RECONFIGURE;

GO
--Enable clr enabled
exec sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
EXEC sp_configure 'clr enabled', 1;  
RECONFIGURE;

go
