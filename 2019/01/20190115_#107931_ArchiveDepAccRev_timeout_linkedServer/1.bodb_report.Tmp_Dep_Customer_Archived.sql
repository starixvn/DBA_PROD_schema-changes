/*
	Creator: Dominic@20190114
	Task: Create a new table Tmp_Dep_Customer_Archived which will be used as a temporary storage for Deposit Archive Process 
	Redmine: https://nexdev.net/issues/107931
	Run at:	bodb_Report@DB06
*/

USE bodb_Report
GO

CREATE TABLE [dbo].[Tmp_Dep_Customer_Archived](
	[CustID] [int] NOT NULL,
	[ArchivedDate] [datetime] NULL,
	[Username] [varchar](50) NULL,
	[Username2] [varchar](50) NULL,
	[Recommend] [int] NULL,
	[ClosingBalance] [money] NULL,
	[CustIDBalanceDummy] [int] NULL,
	[Status] [varchar](50) NULL,
 CONSTRAINT [PK_CustID] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Data]
) ON [Data]
