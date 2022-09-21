/*
	Task: DDL Alter table column
	Run @ DBGRP02L
*/

USE [CustDB]

GO

ALTER TABLE Exchange 
ALTER COLUMN MultipliedBy DECIMAL (19,8) 

ALTER TABLE Exchange 
ALTER COLUMN Code VARCHAR(12)

ALTER TABLE ExchangeDailyOanda 
ALTER COLUMN Code VARCHAR(12)

ALTER TABLE Exchange 
ADD CurrencyType TINYINT NOT NULL CONSTRAINT [DF_Exchange_CurrencyType]  DEFAULT (0) 
