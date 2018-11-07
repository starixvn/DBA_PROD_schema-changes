/*
	Task: Index revolution @ bettransRnG
	Run on bodb02 @ DB052
*/
--=======================bettransRnG====================================
--//drop index
drop index IX_custid on dbo.bettrans
drop index IX_recommend on dbo.bettrans
drop index IX_RefNo on dbo.bettrans
drop index IX_WinLostDate_StatusId on dbo.bettrans

--//create index
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettransRnG]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,spositiontaking,stake,tpositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettransRnG]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,stake,apositiontaking,mpositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettransRnG]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameId,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,stake,apositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettransRnG]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (gameId, productid,refno,statusId,currency,winlost,actual_stake,playercomm,actualrate,TranId3rd) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG_index]
GO

CREATE NONCLUSTERED INDEX [IX_RefNo] ON [dbo].[bettransRnG]
(
	[RefNo] ASC
) INCLUDE (statusId,custid,stake, apositiontaking, mpositiontaking, tpositiontaking, spositiontaking, discount, adiscount, sdiscount, actual_stake,winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm, ContributionRate, BetStake) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG_index]
GO

--==rebuild index with fill factor
--ALTER INDEX PK_bettransRnG ON dbo.bettransRnG REBUILD WITH (FILLFACTOR = 100)

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
)  WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG14_index]
GO

CREATE NONCLUSTERED INDEX [IX_RefNo] ON [dbo].[bettransRnG14]
(
	[RefNo] ASC
) INCLUDE (statusId,custid,stake, apositiontaking, mpositiontaking, tpositiontaking, spositiontaking, discount, adiscount, sdiscount, actual_stake,winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm, ContributionRate, BetStake)  
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransRnG14_index]
GO

--==rebuild index with fill factor
--ALTER INDEX PK_bettransRnG14 ON dbo.bettransRnG14 REBUILD WITH (FILLFACTOR = 100)