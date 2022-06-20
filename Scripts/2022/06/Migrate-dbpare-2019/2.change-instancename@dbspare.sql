/*
	Task - Upgrade SQL Server DBSPARE to 2019
		1- DB055: Change instance name to DBSPARE19OLD
	Run on DBSPARE
*/

-- 1.First collect the output of the current instance configuration
EXEC sp_helpserver 'DBSPARE'
SELECT @@servername

-- 2.EXECute the below query to change the instance name
EXEC sp_dropserver 'DBSPARE' 
GO 
EXEC sp_addserver 'DBSPARE19OLD' , 'local'
GO

