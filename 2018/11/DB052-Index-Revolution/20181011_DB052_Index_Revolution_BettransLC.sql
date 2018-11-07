/*
	Task: Index revolution @ bettransLC
	Run on bodb02 @ DB052
*/
--=======================bettransLC====================================
--//drop index
drop index IX_custid on dbo.bettransLC
drop index IX_recommend on dbo.bettransLC
drop index IX_RefNo on dbo.bettransLC
drop index IX_WinLostDate_StatusId on dbo.bettransLC

--//create index
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettransLC]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,spositiontaking,stake,tpositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC_index]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettransLC]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid, productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,stake,apositiontaking,mpositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettransLC]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameId,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,stake,apositiontaking,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC_index]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettransLC]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (gameId, productid,refno,statusId,currency,winlost,actual_stake,playercomm,actualrate,GameId3rd,TranId3rd) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC_index]
GO

CREATE NONCLUSTERED INDEX [IX_RefNo] ON [dbo].[bettransLC]
(
	[RefNo] ASC
) INCLUDE (statusId,custid,stake,apositiontaking,mpositiontaking,tpositiontaking,spositiontaking,discount, adiscount, sdiscount, actual_stake,winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC_index]
GO

--==rebuild index with fill factor
--ALTER INDEX PK_bettransLC ON dbo.bettransLC REBUILD WITH (FILLFACTOR = 80)

--=====================bettransLC14======================
--//drop index
drop index IX_custid on dbo.bettransLC14
drop index IX_recommend on dbo.bettransLC14
drop index IX_RefNo on dbo.bettransLC14
drop index IX_WinLostDate_StatusId on dbo.bettransLC14

--//create index
CREATE NONCLUSTERED INDEX [IX_winlostdate] ON [dbo].[bettransLC14]
(
	[winlostdate] ASC
)  WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC14_index]
GO

CREATE NONCLUSTERED INDEX [IX_RefNo] ON [dbo].[bettransLC14]
(
	[RefNo] ASC
) INCLUDE (statusId,custid,stake, apositiontaking, mpositiontaking, tpositiontaking, spositiontaking, discount, adiscount, sdiscount, actual_stake,winlost, awinlost, mwinlost, swinlost, playercomm, comm, acomm, scomm) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [bettransLC14_index]
GO

--==rebuild index with fill factor
--ALTER INDEX PK_bettransLC14 ON dbo.bettransLC14 REBUILD WITH (FILLFACTOR = 100)