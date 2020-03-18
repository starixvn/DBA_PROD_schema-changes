--pub CustDB_CustSetting - DBCUST/DB06x/DBTP/MNL
--===========================


CREATE TABLE [dbo].[VRSettingManualUpdAcc](
	[SportType] [smallint] NOT NULL,
	[CustID] [int] NOT NULL
 CONSTRAINT [PK_VRSettingManualUpdAcc] PRIMARY KEY CLUSTERED 
(
	[SportType] ASC,
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [virtualrate_table]
) ON [virtualrate_table]
GO


CREATE TABLE SuspiciousCust
(
	CustID			INT NOT NULL,
	NotifyStatus1	TINYINT NOT NULL,
	NotifyStatus2	TINYINT NOT NULL
CONSTRAINT [PK_SuspiciousCust] PRIMARY KEY CLUSTERED 
(
	CustID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [table_customer]
) ON [table_customer]
GO


CREATE TABLE [dbo].[Acc_FinancePermission](
	[GroupId] [smallint] NOT NULL,
	[FinanceCode] [varchar](50) NOT NULL,
	[RoleId] [tinyint] NULL,
	[IsView] [bit] NOT NULL,
 CONSTRAINT [PK_Acc_FinancePermission] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[FinanceCode] ASC
)
) ON [DATA]
GO










