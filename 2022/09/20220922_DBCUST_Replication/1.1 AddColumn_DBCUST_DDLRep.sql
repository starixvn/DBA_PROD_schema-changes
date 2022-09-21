/*
	Task: DDL Alter table column
	Run @ DBCUST
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


-----------------------------------
ALTER TABLE Dep_ProductBetSetting ADD MaxPerBall [decimal](19, 8) NULL
GO

