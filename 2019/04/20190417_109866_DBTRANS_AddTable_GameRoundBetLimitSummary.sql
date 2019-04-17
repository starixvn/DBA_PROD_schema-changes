/*
	Created by: Paul
	RedmineID: 109866
	DB: DBTRANS
	Remark: Create new table GameRoundBetLimitSummary
*/

USE [bodb02]
GO

/****** Object:  Table [dbo].[GameRoundBetLimitSummary]    Script Date: 3/20/2019 10:48:07 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameRoundBetLimitSummary](
	[GameRound] [varchar](50) NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [int] NOT NULL,
	[ProductID] [tinyint] NULL,
	[GameRoundBetLimit] [money] NULL,
	[BetCount] [int] NULL,
	[NoOfPlayers] [int] NULL,
	[TotalStake] [money] NULL,
	[ReachedLimitTime] [datetime] NULL,
	[IsNotified] [bit] NULL,
	[IsTest] [bit] NULL,
 CONSTRAINT [PK_GameRoundBetLimitSummary] PRIMARY KEY NONCLUSTERED 
(
	[GameRound] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO

/****** Object:  Index [CIX_GameRoundBetLimitSummary]    Script Date: 3/20/2019 11:12:37 AM ******/
CREATE CLUSTERED INDEX [CIX_GameRoundBetLimitSummary] ON [dbo].[GameRoundBetLimitSummary]
(
	[ReachedLimitTime] ASC,
	[ProductID] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

ALTER TABLE [dbo].[GameRoundBetLimitSummary] ADD  CONSTRAINT [DF_GameRoundBetLimitSummary_IsNotified]  DEFAULT ((0)) FOR [IsNotified]
GO

ALTER TABLE [dbo].[GameRoundBetLimitSummary] ADD  CONSTRAINT [DF_GameRoundBetLimitSummary_IsTest]  DEFAULT ((0)) FOR [IsTest]
GO


