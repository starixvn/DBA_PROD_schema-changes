
CREATE TABLE [dbo].[rptDep_AuditTickets](
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
	[WinLostDate] [date] NULL,
 CONSTRAINT [PK_rptDep_AuditTickets] PRIMARY KEY NONCLUSTERED 
(
	[TransactionId] ASC
)WITH (DATA_COMPRESSION = PAGE) ON [Audit_Data_Index]
) ON [Audit_Data]

GO

GRANT SELECT ON [dbo].[rptDep_AuditTickets] TO [bodbLicenseeNet] AS [dbo]
GO

CREATE CLUSTERED INDEX [CIX_WinLostDate] ON [dbo].[rptDep_AuditTickets]
(
	[WinLostDate] ASC,
	[Brand] ASC,
	[CurrencyCode] ASC,
	[GameType] ASC
)WITH (DATA_COMPRESSION = PAGE) ON [Audit_Data]
GO
