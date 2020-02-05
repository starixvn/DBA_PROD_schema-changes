/*
Created: 20200204@Bobby
DB: DB053.bodb_Ploutos
Task : 123957 - Add SettlementDate
*/

 use bodb_Ploutos
 GO 

 DROP INDEX [IX_BetTicket_BrandStatus] ON [dbo].[BetTicket]
 GO
/****** Object:  Index [IX_BetTicket_BrandStatus]    Script Date: 11/26/2019 1:32:48 PM ******/
CREATE NONCLUSTERED INDEX [IX_BetTicket_BrandStatus] ON [dbo].[BetTicket]
(
	[BrandCode] ASC,
	[StatusID] DESC,
	[SettlementDate] ASC
)
INCLUDE(
	GamePlatformCode
	,GameCode
	,CurrencyCode
	,GameType
	,TransactionDate
	,TransactionId
	,BetAmount
	,NetAmount
	,CustID
	,Winlostdate
)
WHERE StatusID <> 1
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BetTicket]
GO

-- DROP PROC for removing TVP dependency
ALTER PROCEDURE [dbo].[Plo_API_BetTicket_Update]
AS SELECT 1
GO


-- DROP existing TVP
DROP TYPE [dbo].[TVP_BetTicket]
GO

-- RE-CREATE [TVP_BetTicket]
CREATE TYPE [dbo].[TVP_BetTicket] AS TABLE(
	[BetAmount] [decimal](32, 4) NOT NULL,
	[CurrencyCode] [varchar](5) NOT NULL,
	[GameId] [varchar](10) NOT NULL,
	[GamePlatformCode] [varchar](50) NOT NULL,
	[GameType] [int] NOT NULL,
	[IsError] [bit] NOT NULL,
	[LossAmount] [decimal](32, 4) NULL,
	[PlayerCode] [varchar](50) NOT NULL,
	[ResponseResult] [varchar](1000) NULL,
	[SettlementDate] [datetime] NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[TransactionNo] [varchar](20) NOT NULL,
	[WinAmount] [decimal](32, 4) NULL,
	PRIMARY KEY CLUSTERED 
(
	[TransactionNo] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO
