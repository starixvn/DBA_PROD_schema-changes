/*
	Task: Prepare DB schema add tables to replication
	Run @ DBCUST, DB06x, DBTP
*/

CREATE TABLE [dbo].[CustBetSetting_Agent](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[MinBet] [money] NULL CONSTRAINT [DF_CustBetSetting_Agent_MinBet]  DEFAULT ((0)),
	[MaxBet] [money] NULL CONSTRAINT [DF_CustBetSetting_Agent_MaxBet]  DEFAULT ((0)),
	[MaxPerMatch] [money] NULL CONSTRAINT [DF_CustBetSetting_Agent_MPM]  DEFAULT ((0)),
	[MaxPerNumber] [money] NULL CONSTRAINT [DF_CustBetSetting_Agent_MPN]  DEFAULT ((0)),
	[MaxPayoutPerMatch] [money] NULL CONSTRAINT [DF_CustBetSetting_Agent_MPPM]  DEFAULT ((0)),
 CONSTRAINT [PK_CustBetSetting_Agent] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustSetting_table]
) ON [CustSetting_table]

GO

CREATE TABLE [dbo].[CustBetSetting_Member](
	[CustID] [int] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[MinBet] [money] NULL CONSTRAINT [DF_CustBetSetting_Member_MinBet]  DEFAULT ((0)),
	[MaxBet] [money] NULL CONSTRAINT [DF_CustBetSetting_Member_MaxBet]  DEFAULT ((0)),
	[MaxPerMatch] [money] NULL CONSTRAINT [DF_CustBetSetting_Member_MPM]  DEFAULT ((0)),
	[MaxPerNumber] [money] NULL CONSTRAINT [DF_CustBetSetting_Member_MPN]  DEFAULT ((0)),
	[MaxPayoutPerMatch] [money] NULL CONSTRAINT [DF_CustBetSetting_Member_MPPM]  DEFAULT ((0)),
 CONSTRAINT [PK_CustBetSetting_Member] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC,
	[SportType] ASC,
	[BetType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [CustSetting_table]
) ON [CustSetting_table]

GO

-------------------------------------------------
CREATE PROCEDURE Acc_DynamicCustSetting3rd_10
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_11
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_12
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_13
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_14
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_15
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_16
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_17
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_18
AS
BEGIN
       RETURN
END

GO
CREATE PROCEDURE Acc_DynamicCustSetting3rd_19
AS
BEGIN
       RETURN
END

