/*
	Creator:	20190911@Long.Luu
	Task:		Support Non-live Data - [Redmine: #118959]
	Server:		DB06.bodb_TGRS_UAT & DB061.bodb_TGRS
*/

ALTER TABLE [dbo].SummaryByBetType_Daily
ADD	[IsLive]		BIT NULL;
GO

DROP INDEX CIX_EventDate ON [dbo].SummaryByBetType_Daily
GO

CREATE CLUSTERED INDEX CIX_SummaryByBetType_Daily_EventDate_IsLive ON [dbo].SummaryByBetType_Daily (
	EventDate				ASC,
	[IsLive]				ASC
)
GO

---------------------------
ALTER TABLE [dbo].SummaryByBetType_Monthly
ADD	[IsLive]		BIT NULL;
GO

DROP INDEX CIX_EventDate ON [dbo].SummaryByBetType_Monthly
GO

CREATE CLUSTERED INDEX CIX_SummaryByBetType_Monthly_EventDate_IsLive ON [dbo].SummaryByBetType_Monthly (
	EventDate				ASC,
	[IsLive]				ASC
)
GO

---------------------------
ALTER TABLE [dbo].SummaryByLeague_Daily
ADD	[IsLive]		BIT NULL;
GO

DROP INDEX CIX_EventDate ON [dbo].SummaryByLeague_Daily
GO

CREATE CLUSTERED INDEX CIX_SummaryByLeague_Daily_EventDate_IsLive ON [dbo].SummaryByLeague_Daily (
	EventDate				ASC,
	[IsLive]				ASC
)
GO

---------------------------
ALTER TABLE [dbo].SummaryByLeague_Monthly
ADD	[IsLive]		BIT NULL;
GO

DROP INDEX CIX_EventDate ON [dbo].SummaryByLeague_Monthly
GO

CREATE CLUSTERED INDEX CIX_SummaryByLeague_Monthly_EventDate_IsLive ON [dbo].SummaryByLeague_Monthly (
	EventDate				ASC,
	[IsLive]				ASC
)
GO

---------------------------
ALTER TABLE [dbo].SummaryByTeam_Daily
ADD	[IsLive]		BIT NULL;
GO

DROP INDEX CIX_EventDate ON [dbo].SummaryByTeam_Daily
GO

CREATE CLUSTERED INDEX CIX_SummaryByTeam_Daily_EventDate_IsLive ON [dbo].SummaryByTeam_Daily (
	EventDate				ASC,
	[IsLive]				ASC
)
GO

---------------------------
ALTER TABLE [dbo].SummaryByTeam_Monthly
ADD	[IsLive]		BIT NULL;
GO

DROP INDEX CIX_EventDate ON [dbo].SummaryByTeam_Monthly
GO

CREATE CLUSTERED INDEX CIX_SummaryByTeam_Monthly_EventDate_IsLive ON [dbo].SummaryByTeam_Monthly (
	EventDate				ASC,
	[IsLive]				ASC
)
GO

---------------------------
ALTER TABLE [dbo].SummaryByTrader_Monthly
ADD	[IsLive]		BIT NULL;
GO
