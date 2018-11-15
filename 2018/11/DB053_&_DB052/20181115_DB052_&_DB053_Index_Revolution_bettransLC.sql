/*
	Task: Index revolution @ bettransRnG
	Run on bodb02 @ DB052 / DB053
*/
--=======================bettransLC====================================
/*
	Add more
	DB053: apositiontaking,mpositiontaking
	DB052: apositiontaking,mpositiontaking
*/
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettransLC]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,transid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,swinlost,scomm,mrecommend
,spositiontaking,stake,tpositiontaking,actualrate,apositiontaking,mpositiontaking) 
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [bettransLC_index]
GO