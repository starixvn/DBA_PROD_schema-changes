/*
    Task - Remove terminated licensees: TGame | Salon365 | NBCbet |	HJTK | Storm88
		Perform last FULL backup
		
    Server: FPS_DB01\MSSQLSERVERWEB
*/

SET NOCOUNT ON;

IF  OBJECT_ID('tempdb..#TerminatedLicensees') IS NOT NULL
    DROP TABLE  #TerminatedLicensees;
CREATE TABLE    #TerminatedLicensees (
                    SubscriberName      NVARCHAR(50)
                        PRIMARY KEY CLUSTERED
                );

INSERT INTO #TerminatedLicensees (SubscriberName)
SELECT  DISTINCT
        input.SubscriberName
FROM    (
    VALUES  ('Mrcatsb')			--<========== INPUT HERE ==========<
) AS input(SubscriberName);

DECLARE @Query      NVARCHAR(MAX)
    ;

SELECT  @Query = qs.str
FROM    (
    SELECT  N'\
IF  DB_ID(''FPS_SUB_' + input.SubscriberName + N''') IS NOT NULL
BEGIN;
    EXECUTE PerfmonDB.dbo.vnDBA_sp_FPS_BackupDatabases @BackupFolder = ''T:\FPSDBBackup'', @BackupDatabase = ''FPS_SUB_' + input.SubscriberName + N''', @Mode = 1;
    RAISERROR(N''~ Last FULL backup for FPS_SUB_' + input.SubscriberName + N' ~ DONE ~'', 0, 0) WITH NOWAIT;
END;
'
    FROM    #TerminatedLicensees AS input WITH (NOLOCK)
    FOR XML PATH ('')
    ,   TYPE
) AS xq(xml)
CROSS APPLY (
    SELECT  xq.xml.value('.[1]', 'NVARCHAR(MAX)')
) AS qs(str);

EXECUTE sys.sp_executesql @Query;
GO
