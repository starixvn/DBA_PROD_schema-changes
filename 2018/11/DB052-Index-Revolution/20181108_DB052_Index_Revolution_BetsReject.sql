
ALTER DATABASE bk ADD FILEGROUP betsReject_data;
ALTER DATABASE bk ADD FILEGROUP betsReject_index;

ALTER DATABASE bk ADD FILE (NAME = N'betsReject_data', FILENAME = N'G:\IBC_DB\bk\betsReject_data.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP betsReject_data;
ALTER DATABASE bk ADD FILE (NAME = N'betsReject_index', FILENAME = N'G:\IBC_DB\bk\betsReject_index.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP betsReject_index;


ALTER TABLE [dbo].[betsReject] DROP CONSTRAINT [PK_betsReject]
DROP INDEX IX_btrj_matchid on dbo.betsReject
GO

ALTER TABLE [dbo].[betsReject] ADD CONSTRAINT [PK_betsReject] PRIMARY KEY CLUSTERED 
(
	[transid] ASC
) ON betsReject_data
GO

CREATE NONCLUSTERED INDEX [IX_matchid] ON [dbo].[betsReject]
(
	[matchid] ASC
)INCLUDE (winlostdate)
WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON betsReject_index
GO
