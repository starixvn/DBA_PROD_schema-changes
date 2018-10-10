DECLARE @sql VARCHAR(MAX)
DECLARE @tbl TABLE(name VARCHAR(50), flg bit)

SET NOCOUNT ON

INSERT INTO @tbl(name)
SELECT name FROM sys.tables where name IN(
--'DataCheckingLog',
'rpt_Betting_BA',
'rpt_BettingByProduct'
--'rpt_BettingBySport',
--'rpt_BettingColossusBets',
--'rpt_BettingParlay',
--'rpt_ThirdPartyWL_ExtraGMT',
--'rptDepWinlost_ThirdParty',
--'rptDepWinlost_ThirdParty_Performance',
--'rptKenoWinloss',
--'rptLicCashoutSummary',
--'Sports_ThirdParty'
)

SELECT @sql = ''

DECLARE @tbl_name VARCHAR(50), @col_list VARCHAR(2000)

WHILE EXISTS(SELECT 1 FROM @tbl WHERE flg IS NULL)
BEGIN
	DECLARE @HasIdentity bit
	set @HasIdentity = 0



	SELECT TOP 1 @tbl_name = name FROM @tbl WHERE flg IS NULL
	SELECT @col_list = 
		STUFF ((
			SELECT ', [' + name + ']'
			FROM syscolumns
			WHERE id = OBJECT_ID(@tbl_name) AND
				name <> 'me'
			FOR XML PATH('')), 1, 1, '')	
	
	if exists(
	select 1 FROM sys.objects so INNER JOIN sys.columns sc ON so.object_id= sc.object_id 
	WHERE so.Name = @tbl_name and sc.is_identity = 1
	)
		set @HasIdentity = 1
		
	SELECT @sql = 'TRUNCATE TABLE ' + @tbl_name + CHAR(13) + 
	CASE WHEN @HasIdentity = 1 THEN 'SET IDENTITY_INSERT ' + @tbl_name + ' ON' + CHAR(13) ELSE '' END +
	'INSERT INTO ' + @tbl_name + '(' + @col_list + ')' + CHAR(13) +
	'SELECT ' + @col_list + CHAR(13) +
	'FROM DB052.bodb_LicenseeReport.dbo.' + @tbl_name + ' WITH(NOLOCK)' + CHAR(13) +
	CASE WHEN @HasIdentity = 1 THEN 'SET IDENTITY_INSERT ' + @tbl_name + ' OFF' ELSE '' END
	PRINT '--*** Start ' + @tbl_name
	--EXEC(@sql)
	PRINT(@sql)
	
	IF (@@Error = 0) PRINT '--*** Done ' + @tbl_name + CHAR(13)
	ELSE RETURN
	UPDATE @tbl SET flg = 1 WHERE name = @tbl_name
END
