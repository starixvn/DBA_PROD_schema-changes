-- DB053 

-- bk
USE bk;
EXEC sp_updatestats;
DBCC updateusage(0);
GO
-- bodb_3rdProduct
USE bodb_3rdProduct;
EXEC sp_updatestats;
DBCC updateusage(0);
GO
-- bodb_ChatBot
USE bodb_ChatBot;
EXEC sp_updatestats;
DBCC updateusage(0);
GO
-- bodb_FraudSensor
USE bodb_FraudSensor;
EXEC sp_updatestats;
DBCC updateusage(0);
GO
-- bodb_Licensee
USE bodb_Licensee;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- bodb_licenseeReport
USE bodb_licenseeReport;
EXEC sp_updatestats;
DBCC updateusage(0);
GO
-- bodb_licenseeReportArchive
USE bodb_licenseeReport;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- bodb_Ploutos
USE bodb_Ploutos;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- bodb_Summary
USE bodb_Summary;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- bodb02
USE bodb02;
EXEC sp_updatestats;
DBCC updateusage(0);
GO

-- 5.MonDB
USE MonDB;
EXEC sp_updatestats;
DBCC updateusage(0);
GO