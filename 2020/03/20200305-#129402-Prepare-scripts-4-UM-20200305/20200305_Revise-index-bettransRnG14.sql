USE [bodb02]
GO
/*
	Task - Revise index for deletting data bettransRnG14
	Run DBTrans.bodb02
*/
DROP INDEX [IX_recommend] ON [dbo].[bettransRnG14]
GO

CREATE NONCLUSTERED INDEX IX_Winlostdate ON dbo.bettransRnG14(winlostdate) ON [bettransRnG14_index]

GO
