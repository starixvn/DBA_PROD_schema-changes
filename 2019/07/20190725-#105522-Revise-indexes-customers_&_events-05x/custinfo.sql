/*
	Task: Revise index for customer & event part @ custinfo
		+ Merge 2 indexes IX_custinfo & _MS_Sys_6 to IX_custinfo
	Run on DB052/53
*/

USE bodb02
GO

CREATE NONCLUSTERED INDEX [IX_custinfo] ON [dbo].[custInfo]
(
	[mrecommend] ASC,
	[roleid] ASC
)INCLUDE (
	[credit],
	[closed])
WITH (DROP_EXISTING = ON, ONLINE = OFF, FILLFACTOR = 100) ON [CustInfo_index]
GO


DROP INDEX [_MS_Sys_6] ON [dbo].[custInfo]
GO