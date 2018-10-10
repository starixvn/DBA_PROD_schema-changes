/*
Creator: 20180815@Long
Task: Implement DB FraudSensor - Arbitrage
Server:  bodb_FraudSensor

Reviewer: Billy
*/ 

USE [bodb_FraudSensor]
GO

DROP TABLE ArbitrageMatchScanning_BK

CREATE TABLE [dbo].[ArbitrageMatchScanning](
	[MatchId] [int] NOT NULL,
	[MaxTransId] [bigint] NOT NULL,
	[LiveHomeScore] [int] NOT NULL,
	[LiveAwayScore] [int] NOT NULL,
	[IsScanCompleted] [bit] NOT NULL,
	[IsMatchCompleted] [bit] NOT NULL,
	[CapturedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ArbitrageMatchScanning] PRIMARY KEY CLUSTERED 
(
	[MatchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]