/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.bodb_licensee]
*/


--	BEGIN STEP :
--		Create new programming objects on bodb_licensee
----------------------------------------------------------------------------------------------------
USE [bodb_Licensee]
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_View]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 12.View
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_View]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined views>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
BEGIN
	SELECT b.name + '.'+ a.name [Name], [type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type='V' AND a.is_ms_shipped=0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Trigger]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 11.Trigger
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Trigger]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined triggers>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
--20161128@LeonHsu: add is_disable column
BEGIN
	SELECT b.name + '.'+ a.name [Name], a.[type], c.is_disabled
	FROM sys.objects(NOLOCK) a
	INNER JOIN sys.schemas(NOLOCK) b ON a.schema_id = b.schema_id
	INNER JOIN sys.triggers(NOLOCK) c ON a.parent_object_id = c.parent_id AND a.object_id = c.object_id
	WHERE a.type='TR' AND a.is_ms_shipped=0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_TableType]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 10.TableType
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_TableType]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/11/11>
-- Description: <DB Compare Tool - check user-defined table type>
-- INPUT
-- =============================================
--20161111@AlexKan: create SP
BEGIN
	SELECT c.name + '.'+ a.name [TableType], b.name [Column], b.column_id, b.max_length, b.precision, b.scale, b.is_nullable
	FROM sys.table_types(NOLOCK) a
	INNER JOIN sys.columns(NOLOCK) b ON a.type_table_object_id = b.[object_id]
	INNER JOIN sys.schemas(NOLOCK) c 
	ON a.schema_id = c.schema_id
	WHERE is_user_defined = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Table]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 9.Table
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Table]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined tables>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
BEGIN
	SELECT b.name + '.'+ a.name [Name], [type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type='U' AND a.is_ms_shipped=0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Synonym]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 8.Synonym
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Synonym]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/11/7>
-- Description: <DB Compare Tool - get user defined synonym>
-- INPUT
-- =============================================
--20161107@AlexKan: create SP by Leon's script
--20170106@AlexKan: remove is_published=0 and add type
BEGIN
	SELECT b.name + '.'+ a.name AS [Name], a.schema_id, a.base_object_name, [type]
	FROM sys.synonyms a WITH(NOLOCK) INNER JOIN sys.schemas b WITH(NOLOCK)
	ON a.schema_id = b.schema_id
	WHERE a.is_ms_shipped = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_SP]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 7.SP
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_SP]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined stored procedures>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
BEGIN
	SELECT b.name + '.'+ a.name [Name], [type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type='P' AND a.is_ms_shipped=0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Repl_Article]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 14.Replication Article
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Repl_Article]
	@TableHTML [varchar](max) = ''
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2018/06/06>
-- Description: <DB Compare Tool - Get Repl Article>
-- INPUT
-- =============================================
BEGIN
SELECT p.name [Publication],t.name [Article]
 ,ISNULL(STUFF( 
       (SELECT ', ' + sc.name AS [text()] 
           FROM dbo.sysarticlecolumns (NOLOCK) tc
               INNER JOIN dbo.syscolumns (NOLOCK) sc
		    ON tc.colid = sc.colorder 
           WHERE tc.artid = t.artid AND t.objid = sc.id 
           ORDER BY sc.colorder
           FOR XML PATH('') 
       ), 1, 2, '' 
   ) ,'')  [Columns]
 FROM dbo.syspublications(NOLOCK) p
   INNER JOIN dbo.sysarticles(NOLOCK) t
 ON p.pubid = t.pubid 
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Repl]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 13.Replication
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Repl]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined stored procedures>
-- INPUT
-- =============================================

BEGIN
SELECT b.name + '.'+ a.name [Name], [type] ,a.is_published,a.is_schema_published
 FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b  
 ON a.schema_id = b.schema_id  
 WHERE a.is_ms_shipped=0  AND (is_published = 1 OR is_schema_published = 1)
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_PermByObject]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 6.PermByObject
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_PermByObject]
	@ObjectName nvarchar(128)
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined permission>
-- INPUT
-- 	@ObjectName: object name
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161107@AlexKan: add ANSI_NULLS and QUOTED_IDENTIFIER ON
--20161109@AlexKan: remove order by
BEGIN
SELECT b.name + '.'+ a.name [object_Name],USER_NAME(c.grantee_principal_id) [user_name]
,c.permission_name 
FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b ON a.schema_id = b.schema_id
INNER JOIN sys.database_permissions(NOLOCK) c ON a.object_id = c.major_id
WHERE USER_NAME(grantee_principal_id) NOT IN ('dbo','public','guest')
  AND b.name + '.'+ a.name = @ObjectName
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Identity]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 5.Identity
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Identity]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined identity column>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161104@AlexKan: modify SP by Leon's suggestion to filter system replication object
--20161107@AlexKan: add ANSI_NULLS and QUOTED_IDENTIFIER ON
--20161109@AlexKan: remove order by
BEGIN
	SELECT a.TABLE_NAME,a.COLUMN_NAME, IDENT_SEED(a.TABLE_NAME) [Seed],IDENT_INCR(a.TABLE_NAME) [Increment]
	FROM INFORMATION_SCHEMA.COLUMNS(NOLOCK) a INNER JOIN INFORMATION_SCHEMA.TABLES(NOLOCK) b
	ON a.TABLE_NAME = b.TABLE_NAME
	WHERE a.TABLE_SCHEMA = 'dbo' AND COLUMNPROPERTY(OBJECT_ID(a.TABLE_NAME),a.COLUMN_NAME, 'IsIdentity') = 1
	AND b.TABLE_TYPE = 'BASE TABLE'
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Function]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 4.FN
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Function]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined functions>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
--20161101@AlexKan: specify select columns
--20161107@AlexKan: modify SP by Leon's suggestion to get 3 level schema name
--20161109@AlexKan: remove order by
BEGIN
	SELECT b.name + '.'+ a.name [Name], [Type]
	FROM sys.objects(NOLOCK) a INNER JOIN sys.schemas(NOLOCK) b
	ON a.schema_id = b.schema_id
	WHERE a.type IN ('TF','FN','IF') AND a.is_ms_shipped=0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_FK]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 3.FK
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_FK]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined foreign keys>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
BEGIN
	SELECT OBJECT_NAME(f.constraint_object_id) AS constraint_name, OBJECT_NAME(f.parent_object_id) AS table_name,
	COL_NAME(f.parent_object_id,f.parent_column_id) AS column_name, OBJECT_NAME(f.referenced_object_id) AS referenced_table_name,
	COL_NAME(f.referenced_object_id,f.referenced_column_id) AS referenced_column_name
	FROM sys.foreign_key_columns f WITH(NOLOCK)
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_DataType]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 2.DataType
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_DataType]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/11/11>
-- Description: <DB Compare Tool - check user-defined data type>
-- INPUT
-- =============================================
--20161111@AlexKan: create SP
BEGIN
	SELECT b.name + '.'+ a.name [TypeName],a.max_length,a.precision,a.scale,a.is_nullable
	FROM sys.types(NOLOCK) a
	INNER JOIN sys.schemas(NOLOCK) b ON a.schema_id = b.schema_id
	WHERE is_user_defined = 1 AND is_table_type = 0
END
GO
/****** Object:  StoredProcedure [dbo].[Dot_DBCompare_Select_Constraint]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 1.Constraint
CREATE PROCEDURE [dbo].[Dot_DBCompare_Select_Constraint]
AS
-- =============================================
-- Author: <Alex Kan>
-- Create date: <2016/10/21>
-- Description: <DB Compare Tool - get user defined constraints>
-- INPUT
-- =============================================
--20161021@AlexKan: create SP by sql statement
BEGIN
	SELECT OBJECT_NAME(c.constid) AS ConstraintName,OBJECT_NAME(c.id) AS TableName,com.[text]
	FROM sys.sysconstraints c WITH(NOLOCK)
	INNER JOIN sys.objects o WITH(NOLOCK) ON c.constid=o.object_id
	INNER JOIN sys.syscomments com WITH(NOLOCK) ON c.constid=com.id
	WHERE o.type ='C' AND is_ms_shipped=0
END
GO
/****** Object:  StoredProcedure [dbo].[Task_Archive_BATransaction_Del]    Script Date: 05/26/2020 02:22:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Task_Archive_BATransaction_Del]
AS
/*
	Create By: 20180625@Patrick
	Task: Remove data after movebet days
	DB: DB042/bodb_Licensee
	Revisions: 
		-20191127@Patrick: Setup sync status ticket on DB052 -> DB054 - [Redmine: #124482]
	Para's explaination
*/
BEGIN
	SET NOCOUNT ON
	SELECT t.TransId
	INTO #__archiveData
	FROM dbo.LicenseeBATransaction_active t WITH(NOLOCK)
		LEFT JOIN bodb02.dbo.bettrans b WITH(NOLOCK) ON t.TransID = b.transid
	WHERE b.transid IS NULL

	DECLARE @__TransIds TABLE (transId BIGINT)
	WHILE 1 = 1
	BEGIN
		
		DELETE FROM @__TransIds
		
		DELETE TOP(2000) 
		FROM #__archiveData
		OUTPUT DELETED.TransID INTO @__TransIds
		
		IF @@ROWCOUNT = 0
			BREAK

		DELETE
		FROM dbo.LicenseeBATransaction_active WITH(ROWLOCK)
		WHERE TransID IN (SELECT t.transId FROM @__TransIds t)

	END

END
GO
