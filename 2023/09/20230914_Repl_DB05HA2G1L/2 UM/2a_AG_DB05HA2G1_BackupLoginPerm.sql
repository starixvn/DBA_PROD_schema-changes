/*
	Task: Check logins' dependencies/permission before being dropped and restore after recreating
	Run on DB053
*/


-- Check:
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


-- Restore:

