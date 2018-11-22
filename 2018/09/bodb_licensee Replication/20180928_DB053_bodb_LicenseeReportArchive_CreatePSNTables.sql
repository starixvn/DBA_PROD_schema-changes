/*

	Task: Create partition objects & tables @bodb_LicenseeReportArchive - part of HA bodb_licensee
	Server: DB053

*/

USE [bodb_LicenseeReportArchive]
GO

CREATE PARTITION FUNCTION [pf_rptCustomerTurnover_bk_monthly](smalldatetime) AS RANGE LEFT FOR VALUES (N'2015-09-30T23:59:00.000', N'2015-10-31T23:59:00.000', N'2015-11-30T23:59:00.000', N'2015-12-31T23:59:00.000', N'2016-01-31T23:59:00.000', N'2016-02-29T23:59:00.000', N'2016-03-31T23:59:00.000', N'2016-04-30T23:59:00.000', N'2016-05-31T23:59:00.000', N'2016-06-30T23:59:00.000', N'2016-07-31T23:59:00.000', N'2016-08-31T23:59:00.000', N'2016-09-30T23:59:00.000', N'2016-10-31T23:59:00.000', N'2016-11-30T23:59:00.000', N'2016-12-31T23:59:00.000', N'2017-01-31T23:59:00.000', N'2017-02-28T23:59:00.000', N'2017-03-31T23:59:00.000', N'2017-04-30T23:59:00.000', N'2017-05-31T23:59:00.000', N'2017-06-30T23:59:00.000', N'2017-07-31T23:59:00.000', N'2017-08-31T23:59:00.000', N'2017-09-30T23:59:00.000', N'2017-10-31T23:59:00.000', N'2017-11-30T23:59:00.000', N'2017-12-31T23:59:00.000', N'2018-01-31T23:59:00.000', N'2018-02-28T23:59:00.000', N'2018-03-31T23:59:00.000', N'2018-04-30T23:59:00.000', N'2018-05-31T23:59:00.000', N'2018-06-30T23:59:00.000', N'2018-07-31T23:59:00.000', N'2018-08-31T23:59:00.000', N'2018-09-30T23:59:00.000', N'2018-10-31T23:59:00.000', N'2018-11-30T23:59:00.000', N'2018-12-31T23:59:00.000', N'2019-01-31T23:59:00.000', N'2019-02-28T23:59:00.000', N'2019-03-31T23:59:00.000', N'2019-04-30T23:59:00.000', N'2019-05-31T23:59:00.000', N'2019-06-30T23:59:00.000', N'2019-07-31T23:59:00.000', N'2019-08-31T23:59:00.000', N'2019-09-30T23:59:00.000', N'2019-10-31T23:59:00.000', N'2019-11-30T23:59:00.000', N'2019-12-31T23:59:00.000')
GO

CREATE PARTITION SCHEME [ps_rptCustomerTurnover_bk_monthly] AS PARTITION [pf_rptCustomerTurnover_bk_monthly] TO ([rptCustomerTurnover_bk_15M09], [rptCustomerTurnover_bk_15M10], [rptCustomerTurnover_bk_15M11], [rptCustomerTurnover_bk_15M12], [rptCustomerTurnover_bk_16M01], [rptCustomerTurnover_bk_16M02], [rptCustomerTurnover_bk_16M03], [rptCustomerTurnover_bk_16M04], [rptCustomerTurnover_bk_16M05], [rptCustomerTurnover_bk_16M06], [rptCustomerTurnover_bk_16M07], [rptCustomerTurnover_bk_16M08], [rptCustomerTurnover_bk_16M09], [rptCustomerTurnover_bk_16M10], [rptCustomerTurnover_bk_16M11], [rptCustomerTurnover_bk_16M12], [rptCustomerTurnover_bk_17M01], [rptCustomerTurnover_bk_17M02], [rptCustomerTurnover_bk_17M03], [rptCustomerTurnover_bk_17M04], [rptCustomerTurnover_bk_17M05], [rptCustomerTurnover_bk_17M06], [rptCustomerTurnover_bk_17M07], [rptCustomerTurnover_bk_17M08], [rptCustomerTurnover_bk_17M09], [rptCustomerTurnover_bk_17M10], [rptCustomerTurnover_bk_17M11], [rptCustomerTurnover_bk_17M12], [rptCustomerTurnover_bk_18M01], [rptCustomerTurnover_bk_18M02], [rptCustomerTurnover_bk_18M03], [rptCustomerTurnover_bk_18M04], [rptCustomerTurnover_bk_18M05], [rptCustomerTurnover_bk_18M06], [rptCustomerTurnover_bk_18M07], [rptCustomerTurnover_bk_18M08], [rptCustomerTurnover_bk_18M09], [rptCustomerTurnover_bk_18M10], [rptCustomerTurnover_bk_18M11], [rptCustomerTurnover_bk_18M12], [rptCustomerTurnover_bk_19M01], [rptCustomerTurnover_bk_19M02], [rptCustomerTurnover_bk_19M03], [rptCustomerTurnover_bk_19M04], [rptCustomerTurnover_bk_19M05], [rptCustomerTurnover_bk_19M06], [rptCustomerTurnover_bk_19M07], [rptCustomerTurnover_bk_19M08], [rptCustomerTurnover_bk_19M09], [rptCustomerTurnover_bk_19M10], [rptCustomerTurnover_bk_19M11], [rptCustomerTurnover_bk_19M12], [rptCustomerTurnover_bk_MAX])
GO


USE [bodb_LicenseeReportArchive]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [rptCustomerTurnover_bk](
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
WITH
(
DATA_COMPRESSION = PAGE
)

GO

GRANT SELECT ON [rptCustomerTurnover_bk] TO [bodbLicenseeNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING OFF
GO

CREATE TABLE [rptDep_AuditTickets](
	[PlayerNo] [int] NOT NULL,
	[PlayerName] [varchar](100) NULL,
	[PlayerType] [varchar](10) NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionId] [bigint] NOT NULL,
	[SettlementDate] [datetime] NOT NULL,
	[Brand] [varchar](50) NULL,
	[BrandUrl] [varchar](100) NULL,
	[GameCode] [varchar](10) NULL,
	[GameName] [varchar](100) NULL,
	[GameType] [varchar](50) NOT NULL,
	[CurrencyCode] [varchar](10) NULL,
	[BetType] [varchar](100) NULL,
	[BetAmount] [money] NULL,
	[DebitAmount] [money] NULL,
	[CreditAmount] [money] NULL,
	[NetAmount] [money] NULL,
	[WinLostDate] [date] NULL
) ON [BATrans_Data]
WITH
(
DATA_COMPRESSION = PAGE
)

GO

SET ANSI_PADDING OFF
GO

GRANT SELECT ON [rptDep_AuditTickets] TO [bodbLicenseeNet] AS [dbo]
GO




