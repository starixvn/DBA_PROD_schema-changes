/*
Creator: 20190104@JohnNgo
Task:  Add new fraud case - Bets Near The Goal for Fraud Sensor - Redmine ID: 106079
Server:  bodb_FraudSensor

*/ 

USE	bodb_FraudSensor;
GO

ALTER TABLE [dbo].[SuspiciousCustomer]
ADD Notes		NVARCHAR(2000) NULL;
GO