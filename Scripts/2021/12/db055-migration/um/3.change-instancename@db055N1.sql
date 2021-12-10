/*
	Task - Upgrade SQL Server DB055 to 2019
		1- DB055N1: Change instance name to DB055
	Run on db055N1
*/

-- DB055N1(Single) ( -> DB055)
-- 1.First collect the output of the current instance configuration
EXEC sp_helpserver 'DB055N1'
SELECT @@servername

-- 2.EXECute the below query to change the instance name
EXEC sp_dropserver 'DB055N1' 
GO 
EXEC sp_addserver 'DB055' , 'local'
GO

