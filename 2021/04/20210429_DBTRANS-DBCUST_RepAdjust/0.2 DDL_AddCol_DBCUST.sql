/*
	Task: DDL commands + update data
	Run @ DBCUST
*/

USE [CustDB]
GO
ALTER TABLE CustProductStatus ADD Locked TINYINT NULL CONSTRAINT DF_CustProductStatus_Locked DEFAULT (0)
GO
ALTER TABLE CustProductStatus ADD CloseInfo TINYINT NULL CONSTRAINT DF_CustProductStatus_CloseInfo DEFAULT (0)
GO






