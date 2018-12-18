/*
Creator: 20181113@LongLuu
Task:  Permission for Special Currencies - [Redmine ID: 104707]
Server:  bodb_FraudSensor

Reviewer: Billy
*/ 

USE	bodb_FraudSensor;
GO

CREATE TABLE [dbo].[SpecialCurrency](
	[CurrencyId]			INT NOT NULL,
	[CurrencyName]			NVARCHAR(100) NULL,
	[CreatedBy]				INT NULL,
	[CreatedDate]			DATETIME NULL
CONSTRAINT [PK_SpecialCurrency] PRIMARY KEY CLUSTERED 
(
	[CurrencyId]			ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]
GO