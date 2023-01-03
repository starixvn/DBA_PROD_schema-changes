/*<info serverAlias="SITDBCUST-CustDB"></info>*/
/*
	Created: 20230103@Daniel
	Task: Prepare schema for objects added to replication
	DB: SITDBCUST-CustDB, SITDB05x.bodb02, SITDB05x/SITDB05x/SITD06.bodb02
*/


/*
	Created: 20221121@Eden
	Task: Create/Alter Function and add to replications ( Version origin,xtest,xpre,UAT1,UAt2,UAT3,UAT4:  [#180640]
		f_CustSetting_ProductSettingDetailSel 
		f_CustSetting_SportBetTypeSettingSelect				
	DB: DBCust/CustDB and all replicated server of pub: CustDB_Customer_Info, CustDB_DBTrans_CustInfo
*/
GO
IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_CustSetting_ProductSettingDetailSel]'))
DROP FUNCTION [dbo].f_CustSetting_ProductSettingDetailSel
GO
CREATE FUNCTION	dbo.f_CustSetting_ProductSettingDetailSel(@SettingStatus TINYINT)  
RETURNS TABLE
AS
/*
	Created:	20221121@Eden
	Database:	DBCust/CustDB,DBCTS/bodb02
	
	Revision:
		- 20221121@Eden: Init function [RedmineID: #180640]

	Param's Explanation:
	SELECT * FROM dbo.f_CustSetting_ProductSettingDetailSel(3)
*/
RETURN
	SELECT SettingType,SportType,BetType,IsLive,ProductID,MaxPT,MaxDiscount,IsSync,IsHidden,IsDisabled,SettingLevel,DisplayOrder
				,SettingStatus,IntervalValue,RealProductId,MaxChoice,ProductSettingID,Parent_ProductSettingID,Child_DisplayOrder, SubType
	FROM dbo.ProductSettingDetail WITH(NOLOCK)
	WHERE SettingStatus <= CASE WHEN @SettingStatus = 1 THEN 1
								WHEN @SettingStatus = 0 THEN 0
								ELSE NULL END 
		AND SettingStatus <> 2
	UNION ALL
	SELECT SettingType,SportType,BetType,IsLive,ProductID,MaxPT,MaxDiscount,IsSync,IsHidden,IsDisabled,SettingLevel,DisplayOrder
				,SettingStatus,IntervalValue,RealProductId,MaxChoice,ProductSettingID,Parent_ProductSettingID,Child_DisplayOrder, SubType
	FROM dbo.ProductSettingDetail_UAT WITH(NOLOCK)
	WHERE @SettingStatus = 3
		AND SettingStatus <> 2
GO

IF  EXISTS (SELECT 1 FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[f_CustSetting_SportBetTypeSettingSelect]'))
	DROP FUNCTION [dbo].f_CustSetting_SportBetTypeSettingSelect
GO
CREATE FUNCTION dbo.f_CustSetting_SportBetTypeSettingSelect(@ProductID TINYINT, @SettingType SMALLINT, @SettingStatus TINYINT) 
RETURNS @SportBetTypeSetting TABLE (ProductID TINYINT, SportType SMALLINT, Bettype SMALLINT, IsLive BIT, SettingType SMALLINT, RealProductId TINYINT, SubType TINYINT, Child_DisplayOrder int)
/*
	Created by: Elodie
	Date: 20170317
	Task: Get setting of product
	DB: DBCust/CustDB, DBAGE/bodb02, DBACC/bodb02,DBTXN-CustDB
	Original: 
	
	Revisions:
		- 20170317@Elodie: Get setting of product
		- 20200403@Elodie: Get RealProductID [Redmine: #129440]
		- 20201009@Tina: Add new parameter @SettingStatus [Redmine: #143077]
		- 20221121@Eden: Unify RNG Lottery Customer Settings [RedmineID: #180640]
	Explanation's Param:
		@SettingStatus: 0: Pro, 1: UAT
		
*/   
BEGIN 
	IF @SettingStatus IN (1,0)
	BEGIN
		INSERT @SportBetTypeSetting(ProductID, SportType,Bettype,IsLive, SettingType, RealProductId, SubType, Child_DisplayOrder)
		SELECT DISTINCT ProductID, SportType,Bettype,IsLive, SettingType, RealProductId, SubType, Child_DisplayOrder
		FROM dbo.ProductSettingDetail WITH(NOLOCK)
		WHERE (@ProductID IS NULL OR ProductID = @ProductID ) AND (@SettingType IS NULL OR SettingType = @SettingType) 
				AND SettingStatus <= CASE WHEN @SettingStatus = 1 THEN 1 ELSE 0 END
	END
	ELSE IF @SettingStatus = 3
	BEGIN
		INSERT @SportBetTypeSetting(ProductID, SportType,Bettype,IsLive, SettingType, RealProductId, SubType, Child_DisplayOrder)
		SELECT DISTINCT ProductID, SportType,Bettype,IsLive, SettingType, RealProductId, SubType, Child_DisplayOrder
		FROM dbo.ProductSettingDetail_UAT WITH(NOLOCK)
		WHERE (@ProductID IS NULL OR ProductID = @ProductID ) AND (@SettingType IS NULL OR SettingType = @SettingType) 
			AND SettingStatus <> 2
	END
	
	RETURN
END
GO



    

--============================================================================    
/*
	Created: 20221121@Eden
	Task: Add new table ProductSettingDetail_UAT and add to replications [#180640]
	DB: DBCust/CustDB and all replicated server of pub: CustDB_Customer_Info, CustDB_DBTrans_CustInfo
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSettingDetail_UAT]') AND type in (N'U'))
DROP TABLE [dbo].[ProductSettingDetail_UAT]
GO

/****** Object:  Table [dbo].[ProductSettingDetail_UAT]    Script Date: 11/28/2022 1:25:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ProductSettingDetail_UAT](
	[SettingType] [smallint] NOT NULL,
	[SportType] [smallint] NOT NULL,
	[BetType] [smallint] NOT NULL,
	[IsLive] [bit] NOT NULL,
	[ProductID] [tinyint] NOT NULL,
	[MaxPT] [smallmoney] NULL,
	[MaxDiscount] [decimal](9, 8) NULL,
	[IsSync] [bit] NULL,
	[IsHidden] [bit] NULL,
	[IsDisabled] [bit] NULL,
	[SettingLevel] [tinyint] NULL,
	[DisplayOrder] [tinyint] NOT NULL,
	[SettingStatus] [tinyint] NULL,
	[IntervalValue] [decimal](19, 8) NULL,
	[RealProductId] [tinyint] NOT NULL,
	[MaxChoice] [tinyint] NULL,
	[ProductSettingID] [int] NOT NULL,
	[Parent_ProductSettingID] [int] NULL,
	[Child_DisplayOrder] [int] NULL,
	[SubType] [tinyint] NULL,
 CONSTRAINT [PK_ProductSettingDetail_UAT] PRIMARY KEY CLUSTERED 
(
	[SettingType] ASC,
	[SportType] ASC,
	[BetType] ASC,
	[IsLive] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA],
 CONSTRAINT [UQ_ProductSettingID_UAT] UNIQUE NONCLUSTERED 
(
	[ProductSettingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_MaxPT]  DEFAULT ((90)) FOR [MaxPT]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_MaxDiscount]  DEFAULT ((0.01)) FOR [MaxDiscount]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_IsSync]  DEFAULT ((0)) FOR [IsSync]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_IsHidden]  DEFAULT ((1)) FOR [IsHidden]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_IsDisabled]  DEFAULT ((0)) FOR [IsDisabled]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO

ALTER TABLE [dbo].[ProductSettingDetail_UAT] ADD  CONSTRAINT [DF_ProductSettingDetail_UAT_SettingStatus]  DEFAULT ((0)) FOR [SettingStatus]
GO

--select * from vw_DBA_Replication_GetInfo where Article = 'ProductSettingDetail'

    
