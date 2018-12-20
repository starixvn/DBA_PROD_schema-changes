/*
	Creator:	20181220@Billy
	Task:		Disable TO Control Triggers - [Redmine: #106656]
	Server:		DB053 & DB054
*/


USE bodb02;
GO

--	BEGIN STEP 1:
--		Table [bettrans]
----------------------------------------------------------------------------------------------------

DISABLE TRIGGER	dbo.bettrans_TOControl_INSERT ON dbo.bettrans;
DISABLE TRIGGER	dbo.bettrans_TOControl_UPDATE ON dbo.bettrans;


--	BEGIN STEP 2:
--		Table [translog]
----------------------------------------------------------------------------------------------------

DISABLE TRIGGER	dbo.translog_TOControl_INSERT ON dbo.translog;