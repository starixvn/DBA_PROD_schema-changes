/*
	20180809@Patrick
	Task: Remove indexes on DB042
	Run at DB042.bodb02
*/

--//bettrans
DROP INDEX IX_custid ON dbo.bettrans --> ok
DROP INDEX IX_srecommend ON dbo.bettrans --> ok
DROP INDEX bettrans16 ON dbo.bettrans --> ok
DROP INDEX IX_custid_matchid_bettype ON dbo.bettrans --> ok

--//change index IX_winlostdate_statusID to IX_winlostdate
DROP INDEX IX_winlostdate_statusID ON dbo.bettrans
CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[bettrans]
(
	[winlostdate] ASC
)WITH (ONLINE = OFF) ON [bettrans_index1]
GO

--//bettransRnG
DROP INDEX IX_custid_running ON dbo.bettransRnG --> ok
DROP INDEX IX_recommend ON dbo.bettransRnG --> ok
DROP INDEX IX_custid ON dbo.bettransRnG --> ok
DROP INDEX IX_RefNo ON dbo.bettransRnG --> ok

--//change index IX_winlostdate_statusID to IX_winlostdate
DROP INDEX IX_WinLostDate_StatusId ON dbo.bettransRnG
CREATE NONCLUSTERED INDEX [IX_WinLostDate] ON [dbo].[bettransRnG]
(
	[winlostdate] ASC
) ON [bettransRnG_index]
GO

--//translog
DROP INDEX IX_custid2 ON dbo.translog --> ok
DROP INDEX IX_recommend ON dbo.translog --> ok
DROP INDEX IX_custid ON dbo.translog --> ok
DROP INDEX IX_srecommend_EventID ON dbo.translog --> ok

--//bettransLC
DROP INDEX IX_custid_running ON dbo.bettransLC --> ok
DROP INDEX IX_recommend ON dbo.bettransLC --> ok
DROP INDEX IX_RefNo ON dbo.bettransLC --> ok
DROP INDEX IXM_winlostdate_IsSum ON dbo.bettransLC --> ok
DROP INDEX IX_custid ON dbo.bettransLC --> ok

--//change index IX_winlostdate_statusID to IX_winlostdate
DROP INDEX IX_WinLostDate_StatusId ON dbo.bettransLC
CREATE NONCLUSTERED INDEX [IX_WinLostDate] ON [dbo].[bettransLC]
(
	[winlostdate] ASC
) ON [bettransLC_index]
GO