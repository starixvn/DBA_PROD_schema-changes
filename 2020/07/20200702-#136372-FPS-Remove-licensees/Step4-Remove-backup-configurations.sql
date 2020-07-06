/*
    Task - Remove terminated licensees: HC6YAYOU, liv66
		Remove backup configuration
		
    Server: DBFRAUD
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
    VALUES  ('YBTech')			--<========== INPUT HERE ==========<
) AS input(SubscriberName);

UPDATE  fb WITH (ROWLOCK)
SET     Active = 0
FROM        PerfMonDB.dbo.vnDBA_FPS_BackupDatabases AS fb
INNER JOIN  #TerminatedLicensees AS tmp WITH (NOLOCK)
        ON  fb.DatabaseName = N'FPS_SUB_' + tmp.SubscriberName;
GO
