
-- extend BettypeIDList column datatype from varchar(500) to varchar(1024)

use custdb
go


alter table WinLimit_CustGameMonitoring alter column BettypeIDList varchar(1024)

