-- DB053
-- 1.Check DB State
USE master
GO
SELECT name,SUSER_SNAME() [Owner],compatibility_level
,recovery_model_desc,page_verify_option_desc
FROM sys.databases
GO


-- 2.Check DB Owner -> sa
-- 2.Modify DB Owner
EXEC sp_MSforeachdb 'EXEC [?]..sp_changedbowner ''sa'' '
GO

-- 3.Modify Job Owner
DECLARE @name_holder VARCHAR(1000)
DECLARE My_Cursor CURSOR
FOR
SELECT [name]  FROM msdb..sysjobs 
OPEN My_Cursor
FETCH NEXT FROM My_Cursor INTO @name_holder
WHILE (@@FETCH_STATUS <> -1)
BEGIN
exec msdb..sp_update_job
        @job_name = @name_holder,
        @owner_login_name = 'sa'
FETCH NEXT FROM My_Cursor INTO @name_holder
END 
CLOSE My_Cursor
DEALLOCATE My_Cursor
GO
