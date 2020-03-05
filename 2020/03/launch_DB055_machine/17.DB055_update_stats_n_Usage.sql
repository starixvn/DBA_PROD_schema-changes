-- DB055 

-- 1.bodb_Licensee
USE bodb_Licensee;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- 2.ServiceBrokerDB
USE ServiceBrokerDB;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- 3.bodb02
USE bodb02;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- 4.bodb_ost
USE bodb_ost;
EXEC sp_updatestats;
DBCC updateusage(0);
GO
-- 5.MonDB
USE MonDB;
EXEC sp_updatestats;
DBCC updateusage(0);
GO