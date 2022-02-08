/*<info serverAlias="DBSPARE-bodb02_CustRep" executers="" selecters="" viewers="" isFunction="0" isNested="0"></info>*/
ALTER PROCEDURE [dbo].[Acc_RunCS_Direct_07]
AS
/*
	Created: Winfred
	Date: 20210806
	Task: Create Group PT Setting for Bitcoin - Caller [Redmine: 159039]
	DB: DBCUST/CustDB
	P/s : Step 10 Create Group PT Setting
	
		Revision:
		20220126@Daniel: Init for Bitcoin x
*/ 
BEGIN
	PRINT N'Step 10: Start on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.';  
	IF	OBJECT_ID('tempdb..#supers') IS NOT NULL
		DROP TABLE	#supers;
	CREATE TABLE #supers (custid int,isfinished bit default(0))

	DECLARE  @srecommend INT

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
		AND ci.Site NOT IN ('CN88')
		AND ci.currency IN ( 2,3,5,6,7,9,12,13,15,16,20,22,33,34,35,41,42,43,45,47,50,51,52,53,54,57,58,64,67,69,71,72,81,95)
		--RM,US$,HK$,EURO,DON,AUD,GBP,RMB,IN,Yen,IND,IDD,IDR,$US,CHF,PE,THB,Won,DDD,CAN,INH,DKK,SEK,NOK,CZK,RON,UT,HKK,MMK,KHR,CY,USD,UUS,YNG
		AND  ci.custid IN (
						13869621,
						5340162,
						12262401,
						12141653,
						4138910,
						6379932,
						16112208,
						12141529,
						1539339,
						720475
						--UUS
						,17287861
						,18879367
						,14373244
						,18362423
						,18479460
						,18289591
					)
	-- For deployer info
	DECLARE @super_cnt INT, @index INT = 0
	DECLARE @msg NVARCHAR(200) = 'Currently at order %d, SuperID: %d.'
	DECLARE @msg_total NVARCHAR(200) = 'Total of supers: %d.'

	SET @super_cnt = (SELECT COUNT(*) FROM #supers )
	RAISERROR (@msg_total, 0, 1, @super_cnt) WITH NOWAIT

	WHILE (1 = 1)
	BEGIN
		UPDATE TOP (1) #supers
		SET isfinished = 1
			,@srecommend = custid	
		WHERE isfinished = 0
		
		IF @@ROWCOUNT = 0 BREAK
		
		SET @index = @index + 1
		RAISERROR (@msg, 0, 1, @index, @srecommend) WITH NOWAIT

		--EXEC dbo.Acc_DynamicCustSetting3rd_09 @srecommend = @srecommend
		--		,@target = 'REPLICATED'
				
		EXEC [dbo].[Acc_RunCS_SSB]
			@CSType = 'CustSetting', --CustSetting/CustInfo
			@Step = 3,
			@custid = @srecommend
				
		--waitfor delay '00:00:0.200'
	END
	PRINT N'Step 10: End on ' + CAST(GETDATE() AS NVARCHAR(30)) + N'.'; 
END