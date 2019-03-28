USE [bodb_LicenseeReport]
GO

/*
	20190703@Bruce
	DB: DBLIC.bodb_licensee
	Note: Create data structure for LA-PowerBI [#105205]
*/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[rptLicPerformanceAnalysis](
	[RecordId] [int] IDENTITY(1,1) NOT NULL,
	[ReportDate] [date] NOT NULL,
	[SiteId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[CurrencyId] [int] NOT NULL,
	[Turnover] [money] NULL,
	[BetCount] [int] NULL,
	[LicenseeWinloss] [money] NULL,
	[LicensingFee] [money] NULL,
	[Discount] [money] NULL,
	[Rebate] [money] NULL,
	[TurnoverNoDraw] [money] NULL,
	[IsBillingCurrency] [bit] NOT NULL,
	[Adjustment] [money] NULL,
 CONSTRAINT [PK_rptLicPerformanceAnalysis] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
) ON rptLicPerformanceAnalysisData
) ON rptLicPerformanceAnalysisData
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_rptLicPerformanceAnalysis] ON [dbo].[rptLicPerformanceAnalysis]
(
	[ReportDate] ASC,
	[SiteId] ASC,
	[ProductId] ASC,
	[CurrencyId] ASC
)ON rptLicPerformanceAnalysisData
GO
