/*<info serverAlias="DBGRP03L-master"></info>*/
/*
	Task - Scale out dbtrans
		+ Setup SSB ( certificate, endpoint)
	Run on DBGRP03L
*/

USE [bodb_CustomerLog]
GO

/****** Object:  BrokerService [Service_TicketVoiding_DBTXN]    Script Date: 7/13/2023 4:54:19 AM ******/
DROP SERVICE Service_TicketVoiding_DBTXN
GO

/****** Object:  BrokerService [Service_TicketVoiding_DBGRP03L]    Script Date: 7/13/2023 4:54:19 AM ******/
CREATE SERVICE [Service_TicketVoiding_DBGRP03L]  ON QUEUE [dbo].[Queue_TicketVoiding] ([Contract_TicketVoiding_Log])
GO

/****** Object:  BrokerService [Service_UserLog_DBTXN]    Script Date: 7/13/2023 4:53:18 AM ******/
DROP SERVICE Service_UserLog_DBTXN
GO

/****** Object:  BrokerService [Service_UserLog_DBGRP03L]    Script Date: 7/13/2023 4:53:18 AM ******/
CREATE SERVICE [Service_UserLog_DBGRP03L]  ON QUEUE [dbo].[Queue_UserLog] ([Contract_UserLog])
GO