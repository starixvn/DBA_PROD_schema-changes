/*
	Task - Upgrade SQL Server DBSPARE to 2019
		1- DB055N1: Change instance name to DBSPARE
	Run on DBSPAREN1
*/
-- 1.First collect the output of the current instance configuration
EXEC sp_helpserver 'DBSPAREN1'
SELECT @@servername

-- 2.EXECute the below query to change the instance name
EXEC sp_dropserver 'DBSPAREN1' 
GO 
EXEC sp_addserver 'DBSPARE' , 'local'
GO

