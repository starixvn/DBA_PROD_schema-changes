/*
	Created: 20200210@Elodie	
	Task: Prepare structure for problem account 
	DB: DBCUST/CustDB and all replicated server of related pubs
*/

-- pub CustDB_Customer_Info - DBCUST/DB04x/DB05x/DB06x/DBTP/MNL
--==========================
CREATE TABLE ProblemAccount
(
	CustId				INT NOT NULL,
	ProblemStatus		BINARY(1) NOT NULL,
	ReasonId			TINYINT NULL,
	IsAbnormalMember	BIT NOT NULL,
	Comment				NVARCHAR(300) NULL,
	MaxBet				MONEY NULL,
	MaxPerEvent			MONEY NULL,
	CreatedDate			DATETIME NOT NULL,
	IsReviewed			BIT NOT NULL,
	Informed1By			INT NULL,
	Informed2By			INT NULL,
	ActionId			TINYINT NULL
CONSTRAINT [PK_ProblemAccount] PRIMARY KEY CLUSTERED 
(
	CustId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [table_customer]
) ON [table_customer]
GO

ALTER TABLE [dbo].ProblemAccount ADD CONSTRAINT [DF_ProblemAccount_CreatedDate]  DEFAULT (getdate()) FOR CreatedDate
GO

CREATE NONCLUSTERED INDEX IX_ProblemAccount_CreatedDate ON ProblemAccount (CreatedDate)

GO



--pub CustDB_CustSetting - DBCUST/DB06x/DBTP/MNL
--===========================
CREATE TABLE ProblemAccountAction
(
	ActionID		TINYINT NOT NULL,
	ActionName		VARCHAR(100) NOT NULL,
	IsActive		BIT
CONSTRAINT [PK_ProblemAccountAction] PRIMARY KEY CLUSTERED 
(
	ActionID ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO


