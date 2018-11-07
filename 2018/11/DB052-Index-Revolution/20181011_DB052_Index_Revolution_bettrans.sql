/*
	Task: Index revolution @ bettrans
	Run on bodb02 @ DB052
*/
--=======================bettrans====================================
--//drop index
drop index IX_tstamp_transid on dbo.bettrans
drop index IX_recommend_transid on dbo.bettrans
drop index IX_custid_matchid_bettype on dbo.bettrans
drop index IX_srecommend on dbo.bettrans
drop index IX_winlostdate on dbo.bettrans
drop index CIX_matchid_bettype on dbo.bettrans
drop index IX_RunningFilterByRecommend on dbo.bettrans
drop index IXU_transid on dbo.bettrans

drop index CIX_recommend_matchid_bettype on dbo.bettrans

--//create index
CREATE CLUSTERED INDEX [CIX_matchid_bettype] ON [dbo].[bettrans]
(
	[matchid] ASC,
	[custid] ASC,
	[bettype] ASC
)WITH (FILLFACTOR = 80) ON [Bettrans_table]
GO

CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettrans]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,liveawayscore,spositiontaking,stake,tpositiontaking,oddsspread,modds,liveindicator,actualrate,apositiontaking,mpositiontaking) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettrans]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE(transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,stake,apositiontaking,mpositiontaking,liveawayscore,oddsspread,modds,liveindicator,srecommend,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE(transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,stake,modds,liveawayscore,apositiontaking,oddsspread,srecommend,mrecommend,actualrate,oddsid,odds,oddstype,tpositiontaking) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettrans]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,actualrate,stake,betcheck,betid,mwinlost,comm,acomm,mrecommend)
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans_index1]
GO

--==rebuild index with fill factor
--ALTER INDEX PK_bettrans ON dbo.bettrans REBUILD WITH (FILLFACTOR = 100)

--=====================bettrans14======================
--//drop index
drop index bettrans1413 on dbo.bettrans14
drop index bettrans1423 on dbo.bettrans14
drop index bettrans143 on dbo.bettrans14
drop index bettrans143_bk on dbo.bettrans14
drop index IX_bettrans4 on dbo.bettrans14

CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettrans14]
(
	[srecommend] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,liveawayscore,spositiontaking,stake,tpositiontaking,oddsspread,modds,liveindicator) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans14_index]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettrans14]
(
	[mrecommend] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans14_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettrans14]
(
	[recommend] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,stake,modds,liveawayscore,apositiontaking,oddsspread,srecommend,mrecommend) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans14_index]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettrans14]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,stake,betcheck,betid) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 100) ON [Bettrans14_index]
GO
