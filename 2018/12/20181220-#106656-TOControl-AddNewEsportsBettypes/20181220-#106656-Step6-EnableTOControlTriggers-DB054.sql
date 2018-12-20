/*
	Creator:	20181220@Billy
	Task:		Disable TO Control Triggers on DB053 - [Redmine: #106656]
	Server:		DB053
*/


USE bodb02;
GO

--	BEGIN STEP 1:
--		Table [bettrans]
----------------------------------------------------------------------------------------------------

DISABLE TRIGGER	dbo.bettrans_TOControl_INSERT ON dbo.bettrans;
DISABLE TRIGGER	dbo.bettrans_TOControl_UPDATE ON dbo.bettrans;