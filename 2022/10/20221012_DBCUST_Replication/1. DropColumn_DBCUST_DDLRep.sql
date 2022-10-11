/*
	Task: DDL Alter table columns
	Run @ DBCUST
*/

USE [CustDB]
GO

--Drop Constraint of unused Columns
ALTER TABLE dbo.custSetting DROP CONSTRAINT DF_custSetting_minbet
ALTER TABLE dbo.custSetting DROP CONSTRAINT DF_custSetting_maxbet
ALTER TABLE dbo.custsetting3rd DROP CONSTRAINT DF_custSetting3rd_minbet
ALTER TABLE dbo.custsetting3rd DROP CONSTRAINT DF_custSetting3rd_maxbet
GO

--Drop unused Columns
ALTER TABLE dbo.custSetting DROP COLUMN DEL_minbet
ALTER TABLE dbo.custSetting DROP COLUMN DEL_maxbet
ALTER TABLE dbo.CustSetting3rd DROP COLUMN DEL_minbet
ALTER TABLE dbo.CustSetting3rd DROP COLUMN DEL_maxbet
