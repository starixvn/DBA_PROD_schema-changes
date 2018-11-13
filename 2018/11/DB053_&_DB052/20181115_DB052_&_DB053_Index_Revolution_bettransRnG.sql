/*
	Task: Index revolution @ bettransRnG
	Run on bodb02 @ DB052 / DB053
*/
--=======================bettransRnG====================================
/*
	Add more
	DB053: apositiontaking,mpositiontaking (for VIP view a group supers)
	DB052: apositiontaking,mpositiontaking (for VIP view a group supers)
*/
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[bettransRnG]
(
	[srecommend] ASC,
	[winlostdate] ASC
)
INCLUDE (gameid,productid,refno,statusId,currency,winlost,actual_stake,playercomm,awinlost,comm,custid,mwinlost,recommend,acomm,swinlost,scomm,mrecommend,spositiontaking,stake,tpositiontaking,actualrate,apositiontaking,mpositiontaking) 
WITH (DROP_EXISTING = ON, FILLFACTOR = 100) ON [bettransRnG_index]
GO