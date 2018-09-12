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
WITH (DROP_EXISTING = ON) ON [BettransM_index]
GO

CREATE NONCLUSTERED INDEX [IX_refno_bettype] ON [dbo].[bettransM]
(
	[refno] ASC,
	[bettype] ASC
)
INCLUDE (odds, stake, status, apositiontaking, mpositiontaking, spositiontaking,[betcheck])
WITH (DROP_EXISTING = OFF) ON [BettransM_index]
GO

--=====================bettransM14======================
--//drop index
drop index IX_bettransm14_refno on dbo.bettransM14
