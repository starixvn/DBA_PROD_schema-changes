-- Task: Remove idenitty proprerty of exchange.exchangeid - Clone new table preparing for switch table (rename) in UM
-- Do before UM for both KBT & MNL related servers
-- Run on DBCUST, DB04x, DB05x, DB06x, DBTP, DBTRANS, DB02, DBM2STAGE, DBODDSCx, DBDWx + MNL


--================================================================================================================================================
-- 1. Create new table
CREATE TABLE [dbo].[exchange_new](
	[exchangeid] [int] NOT NULL,
	[currency] [nvarchar](50) NOT NULL,
	[stakerate] [float] NULL,
	[actualrate] [float] NOT NULL,
	[commaxpayout] [float] NULL,
	[creator] [nvarchar](50) NOT NULL,
	[minbet] [float] NULL,
	[minbetlive] [float] NULL,
	[AUDRate] [float] NULL,
	[ZARRate] [float] NULL,
	[GBPRate] [float] NULL,
	[EURORate] [float] NULL,
	[US$Rate] [float] NULL,
	[Code] [varchar](3) NULL,
	[Description] [varchar](100) NULL,
	[MultipliedBy] [int] NULL,
	[ExVirtualRate] [float] NULL,
	[PJUnitPrice] [decimal](19, 8) NULL,
	[OfferSite] [tinyint] NOT NULL CONSTRAINT [DF_Exchange_new_OfferSite]  DEFAULT ((0)),
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Exchange_new_IsActive]  DEFAULT ((1)),
 CONSTRAINT [PK_exchange_new] PRIMARY KEY CLUSTERED 
(
	[exchangeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 30) ON [DATA]
) ON [DATA]
GO

--================================================================================================================================================
-- 2. Create index on new table
CREATE NONCLUSTERED INDEX [IX_Exchange_IdActualRate] ON [dbo].[exchange_new]
(
	[exchangeid] ASC,
	[actualrate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 30) ON [DATA]
GO