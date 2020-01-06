USE [bodb_OIC]
GO

/*
	Created: 20191021@Hogan
	DB: DBOIC.bodb_OIC
	Task: Upgrade mail client [RedmineID: #120949]
*/

CREATE TABLE [dbo].[MailRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [varbinary](max) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	CONSTRAINT [PK__MailRecord] PRIMARY KEY CLUSTERED ([Id] ASC)
)

GO

/*
	Created: 20191021@Hogan
	DB: DBOIC.bodb_OIC
	Task: Upgrade mail client [RedmineID: #120949]
*/

CREATE TABLE [dbo].[MailRecordSiteName](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[To] [nvarchar](300) NOT NULL,
	[Cc] [nvarchar](300) NULL,
	[Bcc] [nvarchar](300) NULL,
	[Subject] [nvarchar](300) NOT NULL,
	[Status] [tinyint] NOT NULL,
	[MailRecordId] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[MSiteMailId] [bigint] NULL,
	[FromUserId] [int] NOT NULL,
	[ToRecipientId] [int] NOT NULL,
	[LatestSendTime] [datetime] NULL,
	[CountSend] [int] NULL,
	CONSTRAINT [PK__MailRecordSiteName] PRIMARY KEY CLUSTERED ([Id] ASC)
)

GO

CREATE NONCLUSTERED INDEX [IX_MailRecordSiteName_Status] ON [dbo].[MailRecordSiteName] 
(
	[Status] ASC
)

GO



