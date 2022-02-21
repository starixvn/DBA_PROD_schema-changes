/*
	Task: Rename unused DB - bodb_ACC
	DB: DB061.bodb_ACC@KBT, DB061.bodb_ACC@AWS, DB061.bodb_ACC@MNL
	Redmine: https://nexdev.net/issues/152636
*/


USE master;  
GO  
select @@serverName 
-- DB061
GO

ALTER DATABASE bodb_ACC SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
ALTER DATABASE bodb_ACC MODIFY NAME = bodb_ACC_UAT_DEL;
GO  
ALTER DATABASE bodb_ACC_UAT_DEL SET MULTI_USER;
GO