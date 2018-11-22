DECLARE @sql VARCHAR(MAX)
DECLARE @tbl TABLE(name VARCHAR(50), flg bit)

SET NOCOUNT ON

INSERT INTO @tbl(name)
SELECT name FROM sys.tables where name IN(
'Bettrans_Exchange',
'BettransM_Exchange',
'Sum_winloss_Exchange',
'Product3rd_SummarizedDateHistory',
'BetTrans_VoidBridge'

)

SELECT @sql = ''

DECLARE @tbl_name VARCHAR(50)
DECLARE @HasIdentity bit, @sname varchar(20), @tmpActionName varchar(50)
DECLARE @PK_cols TABLE(name varchar(100))
DECLARE @NonPK_cols TABLE(name varchar(100))
DECLARE @PKcol_list VARCHAR(max), @NonPKcol_list VARCHAR(max), @Allcol_list VARCHAR(max), 
	@Allcol_listX VARCHAR(max), @othercol_listX VARCHAR(max), @NonPKcol_Compare_list varchar(max),
	@PKcol_listX varchar(max), @col_assign_list VARCHAR(max)

WHILE EXISTS(SELECT 1 FROM @tbl WHERE flg IS NULL)
BEGIN

	delete @PK_cols
	delete @NonPK_cols
	select @tbl_name = '', @PKcol_list = '', @NonPKcol_list = '', @Allcol_list = '', @Allcol_listX = '',
			@othercol_listX = '', @col_assign_list = '',  @HasIdentity = 0

	SELECT TOP 1 @tbl_name = name FROM @tbl WHERE flg IS NULL
	
	--get PK columns
	insert @PK_cols
	SELECT
	  COL_NAME(T.object_id, IC.column_id) AS column_name
	FROM
	  sys.tables AS T
	  INNER JOIN
	  sys.key_constraints AS KC
	  ON KC.parent_object_id = T.object_id
	  INNER JOIN
	  sys.indexes AS I
	  ON KC.unique_index_id = I.index_id
	  AND KC.parent_object_id = I.object_id
	  INNER JOIN
	  sys.index_columns AS IC
	  ON I.object_id = IC.object_id
	  AND I.index_id = IC.index_id
	WHERE
	  T.type = 'U'
	  AND IC.is_included_column = 0
		AND  T.name = @tbl_name

	SELECT @PKcol_list = 
		STUFF ((
			SELECT ', [' + name + ']' FROM @PK_cols
			FOR XML PATH('')), 1, 1, '')

	--get other columns
	insert @NonPK_cols
	SELECT name
	FROM syscolumns
	WHERE id = OBJECT_ID(@tbl_name) AND name not in(select name from @PK_cols)

	SELECT @NonPKcol_list = 
		STUFF ((
			SELECT ', [' + name + ']' FROM @NonPK_cols
			FOR XML PATH('')), 1, 1, '')

	select @Allcol_list	= @PKcol_list + ',' + @NonPKcol_list


	SELECT @Allcol_listX = 
		STUFF ((
			SELECT ', SOURCE.[' + name + ']' 
			FROM 
			(
				select * from @PK_cols union all select * from @NonPK_cols
			) X
			FOR XML PATH('')), 1, 1, '')
	

	SELECT @PKcol_listX =
		STUFF ((
			SELECT ' AND TARGET.[' + name + '] = SOURCE.[' + name + ']' 
			FROM @PK_cols
			FOR XML PATH('')), 1, 5, '')

	SELECT @NonPKcol_Compare_list =
		STUFF ((
			SELECT ' OR SOURCE.[' + name + '] difXX TARGET.[' + name + ']' 
			FROM @NonPK_cols
			FOR XML PATH('')), 1, 4, '')
	SELECT @NonPKcol_Compare_list = REPLACE(@NonPKcol_Compare_list, 'difXX', '<>')
	SELECT @col_assign_list = 
		STUFF ((
			SELECT ', [' + name + '] = SOURCE.[' + name + ']' 
			FROM @NonPK_cols
			FOR XML PATH('')), 1, 1, '')
	
	select @sname = '@s_' + @tbl_name, @tmpActionName = '@tmpAction_' + @tbl_name
	
	--get identity status
	if exists(
	select 1 FROM sys.objects so INNER JOIN sys.columns sc ON so.object_id= sc.object_id 
	WHERE so.Name = @tbl_name and sc.is_identity = 1
	)
		set @HasIdentity = 1
		
	--SELECT @sql = 'DELETE ' + @tbl_name + CHAR(13) + 
	--CASE WHEN @HasIdentity = 1 THEN 'SET IDENTITY_INSERT ' + @tbl_name + ' ON' + CHAR(13) ELSE '' END +
	--'INSERT INTO ' + @tbl_name + '(' + @col_list + ')' + CHAR(13) +
	--'SELECT ' + @col_list + CHAR(13) +
	--'FROM DB052.bodb_Licensee.dbo.' + @tbl_name + ' WITH(NOLOCK)' + CHAR(13) +
	--CASE WHEN @HasIdentity = 1 THEN 'SET IDENTITY_INSERT ' + @tbl_name + ' OFF' ELSE '' END
	--PRINT '--*** Start ' + @tbl_name
	----EXEC(@sql)
	--PRINT(@sql)
----

		--PRINT(@PKcol_list)
		--PRINT(@NonPKcol_list)
		--PRINT(@Allcol_list)
		--PRINT(@Allcol_listX)
		--PRINT (@col_assign_list)
		--PRINT (@PKcol_listX)

	PRINT '--*** Start ' + @tbl_name
	SELECT @sql = 'declare ' + @tmpActionName + ' TABLE (ChangeType VARCHAR(20))
' + CASE WHEN @HasIdentity = 1 THEN 'SET IDENTITY_INSERT ' + @tbl_name + ' ON' + CHAR(13) ELSE '' END 
	+ 'MERGE dbo.'+ @tbl_name + ' TARGET
USING (
	SELECT ' + @Allcol_list + '
	FROM DB052.bodb_3rdProduct.dbo.' + @tbl_name + ' WITH (NOLOCK)
) AS SOURCE
	ON	' + @PKcol_listX + '
WHEN	MATCHED AND (' + @NonPKcol_Compare_list +') THEN
	UPDATE SET ' + @col_assign_list + '
WHEN NOT MATCHED BY TARGET THEN	
	INSERT (' + @Allcol_list + ')
	VALUES('+ @Allcol_listX +')	
WHEN NOT MATCHED BY SOURCE THEN DELETE
OUTPUT $action into ' + @tmpActionName + ';
' + CASE WHEN @HasIdentity = 1 THEN 'SET IDENTITY_INSERT ' + @tbl_name + ' OFF' ELSE '' END + '
declare ' + @sname + ' varchar(100)
select ' + @sname + ' = ''INSERT - '' + ISNULL(convert( varchar(20), COUNT(1)), 0) from ' + @tmpActionName + ' where ChangeType = ''INSERT''
select ' + @sname + ' = ' + @sname + ' + ''; UPDATE - '' + ISNULL(convert( varchar(20), COUNT(1)), 0) from ' + @tmpActionName + ' where ChangeType = ''UPDATE''
select ' + @sname + ' = ' + @sname + ' + ''; DELETE - '' + ISNULL(convert( varchar(20), COUNT(1)), 0) from ' + @tmpActionName + ' where ChangeType = ''DELETE''
PRINT ''' + @tbl_name + ': '' + ' + @sname

	PRINT CAST(@sql AS NTEXT)
  --select (cast(@sql as XML))



----
	
	IF (@@Error = 0) PRINT '--*** Done ' + @tbl_name + CHAR(13)
	ELSE RETURN
	UPDATE @tbl SET flg = 1 WHERE name = @tbl_name
END
