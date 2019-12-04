/*
	Creator:	20191120@Sophia
	Task:		Deploy schema for Ploutos - [Redmine: #123957]
	Server:		DBPLO
*/

---------#1 --------------------
 use bodb_Ploutos
 GO 
 
 --DROP TABLE Brand 
CREATE TABLE Brand (
BrandCode	varchar(20),
BrandName	varchar(50),
BrandPrefix	varchar(50),
BrandUrl	varchar(100),
LicenseeID	Int,
CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED 
(
	BrandCode ASC
)) ON [DATA]
GO



---  DROP TABLE MarketBrand
 CREATE TABLE MarketBrand	
(BrandCode	varchar(20),
CurrencyCode varchar(5),
CountryCode	varchar(5),
CONSTRAINT [PK_MarketBrand] PRIMARY KEY CLUSTERED 
(
	BrandCode ASC,
	CurrencyCode ASC 
)) ON [DATA]
GO
		
---  DROP TABLE GameDetail
 CREATE TABLE GameDetail
 (	GameCode	varchar(10),
	GameName	varchar(100),
	GameType	varchar(10),
	ProductId	Smallint,
CONSTRAINT [PK_GameDetail] PRIMARY KEY CLUSTERED 
(
	GameCode ASC 
)) ON [DATA]
GO		




 ---  DROP TABLE PlayerProfile 
 CREATE TABLE PlayerProfile 
 (	
PlayerNo int IDENTITY (18188871,1),
CustID	int NOT NULL,
Username	varchar(30),
Password	varchar(30),
EmailAddress	varchar(50),
IPAddress	varchar(15),
BrandCode	varchar(20) NOT NULL,
LanguageCode	varchar(5),
CurrencyCode	varchar(5),
PlayerTypeCode	varchar(50),
CreatedDate	datetime,
ModifiedDate	datetime,
PlayerCode3rd	varchar(50),
StatusID	Tinyint,
TryCount	Tinyint,
CONSTRAINT [PK_PlayerProfile] PRIMARY KEY CLUSTERED 
(
	BrandCode ASC,
	CustID ASC 
)) ON [PlayerProfile]
GO		

CREATE NONCLUSTERED INDEX [IX_PlayerProfile_BrandStatus] ON [dbo].[PlayerProfile]
(
	[BrandCode] ASC,
	[StatusID] DESC
)
INCLUDE ( 	[CustID],
	[Username],
	[PlayerTypeCode],
	[Password],
	[CurrencyCode],
	[LanguageCode],
	[IPAddress],
	[EmailAddress]) 
WHERE ([StatusID]<>(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PlayerProfile]
GO

ALTER TABLE [dbo].[PlayerProfile] ADD  CONSTRAINT [DF_PlayerProfile_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PlayerProfile] ADD  CONSTRAINT [DF_PlayerProfile_StatusID]  DEFAULT (0) FOR [StatusID]
GO



 ---  DROP TABLE APIHistory_PlayerProfile 
 CREATE TABLE APIHistory_PlayerProfile 
 (	
PlayerNo	int,
TrackingValue	varchar(1000),
ResponseResult	varchar(1000),
PushTime	datetime,
ResponseTime	datetime 

CONSTRAINT [PK_APIHistory_PlayerProfile] PRIMARY KEY CLUSTERED 
(
	PlayerNo ASC ,
	PushTime ASC
)) ON [PlayerProfile]
GO		

 
 -----------------------------------------
 


 ---  DROP TABLE BetTicket 
 CREATE TABLE BetTicket
 (	
TransactionId	bigint,
TransactionDate	datetime,
SettlementDate	datetime,
CustId	int, 
BrandCode varchar(10),
GameCode	varchar(10),
GameType	Int,
GamePlatformCode	varchar(10),
CurrencyCode	varchar(10),
BetAmount	money,
DebitAmount	money,
CreditAmount	money,
NetAmount	money,
WinLostDate	date,
CreatedDate	datetime,
ModifiedDate	datetime,
StatusID	tinyint,
TryCount	tinyint,

CONSTRAINT [PK_BetTicket] PRIMARY KEY CLUSTERED 
(
	TransactionId ASC  
)) ON [BetTicket]
GO		

CREATE NONCLUSTERED INDEX [IX_BetTicket_BrandStatus] ON [dbo].[BetTicket]
(
	[BrandCode] ASC,
	[StatusID] DESC
)
INCLUDE ( 	[GamePlatformCode],
	[GameCode],
	[CurrencyCode],
	[GameType],
	[TransactionDate],
	[TransactionId],
	[BetAmount],
	[NetAmount],
	[CustId],
	[WinLostDate]) 
WHERE ([StatusID]<>(1))
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BetTicket]
GO

ALTER TABLE [dbo].[BetTicket] ADD  CONSTRAINT [DF_BetTicket_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO 
ALTER TABLE [dbo].[BetTicket] ADD  CONSTRAINT [DF_BetTicket_StatusID]  DEFAULT (0) FOR [StatusID]
GO


 

CREATE TABLE  APIHistory_BetTicket_Batch	
	(BatchID	INT IDENTITY (1,1),
	PushTime	DATETIME,
	ResponseTime	DATETIME,
	ResponseResult	VARCHAR(MAX),	 
CONSTRAINT [PK_APIHistory_BetTicket_Batch] PRIMARY KEY CLUSTERED 
(
	BatchID ASC  
)) ON [BetTicket]
GO	
		
		
CREATE TABLE  APIHistory_BetTicket_Detail	
	(TransID	BIGINT,
	BatchID	INT,
	TrackingValue	VARCHAR(1000),
	ResponseResult	VARCHAR(1000),
CONSTRAINT [PK_APIHistory_BetTicket_Detail] PRIMARY KEY CLUSTERED 
(	TransID ASC,
	BatchID ASC  
)) ON [BetTicket]
GO	
	

CREATE VIEW	[dbo].[vw_NEWID]
AS
SELECT	[val] = NEWID();
GO


CREATE TYPE [dbo].[TVP_PlayerProfile] AS TABLE(
	[BrandCode] [varchar](20) NOT NULL,
	[CurrencyCode] [varchar](5) NOT NULL,
	[CustId] [int] NOT NULL,
	[EmailAddress] [varchar](50) NOT NULL,
	[IPAddress] [varchar](15) NOT NULL,
	[IsError] [bit] NULL,
	[LanguageCode] [varchar](5) NOT NULL,
	[Password] [varchar](30) NOT NULL,
	[PlayerCode] [varchar](50) NULL,
	[PlayerTypeCode] [varchar](50) NOT NULL,
	[PushTime] [datetime] NOT NULL,
	[ResponseResult] [varchar](1000) NULL,
	[ResponseTime] [datetime] NOT NULL,
	[Username] [varchar](30) NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[CustId] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO


USE [bodb_Ploutos]
GO

/****** Object:  UserDefinedTableType [dbo].[TVP_BetTicket]    Script Date: 11/23/2019 9:28:18 AM ******/
CREATE TYPE [dbo].[TVP_BetTicket] AS TABLE(
	[BetAmount] [decimal](32, 4) NOT NULL,
	[CurrencyCode] [varchar](5) NOT NULL,
	[GameId] [varchar](10) NOT NULL,
	[GamePlatformCode] [varchar](50) NOT NULL,
	[GameType] [int] NOT NULL,
	[IsError] [bit] NOT NULL,
	[LossAmount] [decimal](32, 4) NULL,
	[PlayerCode] [varchar](50) NOT NULL,
	[ResponseResult] [varchar](1000) NULL,
	[TransactionDate] [datetime] NOT NULL,
	[TransactionNo] [varchar](20) NOT NULL,
	[WinAmount] [decimal](32, 4) NULL,
	PRIMARY KEY CLUSTERED 
(
	[TransactionNo] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO

/****** Object:  UserDefinedTableType [dbo].[TVP_PlayerProfile]    Script Date: 11/28/2019 10:59:25 AM ******/
CREATE TYPE [dbo].[TVP_ErrorMessage] AS TABLE(
	[EntityKey] [varchar](50) NOT NULL,
	[Error] [varchar](1000) NOT NULL,
	PRIMARY KEY CLUSTERED 
(
	[EntityKey] ASC
)WITH (IGNORE_DUP_KEY = OFF)
)
GO

	
--------#2---------------------
 
 
 
 USE [bodb_LicenseeReportArchive]
GO

CREATE TABLE [dbo].[rptDep_AuditTickets_History](
	[PlayerNo] [int] NOT NULL,
	[PlayerName] [varchar](100) NULL,
	[PlayerType] [varchar](10) NULL,
	[TransactionDate] [datetime] NULL,
	[TransactionId] [bigint] NOT NULL,
	[SettlementDate] [datetime] NOT NULL,
	[Brand] [varchar](50) NULL,
	[BrandUrl] [varchar](100) NULL,
	[GameCode] [varchar](10) NULL,
	[GameName] [varchar](100) NULL,
	[GameType] [varchar](50) NOT NULL,
	[CurrencyCode] [varchar](10) NULL,
	[BetType] [varchar](100) NULL,
	[BetAmount] [money] NULL,
	[DebitAmount] [money] NULL,
	[CreditAmount] [money] NULL,
	[NetAmount] [money] NULL,
	[WinLostDate] [date] NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [BATrans_Data]

GO

CREATE CLUSTERED INDEX [CIX_rptDep_AuditTickets_History] ON [dbo].[rptDep_AuditTickets_History]
(
	[TransactionId] ASC,
	[ModifiedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [BATrans_Data]
GO

ALTER TABLE [dbo].[rptDep_AuditTickets_History] ADD  CONSTRAINT [DF_AuditTikets_History_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO


