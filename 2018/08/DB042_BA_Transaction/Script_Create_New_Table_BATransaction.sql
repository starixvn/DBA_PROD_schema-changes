USE [bodb_Licensee]
GO
/*
	20180807@Patrick
	Task: Create new BATransaction table for move bodb_Licensee
*/

ALTER DATABASE bodb_Licensee ADD FILEGROUP BATrans_Data
ALTER DATABASE bodb_Licensee ADD FILE (NAME = N'BATrans_Data', FILENAME = 'H:\IBC_DB\bodb_Licensee\BATrans_Data.ndf'
			, SIZE = 32768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP BATrans_Data

ALTER DATABASE bodb_Licensee ADD FILEGROUP BATrans_Index
ALTER DATABASE bodb_Licensee ADD FILE (NAME = N'BATrans_Index', FILENAME = 'H:\IBC_DB\bodb_Licensee\BATrans_Index.ndf'
			, SIZE = 32768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP BATrans_Index

CREATE TABLE [dbo].[LicenseeBATransaction_active](
	[TransID] [bigint] NOT NULL,
	[transdate] [datetime] NULL,
	[custid] [int] NULL,
	[recommend] [int] NULL,
	[srecommend] [int] NULL
) ON [BATrans_Data]
GO


CREATE UNIQUE CLUSTERED INDEX [CIX_LicenseeBATransaction_active] ON [dbo].[LicenseeBATransaction_active]
(
	[TransID] ASC
)WITH (ONLINE = ON) ON [BATrans_Index]
GO

CREATE NONCLUSTERED INDEX [IX_recommend] ON [dbo].[LicenseeBATransaction_active]
(
	[recommend] ASC
)
INCLUDE ( 	[TransID]) WITH (ONLINE = ON) ON [BATrans_Index]
GO

CREATE NONCLUSTERED INDEX [IX_srecommend] ON [dbo].[LicenseeBATransaction_active]
(
	[srecommend] ASC
)
INCLUDE ( 	[TransID]) WITH (ONLINE = ON) ON [BATrans_Index]
GO

GO
GRANT SELECT ON [dbo].[LicenseeBATransaction_active] TO [bodbAdminNet]
GO
GRANT SELECT ON [dbo].[LicenseeBATransaction_active] TO [bodbLicenseeNet]
GO
