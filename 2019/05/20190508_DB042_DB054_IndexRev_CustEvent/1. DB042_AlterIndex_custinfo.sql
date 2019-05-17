/*
	Task: Optimize indexes for custinfo of Alpha/LRF Forecast DBs
	Database: DB042.bodb02, DB054.bodb02

*/


USE [bodb02]
GO

CREATE NONCLUSTERED INDEX [IX_custinfo] ON [dbo].[custInfo]
(
	[mrecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject],
	[credit],
	[DisableCasino]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [CustInfo_index]
GO

CREATE NONCLUSTERED INDEX [IX_custinfo_1] ON [dbo].[custInfo]
(
	[recommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[reject],
	[closed],
	[username],
	[credit],
	[Enabled],
	[DisableCasino]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustInfo_index]
GO

CREATE NONCLUSTERED INDEX [IX_CI_srecommend] ON [dbo].[custInfo]
(
	[srecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject],
	[DisableCasino]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [CustInfo_index]
GO

DROP INDEX [IX_srecommend] ON [dbo].[custInfo]
GO

DROP INDEX [_MS_Sys_6] ON [dbo].[custInfo]
GO


