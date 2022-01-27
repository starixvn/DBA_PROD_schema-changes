/*<info serverAlias="DBSPARE-bodb02_CustRep" executers="" selecters="" viewers="" isFunction="0" isNested="0"></info>*/
ALTER PROCEDURE [dbo].[Acc_RunCS_SSB_Wrapper]
AS
/*
	Created: Daniel
	Date: 20220126
	Task: Wrapper SP to run all setting steps in desire logic, order, control flow
	DB: DBCUST/CustDB
	
	Revision:
		20220126@Daniel: Init for Bitcoin x
	
*/
BEGIN
	--=====================================================================================
	--Step 1:    Hide Product
	UPDATE S
	SET S.SettingStatus = 2
	FROM ProductSettingDetail S WITH(ROWLOCK) 
	WHERE Sporttype = 175
	

	
	--=====================================================================================
	--Step 2:    Insert global loss limit real currency
	--DECLARE @ProductID INT = 69

	--INSERT INTO dbo.LossLimit_GlobalSetting (ProductId, ExchangeId, MinLossLimit, DefaultLossLimit)
	--SELECT @ProductID, lg.ExchangeId, MinLossLimit, DefaultLossLimit
	--FROM LossLimit_GlobalSetting lg WITH (NOLOCK)
	--	INNER JOIN dbo.exchange e ON e.exchangeid = lg.ExchangeId
	--WHERE ProductId = 44 
	--	AND  e.exchangeid IN ( 2,3,5,6,7,9,12,13,15,16,22,33,34,35,41,42,43,45,47,50,51,52,53,54,57,58,64,67,69,71,81,95)
	--RM,US$,HK$,EURO,DON,AUD,GBP,RMB,IN,Yen,IND,IDD,IDR,$US,CHF,PE,THB,Won,DDD,CAN,INH,DKK,SEK,NOK,CZK,RON,UT,HKK,MMK,KHR,CY,USD



	--=====================================================================================
	--Step xx:    Get and log max CustID from DBTP
	
	--for prod DBCUST
	--DECLARE @MaxCustID INT 
	--select @MaxCustID = max(custid) from DBTP.bodb02.dbo.custinfo with (nolock)
	
	--for test server
	DECLARE @MaxCustID INT 
	select @MaxCustID = max(custid) from dbo.custinfo with (nolock)
	--[Write log or log to systemSetting table]
	


	--=====================================================================================
	--Step 3:    Delete existing data
	EXEC [dbo].[Acc_RunCS_SSB]
		@CSType = 'CustSetting', --CustSetting/CustInfo
		@Step = 1,
		@custid = NULL,
		@maxcustid = NULL



	--=====================================================================================
	--Step 4:    Copy setting (PT, Comm, Bet Limit, WinLossLimit)
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_01 @max_custid = @MaxCustID
	
	
	--=====================================================================================
	--Step 5:    Enable Status for customers
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_02 @max_custid = @MaxCustID



	--=====================================================================================
	--Step 6:    Delete the redundant setting
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_03 @MaxCustID = @MaxCustID
	
	
	
	--=====================================================================================
	--Step 7:    Copy Setting for newly created customers 
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_04 @MaxCustID = @MaxCustID



	--=====================================================================================
	--Step 8:    Copy Setting for newly created customers UUS 
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_05 @MaxCustID = 54541671



	--=====================================================================================
	--Step 9:    Adjust PT, Commission 
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_06



	--=====================================================================================
	--Step 10:  Check And Insert group PT
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_07
	
	
	
	--=====================================================================================
	--Step 11:  Update PT Reference (DBTRANS!!)
	--------------------------------------------------------------------------------------
	PRINT N'Step 11: Start on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.'; 
	UPDATE ps
	SET ps.isActive = 1
	FROM bodb02.dbo.Sport_Bettype_Reference_Setting ps WITH (ROWLOCK,UPDLOCK)
	WHERE SportType = 175
	
	PRINT N'Step 11: End on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.'; 
	
	
	
	--=====================================================================================
	--Step 12:  Disable Status headline
	--------------------------------------------------------------------------------------
	EXEC dbo.Acc_RunCS_Direct_08
	
	
	
	--=====================================================================================
	--Step 13:  Update ProductSettingDetail
	--------------------------------------------------------------------------------------
	PRINT N'Step 13: Start on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.';  
	UPDATE S
	SET S.SettingStatus = 0
	FROM ProductSettingDetail S WITH(ROWLOCK) 
	WHERE Sporttype = 175
	PRINT N'Step 13: End on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.'; 

	
END