/**
	- Created@20220104:bobby.nguyen
	- Task: NAP - Enhance performance bet list by refno (Redmine#152315)
	- DB: Run on KBT@DB061,KBT@DB062
**/

USE [bodb_archive]
GO

/****** Object:  Index [IX_custid]    Script Date: 1/3/2022 10:24:15 PM ******/
CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettransRnG_bk]
(
	[custid] ASC,
	[transid] ASC
)
INCLUDE([winlostdate],[productID],[gameID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
GO


/****** Object:  Index [IX_custid]    Script Date: 1/3/2022 10:25:03 PM ******/
CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[bettransLC_bk]
(
	[custid] ASC,
	[transid] ASC
)
INCLUDE([winlostdate],[productID],[gameID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = ON, ONLINE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
GO


