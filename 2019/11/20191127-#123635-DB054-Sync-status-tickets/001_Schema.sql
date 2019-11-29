/*
	Task - Setup db054 such as db042
		+ Sync status tickets
	Run on DB054.bodb02	
*/
use bodb02
GO
--//setting tables
CREATE TABLE [dbo].[Task_ArchiveBet](
	[winlostdate] [smalldatetime] NULL
) ON [DATA]

GO

CREATE TABLE [dbo].[Tickets_settled_setting](
	[sKey] [varchar](30) NOT NULL,
	[sValue] [varchar](200) NULL
) ON [PRIMARY]

GO

CREATE UNIQUE CLUSTERED INDEX [CIX_Tickets_settled_setting] ON [dbo].[Tickets_settled_setting]
(
	[sKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

USE [master]
GO

CREATE DATABASE [ServiceBrokerDB] ON  PRIMARY 
( NAME = N'ServiceBrokerDB', FILENAME = N'H:\IBC_DB\ServiceBrokerDB\ServiceBrokerDB.mdf' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [ServiceBrokerData] 
( NAME = N'ServiceBrokerData_01', FILENAME = N'H:\IBC_DB\ServiceBrokerDB\ServiceBrokerData_01.ndf' , SIZE = 4524032KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB )
 LOG ON 
( NAME = N'ServiceBrokerDB_log', FILENAME = N'H:\IBC_DB\ServiceBrokerDB\ServiceBrokerDB_log.ldf' , SIZE = 57664KB , MAXSIZE = 2048GB , FILEGROWTH = 32768KB )
GO

ALTER DATABASE [ServiceBrokerDB] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ServiceBrokerDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ServiceBrokerDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ServiceBrokerDB] SET TRUSTWORTHY ON 
GO
ALTER DATABASE [ServiceBrokerDB] SET RECOVERY SIMPLE 
GO
--===========================

USE [ServiceBrokerDB]
GO

--//[ConfigurationReference]
CREATE TABLE [sb].[ConfigurationReference](
	[FunctionName] [varchar](50) NULL,
	[MaxReceiveMsg] [int] NULL,
	[MaxReceiveTimeOut] [int] NULL
) ON [ServiceBrokerData]

GO
CREATE CLUSTERED INDEX [CIX_ConfigurationReference] ON [sb].[ConfigurationReference]
(
	[FunctionName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

ALTER TABLE [sb].[ConfigurationReference] ADD  CONSTRAINT [DF_ConfigurationReference_MaxReceiveMsg]  DEFAULT ((1)) FOR [MaxReceiveMsg]
GO

ALTER TABLE [sb].[ConfigurationReference] ADD  CONSTRAINT [DF_ConfigurationReference_MaxReceiveTimeOut]  DEFAULT ((1)) FOR [MaxReceiveTimeOut]
GO

--//[ConfigurationReferenceDetail]
CREATE TABLE [sb].[ConfigurationReferenceDetail](
	[FunctionName] [varchar](50) NULL,
	[ContractName] [varchar](200) NULL,
	[MessageType] [varchar](200) NULL,
	[MinConversation] [int] NULL,
	[MaxConversation] [int] NULL
) ON [ServiceBrokerData]

GO
CREATE CLUSTERED INDEX [CIX_ConfigurationReferenceDetail] ON [sb].[ConfigurationReferenceDetail]
(
	[FunctionName] ASC,
	[ContractName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

ALTER TABLE [sb].[ConfigurationReferenceDetail] ADD  CONSTRAINT [DF_ConfigurationReferenceDetail_MinConversation]  DEFAULT ((5)) FOR [MinConversation]
GO

ALTER TABLE [sb].[ConfigurationReferenceDetail] ADD  CONSTRAINT [DF_ConfigurationReferenceDetail_MaxConversation]  DEFAULT ((20)) FOR [MaxConversation]
GO

--//[ConversationCount]
CREATE TABLE [sb].[ConversationCount](
	[FunctionName] [varchar](100) NULL,
	[ContractName] [varchar](200) NULL,
	[Cnt] [int] NULL
) ON [ServiceBrokerData]

GO
CREATE CLUSTERED INDEX [inx_ConversationCount] ON [sb].[ConversationCount]
(
	[FunctionName] ASC,
	[ContractName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

--//[ConversationManagement]
CREATE TABLE [sb].[ConversationManagement](
	[FunctionName] [varchar](50) NULL,
	[ContractName] [varchar](100) NULL,
	[ConversationHandle] [uniqueidentifier] NULL,
	[ConversationNo] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[IsValid] [bit] NULL
) ON [ServiceBrokerData]

GO

CREATE CLUSTERED INDEX [inx_ConversationManagement] ON [sb].[ConversationManagement]
(
	[FunctionName] ASC,
	[ContractName] ASC,
	[ConversationNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

--//[FailedMessageMonitoring]
CREATE TABLE [sb].[FailedMessageMonitoring](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FunctionName] [varchar](50) NULL,
	[TableName] [varchar](200) NULL,
	[MessageType] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
	[ErrorMessage] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[IsResolved] [bit] NULL,
	[ResolvedDate] [datetime] NULL
) ON [ServiceBrokerData] TEXTIMAGE_ON [ServiceBrokerData]

GO

CREATE CLUSTERED INDEX [CIX_FailedMessageMonitoring] ON [sb].[FailedMessageMonitoring]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

ALTER TABLE [sb].[FailedMessageMonitoring] ADD  CONSTRAINT [DF_FailedMessageMonitoring_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [sb].[FailedMessageMonitoring] ADD  CONSTRAINT [DF_FailedMessageMonitoring_IsResolved]  DEFAULT ((0)) FOR [IsResolved]
GO

--//[SettedTicketLogs]
CREATE TABLE [sb].[SettedTicketLogs](
	[Id] [uniqueidentifier] NULL,
	[message_type] [sysname] NULL,
	[message_body] [nvarchar](max) NULL,
	[duration] [int] NULL,
	[creationTime] [datetime] NOT NULL,
	[message_error] [varchar](max) NULL,
	[try_count] [smallint] NULL
) ON [ServiceBrokerData] TEXTIMAGE_ON [ServiceBrokerData]

GO
CREATE CLUSTERED INDEX [CIX_SettedTicketLogs] ON [sb].[SettedTicketLogs]
(
	[creationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

CREATE NONCLUSTERED INDEX [IX_SettedTicketLogs_Id] ON [sb].[SettedTicketLogs]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

ALTER TABLE [sb].[SettedTicketLogs] ADD  CONSTRAINT [DF_SettedTicketLogs_creationTime]  DEFAULT (getdate()) FOR [creationTime]
GO

--//[SettedTicketLogs_Missing]
CREATE TABLE [sb].[SettedTicketLogs_Missing](
	[Id] [uniqueidentifier] NULL,
	[message_type] [sysname] NULL,
	[message_body] [nvarchar](max) NULL,
	[duration] [int] NULL,
	[creationTime] [datetime] NOT NULL,
	[message_error] [varchar](max) NULL,
	[try_count] [int] NULL
) ON [ServiceBrokerData] TEXTIMAGE_ON [ServiceBrokerData]

GO

CREATE CLUSTERED INDEX [CIX_SettedTicketLogs_Missing] ON [sb].[SettedTicketLogs_Missing]
(
	[creationTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

CREATE NONCLUSTERED INDEX [IX_SettedTicketLogs_Missing_Id] ON [sb].[SettedTicketLogs_Missing]
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ServiceBrokerData]
GO

ALTER TABLE [sb].[SettedTicketLogs_Missing] ADD  CONSTRAINT [DF_SettedTicketLogs_Missing_creationTime]  DEFAULT (getdate()) FOR [creationTime]
GO