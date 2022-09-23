/*
	Task: Alter schema new SiteDB02 before adding to replication
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


--------------
CREATE TABLE [dbo].[ExchangeDaily_Crypto](
        [ExchangeDate] [smalldatetime] NOT NULL,
        [ExchangeId] [int] NOT NULL,
        [USDT] [float] NULL
 CONSTRAINT [PK_ExchangeDaily_Crypto] PRIMARY KEY CLUSTERED 
(
        [ExchangeDate] ASC,
        [ExchangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [DATA]
) ON [DATA]
GO