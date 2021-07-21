 ---- run on DBBAL
 --- dropped steps on DBBAL

use [bodb_licensee]
exec sp_droppullsubscription @publisher = N'DBTP', @publisher_db = N'bodb_licensee', @publication = N'CustDB_bodb_licensee_DR_Sync'
GO
use [bodb_licensee]
exec sp_droppullsubscription @publisher = N'DBTP', @publisher_db = N'bodb_licensee', @publication = N'DBTP_bodb_licensee'
GO
