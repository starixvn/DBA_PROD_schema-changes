/*
	Creator:	20181220@Billy
	Task:		Enable TO Control Triggers on DB054 - [Redmine: #106656]
	Server:		DB054
*/


USE bodb02;
GO

--	BEGIN STEP 1:
--		Table [translog]
----------------------------------------------------------------------------------------------------

ENABLE TRIGGER	dbo.translog_TOControl_INSERT ON dbo.translog;