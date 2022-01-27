/*<info serverAlias="DBSPARE-bodb02_CustRep" executers="" selecters="" viewers="" isFunction="0" isNested="0"></info>*/
ALTER PROCEDURE [dbo].[Acc_RunCS_Direct_02]
	@max_custid INT
AS
/*
	Created: Winfred
	Date: 20210806
	Task: Initialize Product Status for Bitcoin - Caller [Redmine: 159039]
	DB: DBCUST/CustDB
	P/s : Step 5 Initialize Product Status
	
		Revision:
		20220126@Daniel: Init for Bitcoin x
*/ 
BEGIN
	-- BEGIN STEP 2: RUN THIS SCRIPT AT ALL REPLICATED SERVERS -----
	--------------------------------------------------------------------------------------
	PRINT N'Step 5: Start on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.';  
	IF	OBJECT_ID('tempdb..#supers') IS NOT NULL
		DROP TABLE	#supers;
	CREATE TABLE #supers (custid int,isfinished bit default(0))

	DECLARE @srecommend INT

	INSERT INTO #supers(custid)
	SELECT ci.custid
	FROM customer ci WITH (NOLOCK) 
		INNER JOIN site s WITH (NOLOCK) ON ci.site = s.site
		LEFT JOIN custsuper cs WITH (NOLOCK) ON ci.custid = cs.custid
	WHERE ci.roleid = 4  
			AND ci.username NOT LIKE '3rdSuper%'
			AND cs.isinternal = 0
			AND ci.custid NOT IN (SELECT custid FROM Dep_CustSuper WITH(NOLOCK))
			AND s.islicensee = 0
			AND ci.custid <= @max_custid
			AND ci.Site NOT IN ('CN88')
			AND ci.currency IN ( 2,3,5,6,7,9,12,13,15,16,22,33,34,35,41,42,43,45,47,50,51,52,53,54,57,58,64,67,69,71,81,95)
			--RM,US$,HK$,EURO,DON,AUD,GBP,RMB,IN,Yen,IND,IDD,IDR,$US,CHF,PE,THB,Won,DDD,CAN,INH,DKK,SEK,NOK,CZK,RON,UT,HKK,MMK,KHR,CY,USD

	-- For deployer info
	DECLARE @super_cnt INT, @index INT = 0
	DECLARE @msg NVARCHAR(200) = 'Currently at order %d, SuperID: %d.'
	DECLARE @msg_total NVARCHAR(200) = 'Total of supers: %d.'

	SET @super_cnt = (SELECT COUNT(*) FROM #supers )
	RAISERROR (@msg_total, 0, 1, @super_cnt) WITH NOWAIT

	WHILE (1 = 1)
	BEGIN
		UPDATE TOP (1) #Supers
		SET isfinished = 1
			,@srecommend = custid	
		WHERE isfinished = 0
		
		IF @@ROWCOUNT = 0 BREAK
				
		SET @index = @index + 1
		RAISERROR (@msg, 0, 1, @index, @srecommend) WITH NOWAIT

		--EXEC dbo.Acc_DynamicCustomerInfo_09 @custid = @srecommend
		--		,@maxcustid = @max_custid
		--		,@target = 'REPLICATED'
	
		EXEC [dbo].[Acc_RunCS_SSB]
			@CSType = 'CustInfo', --CustSetting/CustInfo
			@Step = 1,
			@custid = @srecommend,
			@maxcustid = @max_custid			
				
		--waitfor delay '00:00:0.280'
	END
	PRINT N'Step 5: End on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.';
END