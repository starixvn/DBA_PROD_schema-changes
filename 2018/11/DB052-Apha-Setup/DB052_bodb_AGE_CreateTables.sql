/*
	Task: Create tables on bodb_AGE for setting up Alpha on db052 (#104779)
	Server: DB052

*/

USE [bodb_AGE]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Acc_CustGroup](
	[CustID] [int] NOT NULL,
	[RoleID] [tinyint] NOT NULL,
	[GroupName] [varchar](50) NOT NULL,
	[rv] [timestamp] NOT NULL,
	[IsPayout] [bit] NULL,
 CONSTRAINT [PK_AccGroup] PRIMARY KEY NONCLUSTERED 
(
	[CustID] ASC,
	[GroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageTable]

GO

SET ANSI_PADDING OFF
GO

GRANT SELECT ON [dbo].[Acc_CustGroup] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[Acc_CustGroup] TO [bodbExtAccNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Age_CustDateLimit](
	[CustId] [int] NOT NULL,
	[MinDate] [smalldatetime] NULL,
	[LimitDays] [smallint] NULL,
 CONSTRAINT [PK_Age_CustDateLimit] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Age_CustProfilePicture](
	[custid] [int] NOT NULL,
	[image] [varbinary](max) NOT NULL,
	[modified] [datetime] NULL,
	[rv] [timestamp] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[custid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ProfileData]
) ON [ProfileData] TEXTIMAGE_ON [ProfileData]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Age_CustSeq](
	[SeqName] [varchar](3) NOT NULL,
	[Type] [tinyint] NOT NULL,
 CONSTRAINT [PK_Age_CustSeq] PRIMARY KEY CLUSTERED 
(
	[SeqName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageTable]
) ON [ageTable]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[AgeRWLastSyncVersion](
	[rvID] [int] NOT NULL,
	[rvName] [varchar](50) NOT NULL,
	[LastSyncVersion] [varbinary](8) NULL,
	[ExtractionDate] [datetime] NULL,
 CONSTRAINT [PK_AgeRWLastSyncVersion] PRIMARY KEY CLUSTERED 
(
	[rvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DownlineTo_LeagueControl](
	[LeagueID] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_DownlineTo_LeagueControl] PRIMARY KEY CLUSTERED 
(
	[LeagueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT SELECT ON [dbo].[DownlineTo_LeagueControl] TO [bodbAdminNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DownlineTo_Match_SMAControl](
	[SMAID] [int] NOT NULL,
	[MatchID] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_DownlineTo_Match_SMAControl] PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC,
	[SMAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT SELECT ON [dbo].[DownlineTo_Match_SMAControl] TO [bodbAdminNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DownlineTo_MatchControl](
	[MatchID] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_DownlineTo_MatchControl] PRIMARY KEY CLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT SELECT ON [dbo].[DownlineTo_MatchControl] TO [bodbAdminNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DownlineTo_SMAControl](
	[SMAID] [int] NOT NULL,
	[Offset] [int] NOT NULL,
 CONSTRAINT [PK_DownlineTo_SMAControl] PRIMARY KEY CLUSTERED 
(
	[SMAID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT SELECT ON [dbo].[DownlineTo_SMAControl] TO [bodbAdminNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DownlineTo_SportControl](
	[SportID] [int] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_DownlineTo_SportControl] PRIMARY KEY CLUSTERED 
(
	[SportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT SELECT ON [dbo].[DownlineTo_SportControl] TO [bodbAdminNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LimitLoss_ActionConfig](
	[ConfigID] [int] IDENTITY(1,1) NOT NULL,
	[LevelID] [tinyint] NOT NULL,
	[ActionID] [tinyint] NOT NULL,
	[Value] [int] NOT NULL,
 CONSTRAINT [PK_LimitLoss_ActionConfig] PRIMARY KEY CLUSTERED 
(
	[ConfigID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[LimitLoss_ActionItem](
	[ActionID] [tinyint] NOT NULL,
	[ActionDesc] [varchar](500) NULL,
 CONSTRAINT [PK_LimitLoss_ActionItem] PRIMARY KEY CLUSTERED 
(
	[ActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LimitLoss_HeadlineSetting](
	[GroupHeadlineID] [int] NOT NULL,
	[MaxLoss] [money] NOT NULL,
	[TotalBalance] [money] NULL,
	[LevelID] [tinyint] NOT NULL,
	[YesterdayBalance] [money] NULL,
	[OldLevelID] [tinyint] NULL,
	[NotifyLetsTalk] [bit] NULL,
 CONSTRAINT [PK_LimitLoss_HeadlineSetting] PRIMARY KEY CLUSTERED 
(
	[GroupHeadlineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT INSERT ON [dbo].[LimitLoss_HeadlineSetting] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[LimitLoss_HeadlineSetting] TO [bodbAdminNet] AS [dbo]
GO

GRANT UPDATE ON [dbo].[LimitLoss_HeadlineSetting] TO [bodbAdminNet] AS [dbo]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LimitLoss_Setting](
	[CustID] [int] NOT NULL,
	[MaxLoss] [money] NULL,
	[TotalBalance] [money] NULL,
	[LevelID] [tinyint] NOT NULL,
	[YesterdayBalance] [money] NULL,
	[OldLevelID] [tinyint] NULL,
	[NotifyLetsTalk] [bit] NULL,
 CONSTRAINT [PK_LimitLoss_Setting] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ageDATA]
) ON [ageDATA]

GO

GRANT INSERT ON [dbo].[LimitLoss_Setting] TO [bodbAdminNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[LimitLoss_Setting] TO [bodbAdminNet] AS [dbo]
GO

GRANT UPDATE ON [dbo].[LimitLoss_Setting] TO [bodbAdminNet] AS [dbo]
GO

GRANT INSERT ON [dbo].[LimitLoss_Setting] TO [bodbDownlineNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[LimitLoss_Setting] TO [bodbDownlineNet] AS [dbo]
GO

GRANT UPDATE ON [dbo].[LimitLoss_Setting] TO [bodbDownlineNet] AS [dbo]
GO

GRANT INSERT ON [dbo].[LimitLoss_Setting] TO [bodbExtAccNet] AS [dbo]
GO

GRANT SELECT ON [dbo].[LimitLoss_Setting] TO [bodbExtAccNet] AS [dbo]
GO

GRANT UPDATE ON [dbo].[LimitLoss_Setting] TO [bodbExtAccNet] AS [dbo]
GO

SET ANSI_PADDING ON

GO

CREATE CLUSTERED INDEX [CIX_CustID_Group] ON [dbo].[Acc_CustGroup]
(
	[CustID] ASC,
	[GroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [ageTable]
GO

ALTER TABLE [dbo].[Acc_CustGroup] ADD  CONSTRAINT [DF_Acc_CustGroup_IsPayout]  DEFAULT ((0)) FOR [IsPayout]
GO

ALTER TABLE [dbo].[LimitLoss_HeadlineSetting] ADD  CONSTRAINT [DF_LimitLoss_HeadlineSetting_LevelID]  DEFAULT ((0)) FOR [LevelID]
GO

ALTER TABLE [dbo].[LimitLoss_Setting] ADD  CONSTRAINT [DF_LimitLoss_Setting_LevelID]  DEFAULT ((0)) FOR [LevelID]
GO

ALTER TABLE [dbo].[LimitLoss_Setting] ADD  CONSTRAINT [DF_LimitLoss_Setting_OldLevelID]  DEFAULT ((0)) FOR [OldLevelID]
GO


