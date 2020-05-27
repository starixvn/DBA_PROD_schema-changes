/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb02]
*/


--	BEGIN STEP :
--		DISABLE table's triggers on bodb02
----------------------------------------------------------------------------------------------------
USE bodb02
GO

DISABLE TRIGGER dbo.translog_after_insert4Danger_mnl 
ON dbo.translog;