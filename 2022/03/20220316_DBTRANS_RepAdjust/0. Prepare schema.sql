/*
	Task: Prepare DB schema add objects to replication
	
*/

--===========================================================
--Run on DBTRANS & all its subs in DBTRANS_Transfer pub + related DR servers

--DROP TABLE CashOutSelling

USE [bodb02]
GO

CREATE TABLE [dbo].[CashOutSelling](
	[TransID] [bigint] NOT NULL,
	[MatchID] [int] NOT NULL,
	[Bettype] [smallint] NOT NULL,
	[Custid] [int] NOT NULL,
	[CashOutStatus] [tinyint] NOT NULL,
	[Winlost] [money] NOT NULL,
	[PriceInfo] [varchar](1000) NULL,
	[CheckTime] [datetime] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ChangeDate] [datetime] NOT NULL,
	[IsTest] [bit] NOT NULL,
	[VirtualRate] [float] NOT NULL,
	[CashOutExtraInfo] [varchar](2000) NULL,
 CONSTRAINT [PK_CashOutSelling_1] PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO


CREATE NONCLUSTERED INDEX [IX_CashOutStatus] ON [dbo].[CashOutSelling]
(
	[CashOutStatus] ASC
)
INCLUDE([Custid]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO


CREATE NONCLUSTERED INDEX [IX_ChangeDate] ON [dbo].[CashOutSelling]
(
	[ChangeDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO

ALTER TABLE [dbo].[CashOutSelling] ADD  CONSTRAINT [DF_CashOutSelling_CashOutStatus]  DEFAULT ((0)) FOR [CashOutStatus]
GO

ALTER TABLE [dbo].[CashOutSelling] ADD  CONSTRAINT [DF_CashOutSelling_Winlost]  DEFAULT ((0)) FOR [Winlost]
GO

ALTER TABLE [dbo].[CashOutSelling] ADD  CONSTRAINT [DF_CashOutSelling_CheckTime]  DEFAULT (getdate()) FOR [CheckTime]
GO

ALTER TABLE [dbo].[CashOutSelling] ADD  CONSTRAINT [DF_CashOutSelling_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[CashOutSelling] ADD  CONSTRAINT [DF_CashOutSelling_IsTest]  DEFAULT ((0)) FOR [IsTest]
GO

ALTER TABLE [dbo].[CashOutSelling] ADD  CONSTRAINT [DF_CashOutSelling_VirtualRate]  DEFAULT ((0)) FOR [VirtualRate]
GO






