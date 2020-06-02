/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb02]
*/


--	BEGIN STEP :
--		ENABLE/DISABLE table's triggers on bodb02
----------------------------------------------------------------------------------------------------
USE bodb02
GO

ENABLE TRIGGER [dbo].[db042_bettrans_instead_of_insert_mnl]
ON [dbo].[bettrans];

DISABLE TRIGGER dbo.translog_after_insert4Danger_mnl 
ON dbo.translog;