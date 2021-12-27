/*
	Task - Upgrade SQL Server DB054 to 2019
		1- DB054N3: Change instance name to DB054
	Run on db054N3
*/

-- DB054N3(Single) ( -> DB054)
-- 1.First collect the output of the current instance configuration
EXEC sp_helpserver 'DB054N3'
SELECT @@servername

-- 2.EXECute the below query to change the instance name
EXEC sp_dropserver 'DB054N3' 
GO 
EXEC sp_addserver 'DB054' , 'local'
GO

