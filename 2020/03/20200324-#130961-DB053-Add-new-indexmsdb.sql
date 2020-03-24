/*
	Task - Implement remove backup history data
		+ Add new index to improve performance when deleting data
	Run on DB053/msdb
*/
USE [msdb]
GO

CREATE NONCLUSTERED INDEX [IX_backupset_media_setid] ON [dbo].[backupset]
(
	[media_set_id] ASC
) ON [PRIMARY]
GO


USE [msdb]
GO

CREATE NONCLUSTERED INDEX [IX_restorefile_historyid] ON [dbo].[restorefile]
(
	[restore_history_id] ASC
) ON [PRIMARY]
GO


