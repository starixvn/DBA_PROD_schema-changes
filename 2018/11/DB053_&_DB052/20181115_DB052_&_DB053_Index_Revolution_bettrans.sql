/*
	Task: Index revolution @ bettrans
	Run on bodb02 @ DB052 / DB053
*/
--=======================bettrans====================================
--//drop index

/*
	Add more
	DB053: apositiontaking,mpositiontaking
	DB052: 
*/
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettrans]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,liveawayscore,spositiontaking,stake,tpositiontaking,oddsspread,modds,liveindicator,actualrate,apositiontaking,mpositiontaking) 
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [Bettrans_index1]
GO

/*
	Add more
	DB053: oddsid,odds,oddstype,tpositiontaking,liveindicator,livehomescore,betdaqid
	DB052: liveindicator,livehomescore,betdaqid --> for betlist of LRF and Lrf_Rpt_LicWinloss
*/
CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[bettrans]
(
	[recommend] ASC,
	[winlostdate] ASC
)
INCLUDE(transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,awinlost,comm,stake,modds,liveawayscore,apositiontaking,oddsspread,srecommend,mrecommend,actualrate,oddsid,odds,oddstype,tpositiontaking) 
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [Bettrans_index1]
GO

/*
	Add more
	DB053: mwinlost,comm,acomm,mrecommend --> for job gen limit loss (3s per call)
	DB052: 
*/
CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettrans]
(
	[custid] ASC,
	[winlostdate] ASC
) INCLUDE (transid,refno,statusId,ruben,currency,winlost,actual_stake,playercomm,actualrate,stake,betcheck,betid,mwinlost,comm,acomm,mrecommend)
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [Bettrans_index1]
GO
