/*
	Task - Upgrade SQL Server DB055 to 2019
		+ Enable clr enabled
	Run on db055N1
*/

--Disable clr strict security
EXEC sp_configure 'clr strict security', 0;  
RECONFIGURE;

--Enable clr enabled
EXEC sp_configure 'clr enabled', 1;  
RECONFIGURE;

go
