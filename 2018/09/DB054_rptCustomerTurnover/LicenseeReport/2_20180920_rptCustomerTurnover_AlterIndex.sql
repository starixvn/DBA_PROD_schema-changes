USE [bodb_LicenseeReport]
GO
/*
	Task - Archive data for rptCustomerTurnover
		+ Create new index
	Run on DB054
*/
DROP INDEX [IX_recommend] ON [dbo].[rptCustomerTurnover]
GO

DROP INDEX [CIX_winlostdate] ON [dbo].[rptCustomerTurnover] WITH ( ONLINE = OFF )
GO

CREATE CLUSTERED INDEX [CIX_recommend_winlostdate] ON [dbo].[rptCustomerTurnover]
(
	[recommend] ASC,
	[winlostdate] ASC
)WITH (ONLINE = OFF, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerTurnover_monthly]([winlostdate])
GO


