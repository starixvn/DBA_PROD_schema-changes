/*
	Task: Index revolution @ bettrans
	Run on bodb02 @ DB054
*/
--=======================bettrans====================================
--//drop index
drop index CIX_matchid_bettype on dbo.bettrans
drop index bettrans16 on dbo.bettrans
drop index IX_custid_matchid_bettype on dbo.bettrans
drop index IX_srecommend on dbo.bettrans
drop index IX_winlostdate on dbo.bettrans
drop index IXU_transid on dbo.bettrans
drop index IX_recommend_transid on dbo.bettrans
drop index IX_Matchid_SMA on dbo.bettrans
drop index IX_agent_all on dbo.bettrans
drop index IX_custid on dbo.bettrans
drop index IX_betrunning_srecommend on dbo.bettrans
drop index IX_betrunning_recommend on dbo.bettrans
drop index IX_betrunning_mrecommend on dbo.bettrans

drop index CIX_recommend_matchid_bettype on dbo.bettrans

--//create index
CREATE CLUSTERED INDEX [CIX_matchid_bettype] ON [dbo].[bettrans]
(
	[matchid] ASC,
	[bettype] ASC,
	[custid] ASC
)WITH (FILLFACTOR = 80) ON [Bettrans_table]
GO

CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettrans]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,liveawayscore,spositiontaking,stake,tpositiontaking,oddsspread,modds,liveindicator,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 80) ON [Bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettrans]
(
	[mrecommend] ASC,
	[winlostdate] ASC
)
INCLUDE(transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,stake,apositiontaking,mpositiontaking,liveawayscore,oddsspread,modds,srecommend,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 80) ON [Bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE(transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,stake,modds,liveawayscore,apositiontaking,oddsspread,srecommend,mrecommend,actualrate) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 80) ON [Bettrans_index1]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettrans]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,actualrate,stake) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 80) ON [Bettrans_index1]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IXU_transid] ON [dbo].[bettrans]
(
	[transid] ASC
) 
INCLUDE ([winlostdate],[liveawayscore],[liveindicator],[matchid],[betteam],[bettype],[currency],[ruben],[livehomescore],[tpositiontaking],[status],[stake],[custid],[oddsid],[hdp1],[hdp2],[odds],transdate, refno, comstatus, betid, ip, transdesc, Username,winlost, awinlost, mwinlost, playercomm, comm, acomm, apositiontaking, mpositiontaking, discount, adiscount, actual_stake, sdiscount, scomm, spositiontaking, swinlost,betcheck, oddsspread, modds, betdaqid, oddstype,checktime, SecAcceptFlag) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 80) ON [Bettrans_index1]

--==rebuild index with fill factor
ALTER INDEX PK_bettrans ON dbo.bettrans REBUILD WITH (FILLFACTOR = 80)

--=====================bettrans14======================
--//drop index
drop index bettrans1413 on dbo.bettrans14
drop index bettrans1423 on dbo.bettrans14
drop index bettrans143 on dbo.bettrans14
drop index IX_bettrans3 on dbo.bettrans14
drop index IX_bettrans4 on dbo.bettrans14
drop index IX_matchid on dbo.bettrans14
drop index IX_srecommend on dbo.bettrans14
drop index IX_winlostdate on dbo.bettrans14

drop index IX_bettrans14 on dbo.bettrans14

--//create index
CREATE CLUSTERED INDEX [IX_bettrans14] ON [dbo].[bettrans14]
(
	[winlostdate] ASC,
	[custid] ASC,
	[matchid] ASC,
	[bettype] ASC
)  WITH (DROP_EXISTING = OFF, FILLFACTOR = 90) ON [Bettrans14_table]
GO

CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettrans14]
(
	[srecommend] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,liveawayscore,spositiontaking,stake,tpositiontaking,oddsspread,modds,liveindicator) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 90) ON [Bettrans14_index]
GO

CREATE NONCLUSTERED INDEX [IX_mrecommend] ON [dbo].[bettrans14]
(
	[mrecommend] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 90) ON [Bettrans14_index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettrans14]
(
	[recommend] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,stake,modds,liveawayscore,apositiontaking,oddsspread,srecommend,mrecommend) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 90) ON [Bettrans14_index]
GO

CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettrans14]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,stake) 
WITH (DROP_EXISTING = OFF, FILLFACTOR = 90) ON [Bettrans14_index]
GO

--==rebuild index with fill factor
ALTER INDEX PK_bettrans14 ON dbo.bettrans14 REBUILD WITH (FILLFACTOR = 90)