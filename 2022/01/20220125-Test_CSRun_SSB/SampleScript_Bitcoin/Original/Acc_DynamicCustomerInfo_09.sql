/*<info serverAlias="DBCUST-CUSTDB"></info>*/
ALTER PROCEDURE [dbo].[Acc_DynamicCustomerInfo_09]
	@Custid INT
	,@maxcustid INT
	,@target VARCHAR(20)

AS
/*
	Created: Winfred
	Date: 20210806
	Task: Initialize Product Status for Bitcoin [Redmine: 159039]
	DB: DBCUST/CustDB
	P/s : Step 5 Initialize Product Status
	
	Revisions:
		20220127@Daniel: Cloned
*/ 
BEGIN
	SET NOCOUNT ON
	
	IF (@target = 'REPLICATED' AND @@SERVERNAME IN ('DBCUST','SITDBCUST','DB233','DB230\SQLSERVER2008R2')) RETURN -- run at all replicated servers
	IF (@target = 'DBCUST' AND @@SERVERNAME NOT IN ('DBCUST','SITDBCUST','DB233','DB230\SQLSERVER2008R2')) RETURN -- run at dbcust only
	
	IF NOT (dbo.f_CheckRepTable('Custinfo') = 1 
	   AND dbo.f_CheckRepTable('CustProductStatus') = 1
	   AND dbo.f_CheckRepTable('ProductSettingDetail') = 1
	   AND dbo.f_CheckRepTable('ProductStatusProfile') = 1
	   )
		RETURN
	

	/*******************************CUST PRODUCT STATUS TABLE*******************************/	
	DECLARE @BitmapOrder TINYINT = 35
	CREATE TABLE #CustList 
	(
		CustID INT PRIMARY KEY CLUSTERED,
		UpdStatus BIT DEFAULT 0
	)
	CREATE TABLE #ListTemp
	(
		CustID INT PRIMARY KEY CLUSTERED
	)
	
	INSERT INTO #CustList (CustID)
	SELECT custid 
	FROM dbo.custInfo ci WITH (NOLOCK)
	WHERE ci.srecommend = @Custid
		AND ci.Enabled = 1
		AND ci.custid <= @maxcustid

	--Member Level
	WHILE (1=1)
	BEGIN
		TRUNCATE TABLE #ListTemp
		UPDATE TOP (3000)  t SET t.UpdStatus = 1 
		OUTPUT DELETED.CustID INTO #ListTemp(CustID) 
		FROM #CustList t WHERE t.UpdStatus = 0

		IF @@ROWCOUNT=0
			BREAK

		UPDATE cs
		SET cs.bitmapIsHidden = (SELECT NewBitmap FROM dbo.f_CustSetting_GenerateProductStatus(cs.bitmapIsHidden,@BitmapOrder,0)),
			bitmapIsDisabled = (SELECT NewBitmap FROM dbo.f_CustSetting_GenerateProductStatus(cs.bitmapIsDisabled,@BitmapOrder,0)) 	
		FROM [dbo].[CustProductStatus] cs WITH(ROWLOCK,UPDLOCK)
			INNER JOIN #ListTemp ci WITH(NOLOCK) ON cs.CustID = ci.CustID
	END
	DROP TABLE #ListTemp ,#CustList
END
