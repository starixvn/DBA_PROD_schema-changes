--Run on SITDBGRP03L

USE [bodb_CustomerLog]
GO

DROP SERVICE [Service_TicketVoiding_DBTXN]
GO
CREATE SERVICE Service_TicketVoiding_DBGRP03L ON QUEUE [dbo].[Queue_TicketVoiding] ([Contract_TicketVoiding_Log])
GO
GRANT SEND ON SERVICE::[Service_TicketVoiding_DBGRP03L] TO [bodbAdminNet] AS [dbo]
GO


DROP SERVICE Service_UserLog_DBTXN
GO
CREATE SERVICE [Service_UserLog_DBGRP03L]  ON QUEUE [dbo].[Queue_UserLog] ([Contract_UserLog])
GO
GRANT SEND ON SERVICE::[Service_UserLog_DBGRP03L] TO [public] AS [dbo]
GO
