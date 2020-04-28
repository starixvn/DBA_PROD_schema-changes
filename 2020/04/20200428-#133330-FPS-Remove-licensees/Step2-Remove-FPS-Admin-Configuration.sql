/*
	Task - Remove terminated licensee: Mrcatsb [RedmindId: #133330]
		Remove FPS Admin Configuration
		
    Server: DBFRAUD
*/

SET NOCOUNT ON;

IF  OBJECT_ID('tempdb..#TerminatedLicensees') IS NOT NULL
    DROP TABLE  #TerminatedLicensees;
CREATE TABLE    #TerminatedLicensees (
                    SubscriberId        INT
                ,   SubscriberName      NVARCHAR(50)
                        PRIMARY KEY CLUSTERED
                );

IF  OBJECT_ID('tempdb..#ActionSubscriber') IS NOT NULL
    DROP TABLE  #ActionSubscriber;
CREATE TABLE    #ActionSubscriber (
                    ActionID            INT
                ,   SubscriberID        INT
                ,   IsActive            BIT
);

INSERT INTO #TerminatedLicensees (SubscriberName)
SELECT  DISTINCT
        input.SubscriberName
FROM    (
    VALUES  ('Mrcatsb')			--<========== INPUT HERE ==========<
) AS input(SubscriberName);

UPDATE  tmp WITH (TABLOCK)
SET     tmp.SubscriberId = s.SubscriberID
FROM        #TerminatedLicensees AS tmp
INNER JOIN  FPS_ADMIN.dbo.Subscribers AS s WITH (NOLOCK)
        ON  tmp.SubscriberName = s.SubscriberName;

SELECT  SubscriberId, SubscriberName
FROM    #TerminatedLicensees AS tmp WITH (NOLOCK);

DELETE  acs
OUTPUT  deleted.ActionID, deleted.SubscriberID, deleted.IsActive
INTO    #ActionSubscriber (ActionID, SubscriberID, IsActive)
FROM        FPS_ADMIN.dbo.ActionSubscriber AS acs WITH (ROWLOCK)
INNER JOIN  #TerminatedLicensees AS tmp WITH (NOLOCK)
        ON  tmp.SubscriberId = acs.SubscriberID;

RAISERROR('~ DONE ~     ActionSubscriber        => #ActionSubscriber', 0, 0) WITH NOWAIT;

DELETE  uss
OUTPUT  deleted.SubscriberID, deleted.UserID, deleted.CreatedDate, deleted.SubscriberID
INTO    FPS_ADMIN.dbo.UserSubscribers_Terminated (SubscriberID, UserID, CreatedDate, SubId)
FROM        FPS_ADMIN.dbo.UserSubscribers AS uss WITH (ROWLOCK)
INNER JOIN  #TerminatedLicensees AS tmp WITH (NOLOCK)
        ON  tmp.SubscriberId = uss.SubscriberID;

RAISERROR('~ DONE ~     UserSubscribers         => UserSubscribers_Terminated', 0, 0) WITH NOWAIT;

DELETE  sdb
OUTPUT  deleted.SubscriberID, deleted.ServerIP, deleted.ServerName, deleted.DbName, deleted.LinkedDevice, deleted.IsOnMain
INTO    FPS_ADMIN.dbo.SubDBServers_Terminated (SubscriberId, ServerIP, ServerName, DbName, LinkedDevice, IsOnMain)
FROM        FPS_ADMIN.dbo.SubDBServers AS sdb WITH (ROWLOCK)
INNER JOIN  #TerminatedLicensees AS tmp WITH (NOLOCK)
        ON  tmp.SubscriberId = sdb.SubscriberID;

RAISERROR('~ DONE ~     SubDBServers            => SubDBServers_Terminated', 0, 0) WITH NOWAIT;

DELETE  uss
OUTPUT  deleted.SubscriberName, deleted.SubsciberKey, deleted.IsActive, deleted.EnableSysId, deleted.EnableRuleSet, deleted.ListIPs, deleted.IsTest, deleted.IntegrationDate, deleted.IBCUserName_Prefix, deleted.SyncTicket, deleted.SubscriberID
INTO    FPS_ADMIN.dbo.Subscribers_Terminated (SubscriberName, SubsciberKey, IsActive, EnableSysId, EnableRuleSet, ListIPs, IsTest, IntegrationDate, IBCUserName_Prefix, SyncTicket, SubscriberID)
FROM        FPS_ADMIN.dbo.Subscribers AS uss WITH (ROWLOCK)
INNER JOIN  #TerminatedLicensees AS tmp WITH (NOLOCK)
        ON  tmp.SubscriberId = uss.SubscriberID;

RAISERROR('~ DONE ~     Subscribers             => Subscribers_Terminated', 0, 0) WITH NOWAIT;
GO
