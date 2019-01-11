/*
	Created: 20190104@Kathy
	DB: DBTXN/bodb02
	Task: Support chatbot [Redmine:#106655]
*/
USE [bodb02]
GO

CREATE TABLE [dbo].[TicketVoiding_Reason](
	[ReasonId] [int] IDENTITY(1,1) NOT NULL,
	[ReasonEnglish] [nvarchar](150) NULL,
	[ReasonChineseSimplified] [nvarchar](150) NULL,
 CONSTRAINT [PK_TicketVoiding_Reason_ReasonId] PRIMARY KEY CLUSTERED 
(
	[ReasonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO


CREATE TABLE [dbo].[TicketVoiding_VoidedTransaction](
	[TransId] [bigint] NOT NULL,
	[MessageId] [int] NOT NULL,
	[ReasonId] [int] NOT NULL,
	[MatchId] [int] NULL,
	[CreatedDate] [datetime] NULL CONSTRAINT [DF_TicketVoiding_VoidedTransaction_CreatedDate]  DEFAULT (getdate())
) ON [DATA]

GO

CREATE CLUSTERED INDEX [CIX_TicketVoiding_VoidedTransaction_Transid] ON [dbo].[TicketVoiding_VoidedTransaction]
(
	[TransId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO


