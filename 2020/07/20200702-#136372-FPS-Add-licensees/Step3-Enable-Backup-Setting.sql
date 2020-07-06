/*
    Task: Integrate new licensees Dabet, Kbet, Sky88, Nbet, TIC88 [RedmindId: #136372]
		+ Enable backup setting
    Server:     DBFRAUD
*/

SET NOCOUNT ON;

IF  OBJECT_ID('tempdb..#NewLicensees') IS NOT NULL
    DROP TABLE  #NewLicensees;
CREATE TABLE    #NewLicensees (
                    SubscriberName      NVARCHAR(50)
                        PRIMARY KEY CLUSTERED
                );

INSERT INTO #NewLicensees (SubscriberName)
SELECT  DISTINCT
        input.SubscriberName
FROM    (
    VALUES  ('Dabet')       --<========== INPUT HERE ==========<
        ,   ('Kbet')        --<========== INPUT HERE ==========<
		,   ('Sky88')	    --<========== INPUT HERE ==========<
		,   ('Nbet')		--<========== INPUT HERE ==========<
		,   ('TIC88')		--<========== INPUT HERE ==========<
) AS input(SubscriberName);

INSERT INTO PerfMonDB.dbo.vnDBA_FPS_BackupDatabases (ServerName, DatabaseName, Threshold, Active, NoFullFiles, NoDiffFiles)
SELECT  [ServerName]    = N'FPS_DB02\FPS_01'
    ,   [DatabaseName]  = N'FPS_SUB_' + input.SubscriberName
    ,   [Threshold]     = NULL
    ,   [Active]        = 1
    ,   [NoFullFiles]   = 1
    ,   [NoDiffFiles]   = 1
FROM    #NewLicensees AS input WITH (NOLOCK);
