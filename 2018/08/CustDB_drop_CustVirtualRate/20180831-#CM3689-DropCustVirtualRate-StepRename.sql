/*
	Creator:	20180831@Daniel
	Task:		Drop unused table CustVirtualRate from DBCUST & replicated servers - Rename step
	Server:		DB05
*/
-- Run this script on DBCUST/DB06/TP, MNL servers
EXEC sp_rename 'custVirtualRate', 'custVirtualRate_Deleted'