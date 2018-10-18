DECLARE @sql VARCHAR(MAX)
DECLARE @tbl TABLE(name VARCHAR(50), flg bit)
DECLARE @fromDate smalldatetime, @toDate smalldatetime

SET NOCOUNT ON

select @fromDate = '20180920', @toDate = '20180924'

INSERT INTO @tbl(name)
SELECT name FROM sys.tables where name IN(
--'rpt_betting',
--'rpt_betting_BA',
'rptLicWinloss2',
'rptLicWinlossGMT',
--'rptCustomerActive',
'rptCustomerMatch',
'rptCustomerTurnover',
'rptWinlostbyLeague'

--'rpt_BettingByProduct',
--'rpt_BettingBySport',
--'rpt_BettingColossusBets',
--'rpt_BettingParlay',
--'rpt_ThirdPartyWL_ExtraGMT',
--'rptDepWinlost_ThirdParty',
--'rptDepWinlost_ThirdParty_Performance',
--'rptKenoWinloss',
--'rptLicCashoutSummary'

)

SELECT @sql = ''

DECLARE @tbl_name VARCHAR(50)
DECLARE @HasIdentity bit, @sname varchar(100), @tmpActionName varchar(100)
DECLARE @DateCol TABLE(name varchar(100))
DECLARE @Sum_Cols TABLE(name varchar(100))
DECLARE @DateCol_list VARCHAR(max), @SumCol_list VARCHAR(max), 
	@Sumcol_list_agg VARCHAR(max), @SumCol_Compare_list varchar(max),
	@DateCol_listX varchar(max), @col_assign_list VARCHAR(max), @Sumcol_list_Main varchar(max), @Sumcol_list_agg2 varchar(max)

WHILE EXISTS(SELECT 1 FROM @tbl WHERE flg IS NULL)
BEGIN

	delete @DateCol
	delete @Sum_Cols
	select @tbl_name = '', @DateCol_list = '', @SumCol_list = '', @Sumcol_list_agg = '', @Sumcol_list_Main = '', @Sumcol_list_agg2 = '',
			@col_assign_list = '',  @HasIdentity = 0

	SELECT TOP 1 @tbl_name = name FROM @tbl WHERE flg IS NULL
	
	--get date columns
	insert @DateCol
	SELECT top 1 name
	FROM syscolumns
	WHERE id = OBJECT_ID(@tbl_name) AND name like '%date%'

	SELECT @DateCol_list = 
		STUFF ((
			SELECT ', [' + name + ']' FROM @DateCol
			FOR XML PATH('')), 1, 1, '')

	--get other columns
	insert @Sum_Cols
	SELECT name
	FROM syscolumns
	WHERE id = OBJECT_ID(@tbl_name) AND name not in(select name from @DateCol) 
		and (
				name like '%winlos%'
				OR name like '%count%'
				OR name like '%stake%'
				OR name like '%comm' OR name like '%commission%'
				OR name like '%turnover%'
				OR name like '%amount%'
				OR name like '%isBA%'
			)

	SELECT @SumCol_list = 
		STUFF ((
			SELECT ', [' + name + ']' FROM @Sum_Cols
			FOR XML PATH('')), 1, 1, '')


	SELECT @Sumcol_list_Main = 
		STUFF ((
			SELECT ', SUM_' + name + ', SUM2_' + name
			FROM @Sum_Cols
			FOR XML PATH('')), 1, 1, '')

	SELECT @Sumcol_list_agg = 
		STUFF ((
			SELECT ', SUM(' + case when name <> 'isBA' then name else 'CONVERT(INT,' + name + ')' end + ') SUM_' + name + ''
			FROM @Sum_Cols
			FOR XML PATH('')), 1, 1, '')

	SELECT @Sumcol_list_agg2 = 
		STUFF ((
			SELECT ', SUM(' + case when name <> 'isBA' then name else 'CONVERT(INT,' + name + ')' end + ') SUM2_' + name + ''
			FROM @Sum_Cols
			FOR XML PATH('')), 1, 1, '')


	SELECT @SumCol_Compare_list =
		STUFF ((
			SELECT ' OR ROUND(T1.SUM_' + name + ', 2) difXX ROUND(T2.SUM2_' + name + ', 2)'
			FROM @Sum_Cols
			FOR XML PATH('')), 1, 4, '')
	SELECT @SumCol_Compare_list = REPLACE(@SumCol_Compare_list, 'difXX', '<>')
	
	

	--get identity status
	if exists(
	select 1 FROM sys.objects so INNER JOIN sys.columns sc ON so.object_id= sc.object_id 
	WHERE so.Name = @tbl_name and sc.is_identity = 1
	)
		set @HasIdentity = 1
		
	PRINT '--*** Start ' + @tbl_name
	SELECT @sql = 'declare @fromdate' + @tbl_name + ' smalldatetime, @todate' + @tbl_name + ' smalldatetime

select @fromdate' + @tbl_name + ' = ''' + CONVERT(varchar(10), @fromDate, 120) + ''', @todate' + @tbl_name + ' = ''' + CONVERT(varchar(10), @toDate, 120) + '''

SELECT * into #tmp' + @tbl_name + ' FROM DB052.bodb_LicenseeReport.dbo.' + @tbl_name + ' with (nolock) where ' + @DateCol_list + ' between @fromdate' + @tbl_name + ' AND @todate' + @tbl_name + '

select ''' + @tbl_name + ''', COALESCE(T1.' + @DateCol_list + ', T2.' + @DateCol_list + ') ' + @DateCol_list + ',
	' + @Sumcol_list_Main + '
from
(
	select ' + @DateCol_list + ', ' + @Sumcol_list_agg + '
	from #tmp' + @tbl_name + '
	group by ' + @DateCol_list + '
) T1 full join
(
	select ' + @DateCol_list + ', ' + @Sumcol_list_agg2 + '
	from ' + @tbl_name + ' b with (nolock)
	where ' + @DateCol_list + ' between @fromdate' + @tbl_name + ' AND @todate' + @tbl_name + '
	group by ' + @DateCol_list + '
) T2 ON T1.' + @DateCol_list + ' = T2.' + @DateCol_list + '
where ' + @SumCol_Compare_list + '

drop table #tmp' + @tbl_name

	PRINT CAST(@sql AS NTEXT)

----
	
	IF (@@Error = 0) PRINT '--*** Done ' + @tbl_name + CHAR(13)
	ELSE RETURN
	UPDATE @tbl SET flg = 1 WHERE name = @tbl_name
END
