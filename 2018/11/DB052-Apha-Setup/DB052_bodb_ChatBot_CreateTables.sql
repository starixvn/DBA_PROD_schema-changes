/*
	Task: Create tables on bodb_ChatBot for setting up Alpha on db052 (#104779)
	Server: DB052

*/


USE [bodb_ChatBot]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Action](
	[ActionId] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [varchar](255) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[Command] [varchar](50) NULL,
	[DisplayOrder] [int] NULL,
	[FunctionId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[IsEndAction] [bit] NULL,
	[Status] [tinyint] NOT NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Function](
	[FunctionId] [int] NOT NULL,
	[FunctionName] [varchar](255) NOT NULL,
	[Type] [tinyint] NOT NULL,
	[DefaultCommand] [varchar](50) NULL,
	[Status] [tinyint] NOT NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[LastQueryUserMessage](
	[UserId] [int] NOT NULL,
	[FunctionId] [int] NOT NULL,
	[MessageType] [tinyint] NOT NULL,
	[LastQueryTime] [datetime] NOT NULL
) ON [DATA]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MessageLog](
	[Sender] [int] NOT NULL,
	[Receiver] [int] NOT NULL,
	[FunctionId] [int] NULL,
	[MessengerUsername] [varchar](50) NOT NULL,
	[MessengerType] [tinyint] NOT NULL,
	[Message] [nvarchar](4000) NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[Status] [tinyint] NOT NULL
) ON [DataLog]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[MessengerInfo](
	[UserId] [int] NOT NULL,
	[MessengerUsername] [varchar](50) NOT NULL,
	[MessengerType] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[VerificationCode] [varchar](6) NULL,
	[VerificationCodeDateTime] [datetime] NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Resource](
	[Key] [int] NOT NULL,
	[Type] [varchar](20) NOT NULL,
	[LanguageCode] [char](5) NOT NULL,
	[Value] [nvarchar](255) NOT NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Setting](
	[SettingName] [varchar](50) NOT NULL,
	[Value] [varchar](200) NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserAction](
	[UserActionId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ActionId] [int] NOT NULL,
	[UserResponse] [nvarchar](255) NULL,
	[CompiledCommand] [nvarchar](255) NULL,
	[ChatTime] [datetime] NULL,
	[Status] [tinyint] NULL
) ON [DATA]

GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserFunctionSetting](
	[UserId] [int] NOT NULL,
	[FunctionId] [int] NOT NULL,
	[Command] [varchar](50) NULL,
	[Enabled] [bit] NOT NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserInfo](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[CustId] [int] NOT NULL,
	[SubAccId] [int] NOT NULL,
	[CustomerLevel] [tinyint] NOT NULL,
	[Language] [char](5) NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[UserLogAction](
	[Date] [smalldatetime] NOT NULL,
	[UserId] [int] NOT NULL,
	[MessengerType] [tinyint] NOT NULL,
	[MessengerUsername] [varchar](50) NOT NULL,
	[ActionId] [int] NOT NULL,
	[CountTimes] [tinyint] NOT NULL
) ON [DATA]

GO

SET ANSI_PADDING OFF
GO


