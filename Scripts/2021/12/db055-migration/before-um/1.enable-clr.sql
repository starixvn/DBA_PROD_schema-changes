/*
	Task - Upgrade SQL Server DB055 to 2019
		+ Enable clr enabled
	Run on db055N1
*/

--Disable clr strict security
sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
EXEC sp_configure 'clr strict security', 0;  
RECONFIGURE;

GO
--Enable clr enabled
sp_configure 'show advanced options', 1;
GO
RECONFIGURE;
GO
EXEC sp_configure 'clr enabled', 1;  
RECONFIGURE;

go
