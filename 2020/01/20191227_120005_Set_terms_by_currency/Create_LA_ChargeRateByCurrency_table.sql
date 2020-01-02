USE [bodb_Licensee]
GO

/*
	Created: 20191121@Parsons
	DB: DBCUST
	Task: Set terms by currency [#FeatureID 120005]
	Description: Create LA_ChargeRateByCurrency table
*/

CREATE TABLE [dbo].[LA_ChargeRateByCurrency](
	[ChargeID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[Rate] [money] NOT NULL,
 CONSTRAINT [PK_LA_ChargeRateByCurrency] PRIMARY KEY CLUSTERED 
(
	[ChargeID] ASC,
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
) ON [DATA]

GO