
    /*	
	Created: 20200602@Sol
	Task: Add new column to CustSuper table - [Redmine:#134242]
	DB: DBCUST/CustDB
*/

USE CustDB

GO 

ALTER TABLE CustSuper ADD IsAutoEnableADBMaster BIT NOT NULL
	CONSTRAINT DF_CustSuper_IsAutoEnableADBMaster DEFAULT(0) WITH VALUES

GO