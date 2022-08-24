 /*
	Task: Prepare DB schema add objects to DBCUST replication
	
*/

--===========================================================
--Run on DBCUST.CustDB & all its subs in pub CustDB_DBTrans_CustInfo, CustDB_Login_Exchange + related DR servers 
-- ==> Servers/DB: 
--	* KBT: DBCUST.CustDB, DBTRANS.CustDB, DB02/DB04x/DB05x/DB06x/DBTP10C/DBDWx.bodb02
--  * AWS: DBCUST.CustDB, DBTRANS.CustDB, DBTKO/DBBAL/DB02/DB04x/DB05x/DB061/DBDW.bodb02
CREATE TABLE SiteDBConfig (
	SiteDBGroupID SMALLINT,
	LinkedServerName  VARCHAR(512),
	ClientAccessName VARCHAR(512),
	AGIP VARCHAR (50),
	CONSTRAINT PK_SiteDBConfig_SiteDBGroupID PRIMARY KEY (SiteDBGroupID)
	)