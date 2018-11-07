ALTER DATABASE bk ADD FILEGROUP bets_data;
ALTER DATABASE bk ADD FILEGROUP bets_index;

ALTER DATABASE bk ADD FILE (NAME = N'bets_data', FILENAME = N'G:\IBC_DB\bk\bets_data.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP bets_data;
ALTER DATABASE bk ADD FILE (NAME = N'bets_index', FILENAME = N'G:\IBC_DB\bk\bets_index.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP bets_index;


ALTER TABLE [dbo].[bets] DROP CONSTRAINT [PK_bets]
DROP INDEX IX_winlostdate ON dbo.bets
DROP INDEX IXU_winlostdate_bettype ON dbo.bets
DROP INDEX IX_winlostdate2 ON dbo.bets

drop index IX_bt_matchid ON dbo.bets

ALTER TABLE [dbo].[bets] ADD CONSTRAINT [PK_bets] PRIMARY KEY CLUSTERED
(
	[transid] ASC
) ON bets_data
GO

CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[bets]
(
	[matchid] ASC,
	[winlostdate] ASC
)
WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON bets_index
GO
