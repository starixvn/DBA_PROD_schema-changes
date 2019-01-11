/*
	Creator:	20181121@Billy
	Task:		New Middle Service - [Redmine: #104491]
	Server:		FPSADMIN.FPS_MiddleService
	Revisions:
		- 20190103@Harvey.Nguyen: update new schema
*/


USE FPS_MiddleService;
GO

EXECUTE	sys.sp_rename 'dbo.Customers', 'Customers_20180111toberemoved';
EXECUTE	sys.sp_rename 'dbo.Associations', 'Associations_20180111toberemoved';
EXECUTE	sys.sp_rename 'dbo.CustomerEvidences', 'CustomerEvidences_20180111toberemoved';
GO

--	BEGIN STEP 1:
--		Table Customers
----------------------------------------------------------------------------------------------------

CREATE TABLE	dbo.Customers (
					CustId			INT				NOT NULL
				,	Username		NVARCHAR(50)	NOT NULL
				,	Username2		NVARCHAR(50)	NULL
				,	RoleId			TINYINT			NOT NULL
				,	CurrencyId		TINYINT			NOT NULL
				,	CurrencyName	NVARCHAR(50)	NOT NULL
				,	[Site]			VARCHAR(10)		NULL
				,	IsDeposit		BIT				NOT NULL
				,	CreatedDate		DATETIME		NOT NULL
				,	CONSTRAINT	PK_Customers PRIMARY KEY CLUSTERED (CustId ASC) ON DATA
				);

CREATE NONCLUSTERED INDEX	IX_Customers_RoleId ON dbo.Customers (RoleId ASC) ON IDX;

CREATE NONCLUSTERED INDEX	IX_Customers_Username ON dbo.Customers (Username ASC) ON IDX;

ALTER TABLE	dbo.Customers ADD CONSTRAINT DF_Customers_CreatedDate DEFAULT (GETDATE()) FOR CreatedDate;

--	BEGIN STEP 2:
--		Table Associations
----------------------------------------------------------------------------------------------------

CREATE TABLE	dbo.Associations (
					FPSAssId		INT				NOT NULL
				,	SubscriberId	INT				NOT NULL
				,	AccountId		INT				NOT NULL
				,	DeviceId		INT				NOT NULL
				,	CustId			INT				NOT NULL
				,	CreatedDate		DATETIME		NOT NULL
				,	CONSTRAINT	PK_Associations PRIMARY KEY CLUSTERED (FPSAssId ASC, SubscriberId ASC) ON DATA
				);

CREATE NONCLUSTERED INDEX	IX_Associations_DeviceId ON dbo.Associations (DeviceId ASC, CustId ASC, AccountId ASC) ON IDX;

ALTER TABLE	dbo.Associations ADD CONSTRAINT DF_Associations_CreatedDate DEFAULT (GETDATE()) FOR CreatedDate;

--	BEGIN STEP 3:
--		Table CustomerEvidence
----------------------------------------------------------------------------------------------------

CREATE TABLE	dbo.CustomerEvidences (
					CustId			INT				NOT NULL
				,	EviCode			NVARCHAR(50)	NOT NULL
				,	SubscriberId	INT				NOT NULL
				,	CreatedDate		DATETIME		NOT NULL
				,	CONSTRAINT	PK_CustomerEvidences PRIMARY KEY CLUSTERED (CustId ASC, EviCode ASC, SubscriberId ASC) ON DATA
				);

ALTER TABLE	dbo.CustomerEvidences ADD CONSTRAINT DF_CustomerEvidences_CreatedDate DEFAULT (GETDATE()) FOR CreatedDate;

--	BEGIN STEP BONUS:
--		Table ReviewCustomers
----------------------------------------------------------------------------------------------------

CREATE TABLE	dbo.ReviewCustomers (
					CustId			INT				NOT NULL
				,	Username		NVARCHAR(50)	NOT NULL
				,	Username2		NVARCHAR(50)	NULL
				,	RoleId			TINYINT			NOT NULL
				,	CurrencyId		TINYINT			NOT NULL
				,	CurrencyName	NVARCHAR(50)	NOT NULL
				,	[Site]			VARCHAR(10)		NULL
				,	IsDeposit		BIT				NOT NULL
				,	CreatedDate		DATETIME		NOT NULL
				,	StatusId		TINYINT			NOT NULL
				,	ReviewDate		DATETIME		NULL
				,	CONSTRAINT	PK_ReviewCustomers PRIMARY KEY CLUSTERED (CustId ASC) ON DATA
				);

CREATE NONCLUSTERED INDEX	IX_ReviewCustomers_RoleId ON dbo.Customers (RoleId ASC) ON IDX;

CREATE NONCLUSTERED INDEX	IX_ReviewCustomers_Username ON dbo.Customers (Username ASC) ON IDX;

ALTER TABLE	dbo.ReviewCustomers ADD CONSTRAINT DF_ReviewCustomers_CreatedDate DEFAULT (GETDATE()) FOR CreatedDate;
ALTER TABLE	dbo.ReviewCustomers ADD CONSTRAINT DF_ReviewCustomers_StatusId DEFAULT (0) FOR StatusId;

EXEC sys.sp_addextendedproperty @name = N'MS_Description'
	,@value = N'0:Not review; 1: Reviewed'
	,@level0type = N'SCHEMA'
	,@level0name = N'dbo'
	,@level1type = N'TABLE'
	,@level1name = N'ReviewCustomers'
	,@level2type = N'COLUMN'
	,@level2name = N'StatusId'