/*
	Task: Index revolution @ translog
	Run on bodb02 @ DB054
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
	[custid] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid, eventID, odds, status, statusid, stake, actual_stake, transdate, apositiontaking, mpositiontaking, spositiontaking, discount, adiscount, sdiscount, ip, custom1, custom2, custom3, transdesc, GameId3rd, TranId3rd, LiveIndicator) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_mrecommend] ON [dbo].[translog]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (mpositiontaking, actual_stake, recommend,statusID, gameid, eventID) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_recommend] ON [dbo].[translog]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE (custid, apositiontaking, actual_stake, statusID, Username, gameid, eventID) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_betrunning_srecommend] ON [dbo].[translog]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (odds, stake, spositiontaking, actual_stake, custom3, statusID, apositiontaking, mpositiontaking, recommend, mrecommend,eventID, gameID) 
WHERE([statusID] IN ((0), (1)))
WITH (DROP_EXISTING = OFF) ON [translog_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[translog]
(
	[recommend] ASC,
	[winlostdate] ASC
)
WITH (DROP_EXISTING = OFF) ON [translog_index]
GO

--=====================translog14======================
--//drop index
--> no changes
