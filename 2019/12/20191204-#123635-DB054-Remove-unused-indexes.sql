/*
	Task - Drop unused indexes on bettrans | bettransRnG | bettransLC | translog
	Run on DB054.bodb02
*/

--//bettrans
DROP INDEX [IX_custid] ON [dbo].[bettrans]
DROP INDEX [IX_mrecommend] ON [dbo].[bettrans]
DROP INDEX [IX_recommend] ON [dbo].[bettrans]
DROP INDEX [IX_srecommend] ON [dbo].[bettrans]
DROP INDEX [IX_tstamp_transid] ON [dbo].[bettrans]

--//bettransLC
DROP INDEX [IX_custid] ON [dbo].[bettransLC]
DROP INDEX [IX_mrecommend] ON [dbo].[bettransLC]
DROP INDEX [IX_recommend] ON [dbo].[bettransLC]
DROP INDEX [IX_RefNo] ON [dbo].[bettransLC]
DROP INDEX [IX_srecommend] ON [dbo].[bettransLC]

--//bettransRnG
DROP INDEX [IX_custid] ON [dbo].[bettransRnG]
DROP INDEX [IX_mrecommend] ON [dbo].[bettransRnG]
DROP INDEX [IX_recommend] ON [dbo].[bettransRnG]
DROP INDEX [IX_RefNo] ON [dbo].[bettransRnG]
DROP INDEX [IX_srecommend] ON [dbo].[bettransRnG]

--//translog
DROP INDEX [IX_recommend] ON [dbo].[translog]

GO
