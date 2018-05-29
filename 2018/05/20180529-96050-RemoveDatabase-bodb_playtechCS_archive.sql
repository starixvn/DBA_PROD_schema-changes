/*
	Creator:	20180529@Billy
	Task:		Remove bodb_playtechCS_archive database - [Redmine: #96050]
	Server:		DB06
*/


--	BEGIN STEP 1:
--		Set database ONLINE
----------------------------------------------------------------------------------------------------

USE	master;
GO

ALTER DATABASE	bodb_playtechCS_archive SET ONLINE;
GO


--	BEGIN STEP 2:
--		Schema is backed-up. There is no data so no need to backup database.
----------------------------------------------------------------------------------------------------


--	BEGIN STEP 3:
--		Drop database
----------------------------------------------------------------------------------------------------

USE	master;
GO

EXECUTE msdb.dbo.sp_delete_database_backuphistory @database_name = N'bodb_playtechCS_archive';
GO

ALTER DATABASE	bodb_playtechCS_archive SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

USE master;
GO

DROP DATABASE	bodb_playtechCS_archive;
GO
