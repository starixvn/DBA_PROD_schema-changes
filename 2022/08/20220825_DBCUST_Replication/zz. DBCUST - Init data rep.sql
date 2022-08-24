/*
	Task: Init data for objects added to replication
	Run @DBCUST
*/

USE CustDB
GO

INSERT INTO SiteDBConfig ([SiteDBGroupID], [LinkedServerName], [ClientAccessName], [AGIP])
SELECT 0, 'DBTXN', 'DBTRANS', '10.40.40.17'
UNION ALL 
SELECT 1, 'DBSite01', 'DBGRP01L', '10.40.40.108'

UPDATE s
SET s.SiteDBGroupID = 1
FROM Site s WITH (ROWLOCK)
WHERE site IN ('sampleSite','athena000')

UPDATE cs
SET cs.SiteDBGroupID = 1
FROM Dep_CustSuper cs WITH (ROWLOCK)
WHERE site IN ('sampleSite','athena000')
