/*
	Task: Index revolution @ bettransM
	Run on bodb02 @ DB053
*/
--=======================bettransM====================================
--//drop index
drop index IX_bettransm_2 on dbo.bettransM

--//create index
CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bettransM]
(
	[matchid] ASC,
	[bettype] ASC
)
INCLUDE (statuswinlost, refno, transid, status, statusID, winlostdate) 
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [BettransM_index]
GO

CREATE NONCLUSTERED INDEX [IX_refno_bettype] ON [dbo].[bettransM]
(
	[refno] ASC,
	[bettype] ASC
)
INCLUDE (odds, stake, status, apositiontaking, mpositiontaking, spositiontaking,[betcheck])
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [BettransM_index]
GO

----==rebuild index with fill factor
--ALTER INDEX IX_bettransm ON dbo.bettransm REBUILD WITH (FILLFACTOR = 100)
--ALTER INDEX PK_bettransm ON dbo.bettransm REBUILD WITH (FILLFACTOR = 100)


--=====================bettransM14======================

CREATE NONCLUSTERED INDEX [PK_winlostdate] ON [dbo].[bettransM14]
(
	[winlostdate] ASC
)
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [BettransM14_index]
GO

--==rebuild index with fill factor
--ALTER INDEX IX_bettransm14 ON dbo.bettransm14 REBUILD WITH (FILLFACTOR = 100)
--ALTER INDEX PK_bettransm14 ON dbo.bettransm14 REBUILD WITH (FILLFACTOR = 100)
