/*
    Task: Integrate new licensees Sky, AgentSky [RedmindId: #135340]
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
    VALUES  ('Sky')        --<========== INPUT HERE ==========<
	, ('AgentSky')         --<========== INPUT HERE ==========<
	
) AS input(SubscriberName);

INSERT INTO PerfMonDB.dbo.vnDBA_FPS_BackupDatabases (ServerName, DatabaseName, Threshold, Active, NoFullFiles, NoDiffFiles)
SELECT  [ServerName]    = N'FPS_DB01\MSSQLSERVERWEB'
    ,   [DatabaseName]  = N'FPS_SUB_' + input.SubscriberName
    ,   [Threshold]     = 1
    ,   [Active]        = 1
    ,   [NoFullFiles]   = 1
    ,   [NoDiffFiles]   = 1
FROM    #NewLicensees AS input WITH (NOLOCK);
