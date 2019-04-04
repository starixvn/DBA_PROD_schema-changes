/*
	Task: Drop unused tables @db052.bodb_AGE
	Run on DB052
*/

USE [bodb_AGE]
GO

DROP TABLE [dbo].[DownlineTo_SportControl]
GO

DROP TABLE [dbo].[DownlineTo_SMAControl]
GO

DROP TABLE [dbo].[DownlineTo_MatchControl]
GO

DROP TABLE [dbo].[DownlineTo_Match_SMAControl]
GO

DROP TABLE [dbo].[DownlineTo_LeagueControl]
GO

DROP TABLE [dbo].[AgeRWLastSyncVersion]
GO


