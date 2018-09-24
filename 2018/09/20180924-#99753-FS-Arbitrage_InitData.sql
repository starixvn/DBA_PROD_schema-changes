/*
Creator: 20180815@Long
Task: Implement DB FraudSensor - Arbitrage
Server:  bodb_FraudSensor

Reviewer: Billy
*/ 

USE [bodb_FraudSensor]
GO

----===================A. DELETE=========================
----==========================================================



----===================B. INSERT========================
----===========================================================
SET IDENTITY_INSERT dbo.[FraudCase] ON;
GO

INSERT INTO dbo.[FraudCase](
		[FraudCaseId]
    ,	[FraudCaseName]
    ,	[FraudCaseDesc]
    ,	[FraudCaseInterval]
    ,	[IsActive]
    ,	[IsTest]
    ,	[IsInternal])
VALUES	(10
	,	N'Arbitrage'
	,	N'Arbitrage'
	,	60
	,	1
	,	1
	,	0);	
GO

SET IDENTITY_INSERT dbo.[FraudCase] OFF;
GO
----===================C. SCHEMA =========================
----===========================================================

CREATE TABLE [dbo].[ArbitrageTicketDetails](
	[CustId]			INT NOT NULL,
	[MatchId]			INT NOT NULL,
	[GroupId]			INT NOT NULL,
	[TransIds]			VARCHAR(MAX) NULL,
 CONSTRAINT [PK_ArbitrageTicketDetails] PRIMARY KEY CLUSTERED 
(
	[CustId]			ASC,
	[MatchId]			ASC,
	[GroupId]			ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA] TEXTIMAGE_ON [DATA]
GO

CREATE TABLE [dbo].[ArbitrageMatchScoreHDP] (
	[MatchId]           INT NOT NULL,
	[BetType]           INT NOT NULL,
	[Handicap]			MONEY NOT NULL,
	[TotalScores]       INT NOT NULL,
	[MaxTransId]		BIGINT NOT NULL,
	[HasScanned]        BIT DEFAULT((0)) NOT NULL,
	[UpdatedDate]       DATETIME NOT NULL,
CONSTRAINT [PK_ArbitrageMatchScoreHDP] PRIMARY KEY CLUSTERED
(
	[MatchId]           ASC,
	[BetType]			ASC,
	[Handicap]			ASC,
	[TotalScores]		ASC
) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO
----===========================================================

CREATE TABLE [dbo].[ArbitrageMatchScanning_BK](
	[MatchId] [int] NOT NULL,
	[MaxTransId] [bigint] NOT NULL,
	[LiveHomeScore] [int] NOT NULL,
	[LiveAwayScore] [int] NOT NULL,
	[IsScanCompleted] [bit] NOT NULL,
	[IsMatchCompleted] [bit] NOT NULL,
	[CapturedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ArbitrageMatchScanning_CS] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
