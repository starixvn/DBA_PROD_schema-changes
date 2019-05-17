/*
	Task: Backup old indexes  - Optimize indexes for custinfo of Alpha/LRF Forecast DBs
	Database: DB042.bodb02, DB054.bodb02

*/


USE [bodb02]
GO

/****** Object:  Index [_MS_Sys_6]    Script Date: 5/12/2019 9:29:03 PM ******/
CREATE NONCLUSTERED INDEX [_MS_Sys_6] ON [dbo].[custInfo]
(
	[mrecommend] ASC
)
INCLUDE ( 	[roleid],
	[credit],
	[closed]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [CustInfo_index]
GO

/****** Object:  Index [IX_srecommend]    Script Date: 5/12/2019 9:29:03 PM ******/
CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[custInfo]
(
	[srecommend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [INDEX]
GO


--=====================================================

USE [bodb02]
GO

/****** Object:  Index [IX_CI_srecommend]    Script Date: 5/12/2019 9:29:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_CI_srecommend] ON [dbo].[custInfo]
(
	[srecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [CustInfo_index]
GO

/****** Object:  Index [IX_custinfo]    Script Date: 5/12/2019 9:29:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_custinfo] ON [dbo].[custInfo]
(
	[mrecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 100) ON [CustInfo_index]
GO

/****** Object:  Index [IX_custinfo_1]    Script Date: 5/12/2019 9:29:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_custinfo_1] ON [dbo].[custInfo]
(
	[recommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[reject],
	[closed],
	[username],
	[credit],
	[Enabled]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustInfo_index]
GO