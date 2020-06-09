--Prepare tables for adding to Replication
--Run on DBCUST & All replicated servers of related publications

--create table VRSettingReference for pub CustDB_CustSetting
CREATE TABLE dbo.VRSettingReference(
	SportType     INT NOT NULL, 
	LeagueGroupID INT NOT NULL, 
	BetType       INT NOT NULL, 
	RefLevelID    INT NOT NULL
CONSTRAINT [PK_VRSettingReference] PRIMARY KEY CLUSTERED 
(	
	SportType ASC,
	LeagueGroupID ASC,
	BetType ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON virtualrate_table
) ON virtualrate_table
GO


--create table CustInDirectLogin for pub CustDB_DR_sync
CREATE TABLE [dbo].[CustInDirectLogin](	
	CustID	 INT,
	SubAccID INT,
	CustIDIndirect	INT,
	SubAccIDIndirect INT,
	LastVerifyPwd	DATETIME
CONSTRAINT [PK_CustInDirectLogin] PRIMARY KEY CLUSTERED 
	(
		[CustID] ASC,
		SubAccID ASC,
		CustIDIndirect ASC,
		SubAccIDIndirect ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [table_customer]
) ON [table_customer]
GO
