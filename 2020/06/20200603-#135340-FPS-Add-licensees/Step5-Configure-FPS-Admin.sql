/*
    Task: Integrate new licensees Sky, AgentSky [RedmindId: #135340]
		+ Enable backup setting
    Server:     DBFRAUD
*/

SET NOCOUNT ON;

USE FPS_ADMIN;
GO

IF  OBJECT_ID('tempdb..#NewLicensees') IS NOT NULL
    DROP TABLE  #NewLicensees;
CREATE TABLE    #NewLicensees (
                    SubscriberName      NVARCHAR(50)
                        PRIMARY KEY CLUSTERED
                );

IF  OBJECT_ID('tempdb..#UserSubs') IS NOT NULL
    DROP TABLE  #UserSubs;
CREATE TABLE    #UserSubs (
                    UserID              INT
                ,   UserName            NVARCHAR(50)
                ,   SubscriberID        INT
                ,   SiteName            NVARCHAR(50)
                ,   PRIMARY KEY CLUSTERED (UserID, SubscriberID)
                )

INSERT INTO #NewLicensees (SubscriberName)
SELECT  DISTINCT
        input.SubscriberName
FROM    (
    VALUES  ('Sky')        --<========== INPUT HERE ==========<
	, ('AgentSky')         --<========== INPUT HERE ==========<
) AS input(SubscriberName);

-- STEP 1: Insert new subscribers
INSERT INTO dbo.Subscribers
    (         SubscriberName,    SubsciberKey,    IsActive,    EnableSysId,    EnableRuleSet,    ListIPs,    IsTest,    IntegrationDate,    IBCUserName_Prefix)
SELECT  input.SubscriberName, dt.SubsciberKey, dt.IsActive, dt.EnableSysId, dt.EnableRuleSet, dt.ListIPs, dt.IsTest, dt.IntegrationDate, dt.IBCUserName_Prefix
FROM        #NewLicensees AS input WITH (NOLOCK)
CROSS APPLY (
    SELECT  [SubsciberKey]          = LOWER(input.SubscriberName)
        ,   [IsActive]              = 1
        ,   [EnableSysId]           = 1
        ,   [EnableRuleSet]         = 0
        ,   [ListIPs]               = ''
        ,   [IsTest]                = 0
        ,   [IntegrationDate]       = CAST(CAST(GETDATE() AS DATE) AS SMALLDATETIME) 
        ,   [IBCUserName_Prefix]    = ''
) AS dt
WHERE   NOT EXISTS (SELECT 1 FROM dbo.Subscribers AS _s WITH (NOLOCK) WHERE input.SubscriberName = _s.SubscriberName);

-- STEP 2: Insert DB's config
INSERT INTO dbo.SubDBServers
    (   SubscriberId, ServerIP, ServerName, DbName, LinkedDevice, IsOnMain)
SELECT  SubscriberID        = s.SubscriberID
    ,   ServerIP            = '10.40.40.107'                        -- server IP to locate
    ,   ServerName          = 'FPSLIC107WEB'                        -- linked server name to locate
    ,   DbName              = 'FPS_SUB_' + input.SubscriberName     -- database name to create
    ,   LinkedDevice        = 'FPSDEV'                              -- linked server is hosting FPS_DEV
    ,   IsOnMain            = 0
FROM        #NewLicensees AS input WITH (NOLOCK)
LEFT JOIN   dbo.Subscribers AS s WITH (NOLOCK)
        ON  input.SubscriberName = s.SubscriberName
WHERE   NOT EXISTS (SELECT 1 FROM dbo.SubDBServers AS _db WITH (NOLOCK) WHERE s.SubscriberID = _db.SubscriberID);
GO

-- STEP 3: Grant permission on subscriber
INSERT INTO #UserSubs (UserID, UserName, SubscriberID, SiteName)
SELECT  u.UserID, u.UserName, t.SubscriberID, u.SiteName
FROM        dbo.Users u WITH (NOLOCK)
INNER JOIN  dbo.UserGroups ug WITH (NOLOCK)
        ON  u.GroupId = ug.GroupID
CROSS APPLY (
    SELECT  s.SubscriberID
    FROM        dbo.Subscribers s WITH (NOLOCK)
    INNER JOIN  #NewLicensees AS input WITH (NOLOCK)
            ON  s.SubscriberName = input.SubscriberName
) AS t
WHERE   u.StatusID = 1
    AND (   ug.GroupKey = 'sa'
        OR  (   ug.GroupKey = 'administrators' AND ug.SiteName ='FPSADMIN')
        --OR    (   u.UserName IN ('admin', 'ronny', 'phuong', 'pgmrazor') AND ug.SiteName = 'FPS')
        );

MERGE INTO  dbo.UserSubscribers AS t
USING   #UserSubs AS s
    ON  t.UserId = s.UserId
    AND t.SubscriberID = s.SubscriberID
WHEN NOT MATCHED BY TARGET THEN
    INSERT  (  UserId,   SubscriberID)
    VALUES  (s.UserId, s.SubscriberID)
;

-- grant action login  by default
INSERT INTO dbo.ActionSubscriber
    (     SubscriberID, ActionID, IsActive)
SELECT  s.SubscriberID, 2       , 1
FROM        dbo.Subscribers s WITH (NOLOCK)
INNER JOIN  #NewLicensees AS input WITH (NOLOCK)
        ON  s.SubscriberName = input.SubscriberName
INNER JOIN  dbo.SubDBServers AS d WITH (NOLOCK)
        ON  s.SubscriberID = d.SubscriberId;
