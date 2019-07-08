USE [bodb02]
GO

CREATE TABLE [dbo].[TOControl_TicketDetails_Insert](
	[rowid] [bigint] IDENTITY(1,1) NOT NULL,
	[transid] [bigint] NULL,
	[statusID] [tinyint] NULL,
	[bettype] [smallint] NULL
) ON [ServiceBroker]
GO

CREATE CLUSTERED INDEX [CIX_TOControl_TicketDetails_Insert] ON [dbo].[TOControl_TicketDetails_Insert]
(
	[rowid] ASC
) ON [ServiceBroker]

GO
CREATE TABLE [dbo].[TOControl_TicketDetails_Update](
	[RowId] [bigint] IDENTITY(1,1) NOT NULL,
	[TransId] [bigint] NULL,
	[StatusIDInserted] [tinyint] NULL,
	[StatusIDDeleted] [tinyint] NULL
) ON [ServiceBroker]
GO

CREATE CLUSTERED INDEX [CIX_TOControl_TicketDetails_Update] ON [dbo].[TOControl_TicketDetails_Update]
(
	[RowId] ASC
) ON [ServiceBroker]
GO


CREATE TABLE [dbo].[TOControl_Tickets_Setting](
	[sKey] [varchar](30) NOT NULL,
	[sValue] [bigint] NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TOControl_GlobalVariables](
	[VName] [varchar](20) NULL,
	[VValue] [varchar](200) NULL
) ON [Others_table]
GO

CREATE TABLE [dbo].[TOControl_Transition](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CustID] [int] NOT NULL,
	[matchid] [int] NOT NULL,
	[adjusted_TurnOver] [money] NULL,
	[adjusted_HouseTurnOver] [money] NULL,
	[IsGroupHeadLine] [bit] NULL,
 CONSTRAINT [PK_TOControl_Transition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[TOControl_Transition] ADD  CONSTRAINT [DF_TOControl_Transition_IsGroupHeadLine]  DEFAULT ((0)) FOR [IsGroupHeadLine]
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM TOControl_Tickets_Setting WHERE sKey = 'TOControl_Update')
BEGIN
	INSERT INTO TOControl_Tickets_Setting(sKey, sValue) VALUES ('TOControl_Update', 0)
END

IF NOT EXISTS (SELECT TOP 1 1 FROM TOControl_Tickets_Setting WHERE sKey = 'TOControl_Insert')
BEGIN
	INSERT INTO TOControl_Tickets_Setting(sKey, sValue) VALUES ('TOControl_Insert', 0)
END

GO

IF NOT EXISTS (SELECT TOP 1 1 FROM TOControl_GlobalVariables WHERE VName = 'MaxID')
BEGIN
	INSERT INTO TOControl_GlobalVariables(VName, VValue) VALUES ('MaxID', 0)
END
