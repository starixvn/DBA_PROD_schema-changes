/*
	Task: Archive data for bodb_CustomerLog @ UserLog_ExternalAPI
*/

use bodb_CustomerLog_Archive
go

ALTER DATABASE bodb_CustomerLog_Archive ADD FILEGROUP CasinoAPI
ALTER DATABASE bodb_CustomerLog_Archive ADD FILE (NAME = N'CasinoAPI', FILENAME = N'M:\IBC_DB\bodb_CustomerLog_Archive\CasinoAPI.ndf', SIZE = 512KB, MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP CasinoAPI

GO
CREATE TABLE [dbo].[UserLog_ExternalAPI](
	[LogID] [bigint] NOT NULL,
	[LogDate] [datetime] NULL,
	[SystemID] [smallint] NULL,
	[ProductID] [smallint] NULL,
	[UserID] [int] NULL,
	[FuncName] [varchar](200) NULL,
	[CustID] [int] NULL,
	[ActionID] [int] NULL,
	[TrackingValue] [xml] NULL,
	[ModifiedDate] [datetime] NULL,
	[StatusID] [tinyint] NULL,
	[isNotified] [bit] NULL,
	[ReturnCode] [int] NULL,
	[ReturnValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_ExtAPI_LogID] PRIMARY KEY NONCLUSTERED 
(
	[LogID] ASC
) ON [CasinoAPI]
) ON [CasinoAPI] TEXTIMAGE_ON [CasinoAPI]

GO

CREATE CLUSTERED INDEX [CIX_ExtAPI_CustID_LogDate] ON [dbo].[UserLog_ExternalAPI]
(
	[CustID] ASC,
	[LogDate] ASC,
	[ActionID] ASC,
	[isNotified] ASC
) ON [CasinoAPI]
GO