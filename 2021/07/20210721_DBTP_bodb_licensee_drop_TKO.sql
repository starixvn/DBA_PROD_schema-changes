
-- Run on DBTKO

-- dropped steps on DBTKO 

use [bodb_Licensee]
exec sp_droppullsubscription @publisher = N'DBTP', @publisher_db = N'bodb_licensee', @publication = N'CustDB_bodb_licensee_DR_Sync'
GO
 
 
use [bodb_Licensee]
exec sp_droppullsubscription @publisher = N'DBTP', @publisher_db = N'bodb_Licensee', @publication = N'DBTP_bodb_licensee'
GO

 