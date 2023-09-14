/*
20230914 UM
task: migrate DB bodb_CustomerLog to AG
*/


--DBTRANS, DBGRP01L, DBGRP02L, DBGRP03L
USE [bodb_CustomerLog]
GO
ALTER ROUTE [Route_UserLog_DBLOG]   WITH  SERVICE_NAME  = N'Service_UserLog_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
GO
ALTER ROUTE [Route_TicketVoiding_DBLOG]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
--/DBTRANS, DBGRP01L, DBGRP02L, DBGRP03L





--DBCUST
USE [bodb_CustomerLog]
GO
ALTER ROUTE [Route_CustomerLog_DBCUST]   WITH  SERVICE_NAME  = N'Service_CustomerLog_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
GO
ALTER ROUTE [Route_UserLog_Others_To_DBLOG]   WITH  SERVICE_NAME  = N'Service_UserLog_Others_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
--/DBCUST


/*
--DBGRP01L
USE [bodb_CustomerLog]
GO
ALTER ROUTE [Route_TicketVoiding_DBLOG]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBLOG' ,  BROKER_INSTANCE  = N'CEC3A6B7-FB52-4CE8-8974-29992E1DE16A',  ADDRESS  = N'TCP://10.1.1.227:4742' 
GO
ALTER ROUTE [Route_UserLog_DBLOG]   WITH  SERVICE_NAME  = N'Service_UserLog_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
--/DBGRP01L



--DBGRP02L
USE [bodb_CustomerLog]
GO
ALTER ROUTE [Route_TicketVoiding_DBLOG]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
GO
ALTER ROUTE [Route_UserLog_DBLOG]   WITH  SERVICE_NAME  = N'Service_UserLog_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
--/DBGRP02L



--DBGRP03L
USE [bodb_CustomerLog]
GO
ALTER ROUTE [Route_TicketVoiding_DBLOG]   WITH  SERVICE_NAME  = N'Service_TicketVoiding_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
GO
ALTER ROUTE [Route_UserLog_DBLOG]   WITH  SERVICE_NAME  = N'Service_UserLog_DBLOG' ,  ADDRESS  = N'TCP://10.1.1.227:4742' 
--/DBGRP03L
*/