
/*
	Task - Add more CountryCode, IsActive inclued column to reduce IO for SP named: Odds_Partner_LeagueSel
	Run on DB052/DB053
*/
CREATE NONCLUSTERED INDEX [IX_League_sporttype] ON [dbo].[League]
(
	[sporttype] ASC
)
INCLUDE ( 	[leagueid],
	[isTest],
	[CountryCode],
	[IsActive]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Event_index]
GO
