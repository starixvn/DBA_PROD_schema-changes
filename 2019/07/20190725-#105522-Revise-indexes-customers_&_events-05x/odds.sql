/*
	Task: Revise index for customer & event part @ Odds
		+ Merge 2 indexes named: PK_odds & CIX_oddsid to PK_odds
		+ Remove index named: IX_matchid_eventstatus on match table
	Run on DB052/53
*/

USE bodb02
GO

DROP INDEX [CIX_oddsid] ON [dbo].[odds] --> clustered
GO
ALTER TABLE [dbo].[odds] DROP CONSTRAINT [PK_odds] --> non cluster PK
GO

--//merge 2 indexes PK_odds & CIX_oddsid
ALTER TABLE [dbo].[odds] ADD  CONSTRAINT [PK_odds] PRIMARY KEY CLUSTERED 
(
	[oddsid] ASC
) ON [Odds_index]
GO

DROP INDEX [_MS_Sys_47_48_3] ON [dbo].[odds]
GO
DROP INDEX [UIX_GetAnOdds] ON [dbo].[odds]
GO
