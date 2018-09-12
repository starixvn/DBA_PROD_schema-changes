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
WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [BettransG]
GO

CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[bettransG]
(
	[winlostdate] ASC
)
WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [BettransG]
GO
--=====================bettransG14======================
--//drop index
--> no changes
