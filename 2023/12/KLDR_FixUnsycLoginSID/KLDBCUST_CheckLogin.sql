/*
	Task: Check logins' before being dropped and restore after recreating
	Run on KL DBCUST
*/


-- Check logins' dependencies/permission
use master
go

declare @login_name varchar(50) = 'vndba'


--SELECT *
--FROM sys.server_role_members
--WHERE member_principal_id = SERVER_PRINCIPAL_ID(@login_name);

SELECT *
FROM sys.database_role_members
WHERE member_principal_id = DATABASE_PRINCIPAL_ID(@login_name);

SELECT *
FROM sys.database_principals
WHERE sid = SUSER_SID(@login_name);

SELECT *
FROM msdb.dbo.sysjobs
WHERE owner_sid = SUSER_SID(@login_name);

SELECT *
FROM sys.schemas
WHERE principal_id = DATABASE_PRINCIPAL_ID(@login_name);

SELECT *
FROM sys.certificates
WHERE sid = SUSER_SID(@login_name);

SELECT *
FROM sys.endpoints
WHERE principal_id = DATABASE_PRINCIPAL_ID(@login_name);


--Kill login's connection

DECLARE @loginNamesToDrop Table (loginName sysname)
DECLARE @loginName sysname

insert @loginNamesToDrop
select 'danieltest'
union all select 'bodbadminnet'

WHILE(1=1)
BEGIN
 
 select top 1 @loginName = loginName from @loginNamesToDrop
 if (@@ROWCOUNT = 0) BREAK

 DECLARE sessionsToKill CURSOR FAST_FORWARD FOR
  SELECT session_id
  FROM sys.dm_exec_sessions
  WHERE login_name = @loginName
 OPEN sessionsToKill

 DECLARE @sessionId INT
 DECLARE @statement NVARCHAR(200)

 FETCH NEXT FROM sessionsToKill INTO @sessionId

 WHILE @@FETCH_STATUS = 0
 BEGIN
  PRINT 'Killing session ' + CAST(@sessionId AS NVARCHAR(20)) + ' for login ' + @loginName

  SET @statement = 'KILL ' + CAST(@sessionId AS NVARCHAR(20))
  EXEC sp_executesql @statement

  FETCH NEXT FROM sessionsToKill INTO @sessionId
 END

 CLOSE sessionsToKill
 DEALLOCATE sessionsToKill





