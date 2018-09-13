/*
	Task: Index revolution @ bettransG
	Run on bodb02 @ DB054
*/
--=======================bettransG====================================
--//drop index
drop index IX_bettransG_2 on dbo.bettransG

--//create index
CREATE NONCLUSTERED INDEX [IX_refno_bettype] ON [dbo].[bettransG]
(
	[refno] ASC,
	[bettype] ASC
)INCLUDE (odds, stake, status, betteam, apositiontaking, mpositiontaking, spositiontaking) 
WITH (DROP_EXISTING = OFF, ONLINE = OFF, FILLFACTOR = 80) ON [BettransG]
GO

CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[bettransG]
(
	[winlostdate] ASC
)
WITH (DROP_EXISTING = ON, ONLINE = OFF, FILLFACTOR = 80) ON [BettransG]
GO

--==rebuild index with fill factor
ALTER INDEX IX_bettransG ON dbo.bettransG REBUILD WITH (FILLFACTOR = 80)
ALTER INDEX IX_matchid ON dbo.bettransG REBUILD WITH (FILLFACTOR = 80)
ALTER INDEX PK_BettransG ON dbo.bettransG REBUILD WITH (FILLFACTOR = 80)

--=====================bettransG14======================
--==rebuild index with fill factor
ALTER INDEX IX_bettransG14 ON dbo.bettransG14 REBUILD WITH (FILLFACTOR = 90)
ALTER INDEX IX_winlostdate ON dbo.bettransG14 REBUILD WITH (FILLFACTOR = 90)
ALTER INDEX PK_bettransG14 ON dbo.bettransG14 REBUILD WITH (FILLFACTOR = 90)