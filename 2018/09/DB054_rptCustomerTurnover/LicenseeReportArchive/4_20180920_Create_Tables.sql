USE [bodb_LicenseeReportArchive]
GO

/*
	Task - Archive data for rptCustomerTurnover
		+ Create new table rptCustomerTurnover_bk
	Run on DB054
*/

CREATE TABLE [dbo].[rptCustomerTurnover_bk](
	[custid] [int] NOT NULL,
	[bettype] [smallint] NULL,
	[sporttype] [smallint] NULL,
	[currency] [tinyint] NULL,
	[stake] [money] NOT NULL,
	[winlost] [money] NULL,
	[playercomm] [money] NULL,
	[odds] [money] NULL,
	[oddstype] [tinyint] NULL,
	[statusid] [tinyint] NULL,
	[recommend] [int] NULL,
	[leagueid] [int] NULL,
	[winlostdate] [smalldatetime] NULL,
	[betcount] [int] NOT NULL,
	[isBA] [tinyint] NULL,
	[BetEffective] [money] NULL
) ON [ps_rptCustomerTurnover_bk_monthly]([winlostdate])
WITH (DATA_COMPRESSION = PAGE)

GO

GRANT SELECT ON [dbo].[rptCustomerTurnover_bk] TO [bodbLicenseeNet] AS [dbo]
GO

CREATE CLUSTERED INDEX [CIX_recommend_winlostdate] ON [dbo].[rptCustomerTurnover_bk]
(
	[recommend] ASC,
	[winlostdate] ASC
)WITH (ONLINE = OFF, FILLFACTOR = 90, DATA_COMPRESSION = PAGE) ON [ps_rptCustomerTurnover_bk_monthly]([winlostdate])
GO


