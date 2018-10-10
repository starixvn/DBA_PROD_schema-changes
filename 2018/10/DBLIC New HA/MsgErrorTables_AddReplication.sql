/*
	Task: Prepare structure for adding table MsgError & MsgError group into Replication
	Servers: DB05, DB04x, DBLICAPIx, DB06/TP, DBDWx & MNL related servers
 
*/



SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MsgError](
	[MsgID] [int] NOT NULL,
	[MsgGroupID] [int] NOT NULL,
	[MsgNameEN] [nvarchar](500) NOT NULL,
	[MsgNameCT] [nvarchar](500) NULL,
	[MsgNameCS] [nvarchar](500) NULL,
	[MsgNameJP] [nvarchar](500) NULL,
	[MsgNameTH] [nvarchar](500) NULL,
	[MsgNameKO] [nvarchar](500) NULL,
	[MsgNameES] [nvarchar](500) NULL,
	[MsgNameVI] [nvarchar](500) NULL,
	[IsActive] [bit] NOT NULL,
	[MsgNameCN] [nvarchar](500) NULL,
 CONSTRAINT [PK_MsgError] PRIMARY KEY CLUSTERED 
(
	[MsgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [MsgErrorGroup](
	[MsgGroupID] [int] NOT NULL,
	[MsgGroupName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_MsgErrorGroup] PRIMARY KEY CLUSTERED 
(
	[MsgGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO



