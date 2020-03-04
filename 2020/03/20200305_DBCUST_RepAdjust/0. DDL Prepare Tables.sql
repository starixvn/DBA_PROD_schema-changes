--pub CustDB_DR_Sync - DBCUST/DB06x/DBTP/MNL
--===========================
CREATE TABLE [dbo].[CS_ReportPermission](
	[CustID] [int] NOT NULL,
	[IsViewAllPeriod] [bit] NULL
	CONSTRAINT [PK_CS_ReportPermission] PRIMARY KEY CLUSTERED ([CustID]) ON [DATA]
) ON [DATA]
GO


--pub CustDB_CustSetting - DBCUST/DB06x/DBTP/MNL
--===========================
CREATE TABLE Dep_CustVIP (
	CustID INT NOT NULL,
	ModifiedDate DATETIME NULL,
	UserID INT NULL
CONSTRAINT [PK_Dep_CustVIP] PRIMARY KEY CLUSTERED 
(
	[CustId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [table_customer]
) ON [table_customer]
GO






