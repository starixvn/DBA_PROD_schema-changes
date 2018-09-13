/*
	Task: Index revolution @ bettransM
	Run on bodb02 @ DB054
*/
--=======================bettransM====================================
--//drop index
drop index IX_bettransm_2 on dbo.bettransM
drop index IX_bettransm_1 on dbo.bettransM

--//create index
CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bettransM]
(
	[matchid] ASC,
	[bettype] ASC
)
INCLUDE (statuswinlost, refno, transid, status, statusID, winlostdate) 
WITH (DROP_EXISTING = ON, FILLFACTOR = 80) ON [BettransM_index]
GO

CREATE NONCLUSTERED INDEX [IX_refno_bettype] ON [dbo].[bettransM]
(
	[refno] ASC,
	[bettype] ASC
)
INCLUDE (odds, stake, status, apositiontaking, mpositiontaking, spositiontaking,[betcheck])
WITH (DROP_EXISTING = OFF, FILLFACTOR = 80) ON [BettransM_index]
GO

--==rebuild index with fill factor
ALTER INDEX IX_bettransm ON dbo.bettransm REBUILD WITH (FILLFACTOR = 80)
ALTER INDEX IX_winlostdate ON dbo.bettransm REBUILD WITH (FILLFACTOR = 80)
ALTER INDEX PK_bettransm ON dbo.bettransm REBUILD WITH (FILLFACTOR = 80)


--=====================bettransM14======================
--//drop index
drop index IX_bettransm14_refno on dbo.bettransM14

--==rebuild index with fill factor
ALTER INDEX IX_bettransm14 ON dbo.bettransm14 REBUILD WITH (FILLFACTOR = 90)
ALTER INDEX IX_winlostdate ON dbo.bettransm14 REBUILD WITH (FILLFACTOR = 90)
ALTER INDEX PK_bettransm14 ON dbo.bettransm14 REBUILD WITH (FILLFACTOR = 90)
