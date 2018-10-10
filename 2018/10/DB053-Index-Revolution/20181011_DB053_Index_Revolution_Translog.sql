/*
	Task: Index revolution @ translog
	Run on bodb02 @ DB053
*/
--=======================translog====================================
--//drop index
drop index IX_custid on dbo.translog
drop index IX_custid2 on dbo.translog
drop index IX_mrecommend on dbo.translog
drop index IX_recommend on dbo.translog
drop index IX_srecommend_EventID on dbo.translog

--//create index
CREATE NONCLUSTERED INDEX [IX_betrunning_custid] ON [dbo].[translog]
(
	[custid] ASC
)
INCLUDE (gameid, eventID, odds, status, statusid, stake, actual_stake, transdate, apositiontaking, mpositiontaking, spositiontaking, discount, adiscount, sdiscount, ip, custom1, custom2, custom3, transdesc, GameId3rd, TranId3rd, LiveIndicator,winlostdate) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_mrecommend] ON [dbo].[translog]
(
	[mrecommend] ASC
)
INCLUDE (mpositiontaking, actual_stake, recommend,statusID, gameid, eventID, winlostdate) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_recommend] ON [dbo].[translog]
(
	[recommend] ASC
)
INCLUDE (custid, apositiontaking, actual_stake, statusID, Username, gameid, eventID,winlostdate) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_srecommend] ON [dbo].[translog]
(
	[srecommend] ASC
)
INCLUDE (odds, stake, spositiontaking, actual_stake, custom3, statusID, apositiontaking, mpositiontaking, recommend, mrecommend,eventID, gameID,[winlostdate]) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[translog]
(
	[recommend] ASC,
	[winlostdate] ASC
)
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [translog_index]
GO

--==rebuild index with fill factor
--ALTER INDEX PK_translog ON dbo.translog REBUILD WITH (FILLFACTOR = 100)

--=====================translog14======================
----==rebuild index with fill factor
--ALTER INDEX IX_winlostdate ON dbo.translog14 REBUILD WITH (FILLFACTOR = 100)
--ALTER INDEX PK_translog14 ON dbo.translog14 REBUILD WITH (FILLFACTOR = 100)