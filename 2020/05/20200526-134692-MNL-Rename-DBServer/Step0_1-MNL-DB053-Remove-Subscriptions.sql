/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.master]
*/


--	BEGIN STEP :
--		Remove subscription databases
----------------------------------------------------------------------------------------------------
use master;
GO

-- Remove replication objects from the subscription database on DB053.
DECLARE @subscriptionDB AS sysname

SET @subscriptionDB = N'bodb02'
EXEC sp_removedbreplication @subscriptionDB

SET @subscriptionDB = N'bodb_licensee'
EXEC sp_removedbreplication @subscriptionDB
