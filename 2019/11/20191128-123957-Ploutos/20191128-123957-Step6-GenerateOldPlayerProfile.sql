
USE [bodb_Ploutos]
GO

 /*
Created: 20191120@Sophia
DB: DB053.bodb_Ploutos
Task :  Initial Data
*/


DECLARE  @Brand VARCHAR(100) = 'Opal88'  

 , @TargetFromDate DATETIME = '2018-01-01'
 , @TargetToDate DATETIME = '2019-12-01'
 , @FromDate DATETIME  
 , @ToDate DATETIME  
 , @CurrencyCode VARCHAR(5)
 , @CountryCode VARCHAR(5) 
 , @Number INT
 
SELECT @FromDate = @TargetFromDate
SELECT @ToDate = DATEADD(MM,3,@FromDate)


WHILE (@FromDate <= @TargetToDate ) 
BEGIN 

	CREATE TABLE #Country (ID INT IDENTITY (1,1) , CountryCode VARCHAR(5), Number INT )

	SELECT PlayerNo, PlayerName, Brand, CurrencyCode 
	INTO #T
	FROM bodb_LicenseeReportArchive.dbo.rptDep_AuditTickets WITH (NOLOCK) 
	WHERE 	Brand = @Brand   
			AND WINLOSTDATE BETWEEN @FromDate AND @Todate
			AND (PlayerName LIKE Brand +  '%'  
				OR (PlayerName LIKE 'IvoryBet%' AND Brand = 'IvorySport'  )
				)
	GROUP BY PlayerNo, PlayerName , Brand, CurrencyCode
	
	


	INSERT INTO #Country (CountryCode, Number)
	SELECT M.CountryCode , COUNT (T.PlayerNo) AS Number
	FROM #T T  
	INNER JOIN MarketBrand M WITH (NOLOCK)
		ON	M.BrandCode = T.Brand AND M.CurrencyCode = T.CurrencyCode
	GROUP BY M.CountryCode 

	DECLARE @i INT = 1, @Max INT 

	SELECT @Max = MAX(ID) FROM #Country


	WHILE @i <= @Max
	BEGIN 
		SELECT @CountryCode = CountryCode, 
			   @Number = Number
		FROM #Country
		WHERE ID = @i


			;WITH CTE_Player AS ( SELECT  ROW_NUMBER() OVER (ORDER BY T.PlayerNo ASC) AS RowId
					,PlayerNo as CustID
					,PlayerName  as Username 
					,Prepare.Password AS [Password]
					,LOWER(REPLACE(T.PlayerName, L.LicenseeName,''  ) + '@' + + LEFT(Prepare.Domain, CASE WHEN CHARINDEX('/', Prepare.Domain) > 0 THEN CHARINDEX('/', Prepare.Domain)-1 ELSE LEN(Prepare.Domain) END)) AS [EmailAddress]								
					,T.Brand AS [BrandCode]
					,Prepare.LanguageCode AS [LanguageCode]
					,T.CurrencyCode  [CurrencyCode]
					,'Real' AS [PlayerTypeCode] 
					,0 AS StatusID 
			FROM #T t
			INNER JOIN MarketBrand M WITH (NOLOCK) 
					ON M.BrandCode = T.Brand AND M.CurrencyCode = T.CurrencyCode
			INNER JOIN Brand WITH (NOLOCK) 
					ON T.Brand = Brand.BrandCode
			INNER JOIN bodb_Licensee.dbo.Licensees l WITH (NOLOCK) ON L.LicenseeID = Brand.LicenseeID
			CROSS APPLY (
					SELECT  
						--Player Password
						dbo.Plo_F_Password_Generate(NEWID(), RAND()) AS [Password]
						,
						--Player LanguageCode
						dbo.Plo_F_Language_Generate(NEWID()) AS [LanguageCode]
						,
						REPLACE(SUBSTRING(Brand.BrandUrl , CASE WHEN CHARINDEX('//',Brand.BrandUrl) > 0 THEN CHARINDEX('//',Brand.BrandUrl) + 2 ELSE 0 END, 100), 'www.','') AS Domain 
				  ) AS Prepare
				 
			WHERE   M.CountryCode = @CountryCode 
					AND NOT EXISTS(SELECT 1 FROM PlayerProfile p WITH (NOLOCK) WHERE p.CustID = t.PlayerNo AND p.BrandCode = t.Brand)
				 
			 )
		INSERT INTO [dbo].[PlayerProfile]
				   ( [CustID]
				   ,[Username]
				   ,[Password]
				   ,[EmailAddress]
				   ,[IPAddress]
				   ,[BrandCode]
				   ,[LanguageCode]
				   ,[CurrencyCode]
				   ,[PlayerTypeCode] 
				   ,[StatusID]
				   ) 
		SELECT  	[CustID]
				   ,[Username]
				   ,[Password]
				   ,[EmailAddress]
				   ,[IPAddress]
				   ,[BrandCode]
				   ,[LanguageCode]
				   ,[CurrencyCode]
				   ,[PlayerTypeCode] 
				   ,0 AS StatusID
		FROM CTE_Player c
			INNER JOIN [dbo].[Plo_F_IPAddress_GenerateTable](@CountryCode, @NUMBER)  I
				   ON I.RowID = c.RowId
		WHERE NOT EXISTS(SELECT 1 FROM PlayerProfile p WITH (NOLOCK) WHERE p.CustID = c.custid AND p.BrandCode = c.BrandCode)
				   
				 

		SELECT @i = @i +1
	END 	
	 
	DROP TABLE #T
	DROP TABLE #Country
	
	SELECT @FromDate = DATEADD(DD,1,@ToDate)
	SELECT @ToDate = DATEADD(MM,3,@FromDate)
		
END 


------------------------------------------
 
   
 