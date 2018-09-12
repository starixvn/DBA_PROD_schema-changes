/*
	Task: Index revolution @ bettransRnG
	Run on bodb02 @ DB054
*/
--=======================bettransRnG====================================
--//drop index
drop index IX_custid on dbo.bettransRnG
drop index IX_custid_running on dbo.bettransRnG
drop index IX_mrecommend on dbo.bettransRnG
drop index IX_recommend on dbo.bettransRnG
drop index IX_RefNo on dbo.bettransRnG
drop index IX_srecommend on dbo.bettransRnG
drop index IX_WinLostDate_StatusId on dbo.bettransRnG

--//create index
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettransRnG]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,spositiontaking,stake,tpositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettransRnG]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,stake,apositiontaking,mpositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettransRnG]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameId,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,stake,apositiontaking,actualrate) 
WITH (DROP_EXISTING = ON) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettransRnG]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (gameId, productid,refno,statusId,currency,winlost,actual_stake,playercomm,actualrate) 
WITH (DROP_EXISTING = OFF) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_RefNo] ON [dbo].[bettransRnG]
(
	[RefNo] ASC
) INCLUDE (statusId,custid,stake, apositiontaking, mpositiontaking, tpositiontaking, spositiontaking, discount, adiscount, sdiscount, actual_stake,winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm, ContributionRate, BetStake) 
WITH (DROP_EXISTING = ON) ON [bettransRnG_index]
GO


--=====================bettransRnG14======================
--//drop index
drop index IX_custid on dbo.bettransRnG14
drop index IX_recommend on dbo.bettransRnG14
drop index IX_RefNo on dbo.bettransRnG14
drop index IX_WinLostDate_StatusId on dbo.bettransRnG14

--//create index
CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[bettransRnG14]
(
	[winlostdate] ASC
)  WITH (DROP_EXISTING = OFF) ON [bettransRnG14]
GO
