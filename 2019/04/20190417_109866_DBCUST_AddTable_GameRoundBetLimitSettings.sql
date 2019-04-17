/*
	Created by: Paul
	RedmineID: 109866
	DB: DBTRANS
	Remark: Create new table GameRoundBetLimitSettings
*/

USE [CustDB]
GO

/****** Object:  Table [dbo].[GameRoundBetLimitSettings]    Script Date: 3/11/2019 2:05:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[GameRoundBetLimitSettings](
	[SportType] [smallint] NOT NULL,
	[BetType] [int] NOT NULL,
	[ProductID] [tinyint] NULL,
	[GameRoundBetLimit] [money] NULL,
 CONSTRAINT [PK_GameRoundBetLimitSettings] PRIMARY KEY CLUSTERED 
(
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO

ALTER TABLE [dbo].[GameRoundBetLimitSettings] ADD  CONSTRAINT [DF_GameRoundBetLimitSettings_GameRoundBetLimit]  DEFAULT ((0)) FOR [GameRoundBetLimit]
GO


