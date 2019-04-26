/*
	Created: Johnson@20190416
	DB: DBCUST/CustDB
	Task: prepare structure for suspendinfo [redmine: #105587]	
*/
--step1: add new column SuspendInfo into CustProductStatus
USE CustDB
GO

ALTER TABLE CustProductStatus ADD SuspendInfo TINYINT NULL
GO
ALTER TABLE CustProductStatus ADD CONSTRAINT DF_CustProductStatus_SuspendInfo DEFAULT(0) FOR SuspendInfo
GO
