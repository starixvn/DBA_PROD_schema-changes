/*
	Task - Upgrade SQL Server DB055 to 2019
		1- DB055: Change instance name to DB055OLD
	Run on db055
*/

-- DB055(Single) ( -> DB055OLD)
-- 1.First collect the output of the current instance configuration
EXEC sp_helpserver 'DB055'
SELECT @@servername

-- 2.EXECute the below query to change the instance name
EXEC sp_dropserver 'DB055' 
GO 
EXEC sp_addserver 'DB055OLD' , 'local'
GO

