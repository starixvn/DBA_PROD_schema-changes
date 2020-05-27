/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb02]
*/


--	BEGIN STEP :
--		Alter tables on bodb02
----------------------------------------------------------------------------------------------------
USE bodb02
GO

ALTER TABLE dbo.Tickets_settled_setting
ALTER COLUMN svalue varchar(200)