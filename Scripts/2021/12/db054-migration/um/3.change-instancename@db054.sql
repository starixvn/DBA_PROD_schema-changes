/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB054: Change instance name to DB054OLD
	Run on db054
*/

-- DB054(Single) ( -> DB054OLD)
-- 1.First collect the output of the current instance configuration
EXEC sp_helpserver 'DB054C2\DB054'
SELECT @@servername

-- 2.EXECute the below query to change the instance name
EXEC sp_dropserver 'DB054C2\DB054' 
GO 
EXEC sp_addserver 'DB054C2\DB054OLD' , 'local'
GO

