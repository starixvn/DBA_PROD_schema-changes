USE [bodb02]
GO

CREATE MESSAGE TYPE [MessageType_TOControl_Multiple] VALIDATION = NONE
GO

CREATE MESSAGE TYPE [MessageType_TOControl_Single] VALIDATION = NONE
GO

CREATE CONTRACT [Contract_TOControl_Multiple] ([MessageType_TOControl_Multiple] SENT BY ANY)
GO

CREATE CONTRACT [Contract_TOControl_Single] ([MessageType_TOControl_Single] SENT BY ANY)
GO

CREATE QUEUE [dbo].[Queue_TOControl_DBAGE] WITH STATUS = ON , RETENTION = OFF , ACTIVATION (  STATUS = OFF , PROCEDURE_NAME = [sb].[TOControl_ProcessData] , MAX_QUEUE_READERS = 1 , EXECUTE AS N'dbo'  ), POISON_MESSAGE_HANDLING (STATUS = ON)  ON [PRIMARY] 
GO

CREATE SERVICE [Service_TOControl_Initiator_DBAGE]  ON QUEUE [dbo].[Queue_TOControl_DBAGE] ([Contract_TOControl_Multiple],
[Contract_TOControl_Single])
GO

CREATE SERVICE [Service_TOControl_Target_DBAGE]  ON QUEUE [dbo].[Queue_TOControl_DBAGE] ([Contract_TOControl_Multiple],
[Contract_TOControl_Single])
GO


CREATE TABLE [sb].[ConfigurationReference](
	[FunctionName] [varchar](50) NOT NULL,
	[MaxReceiveMsg] [int] NULL,
	[MaxReceiveTimeOut] [int] NULL,
	[IsExistingTarget] [bit] NULL,
 CONSTRAINT [PK_ConfigurationReference_FunctionName] PRIMARY KEY CLUSTERED 
(
	[FunctionName] ASC
) ON [ServiceBroker]
) ON [ServiceBroker]
GO

ALTER TABLE [sb].[ConfigurationReference] ADD  CONSTRAINT [DF_ConfigurationReference_MaxReceiveMsg]  DEFAULT ((1)) FOR [MaxReceiveMsg]
GO

ALTER TABLE [sb].[ConfigurationReference] ADD  CONSTRAINT [DF_ConfigurationReference_MaxReceiveTimeOut]  DEFAULT ((1)) FOR [MaxReceiveTimeOut]
GO

CREATE TABLE [sb].[ConfigurationReferenceDetail](
	[FunctionName] [varchar](50) NOT NULL,
	[ContractName] [varchar](200) NOT NULL,
	[MessageType] [varchar](200) NULL,
	[MinConversation] [int] NULL,
	[MaxConversation] [int] NULL,
 CONSTRAINT [PK_ConfigurationReferenceDetail_FunctionName_ContractName] PRIMARY KEY CLUSTERED 
(
	[FunctionName] ASC,
	[ContractName] ASC
) ON [ServiceBroker],
 CONSTRAINT [UN_ContractName_MessageType] UNIQUE NONCLUSTERED 
(
	[ContractName] ASC,
	[MessageType] ASC
) ON [ServiceBroker]
) ON [ServiceBroker]
GO

ALTER TABLE [sb].[ConfigurationReferenceDetail] ADD  CONSTRAINT [DF_ConfigurationReferenceDetail_MinConversation]  DEFAULT ((5)) FOR [MinConversation]
GO

ALTER TABLE [sb].[ConfigurationReferenceDetail] ADD  CONSTRAINT [DF_ConfigurationReferenceDetail_MaxConversation]  DEFAULT ((20)) FOR [MaxConversation]
GO

CREATE TABLE [sb].[ConversationCount](
	[FunctionName] [varchar](100) NOT NULL,
	[ContractName] [varchar](200) NOT NULL,
	[Cnt] [int] NULL,
 CONSTRAINT [PK_ConversationCount_FunctionName_ContractName] PRIMARY KEY CLUSTERED 
(
	[FunctionName] ASC,
	[ContractName] ASC
) ON [ServiceBroker]
) ON [ServiceBroker]
GO


CREATE TABLE [sb].[ConversationManagement](
	[FunctionName] [varchar](50) NOT NULL,
	[ContractName] [varchar](100) NOT NULL,
	[ConversationNo] [int] NOT NULL,
	[ConversationHandle] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[IsValid] [bit] NULL,
 CONSTRAINT [PK_ConversationManagement_FunctionName_ContractName_ConversationNo] PRIMARY KEY CLUSTERED 
(
	[FunctionName] ASC,
	[ContractName] ASC,
	[ConversationNo] ASC
) ON [ServiceBroker]
) ON [ServiceBroker]
GO

