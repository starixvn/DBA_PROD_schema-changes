 /*
	Task: Prepare DB schema add objects to DBCUST replication
	
*/

--===========================================================
--1. ExchangeDaily_Crypto: Run on DBCUST.CustDB & all its subs in pub CustDB_ExchangeDaily, CustDB_DBTrans_Exchange, DBTP_Odds_Info + related DR servers 
-- ==> Servers/DB: 
--	* KBT: DBCUST.CustDB, DBTRANS/DBGRPXXX.CustDB, DB052/DB053/DB54/DB055/DB06x/DBTP10C/DBDWx.bodb02
--  * AWS: DBCUST.CustDB, DBTRANS.CustDB, DBTKO/DBBAL/DB052/DB054/DB061/DBDW.bodb02
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


--===========================================================
--2. LA_VendorPaymentSetting: Run on DBCUST.bodb_Licensee & all its subs in pub Cusdb_bodb_licensee + related DR servers 
-- ==> Servers/DB: 
--	* KBT: DBCUST.bodb_Licensee, DB052/DB053/DB54/DB055/DB06x/DBTP10C.bodb_Licensee
--  * AWS: DBCUST.bodb_Licensee, DBTKO/DBBAL/DB052/DB054/DB061.bodb_Licensee
USE bodb_Licensee
GO
CREATE TABLE [dbo].[LA_VendorPaymentSetting](
	ProductId								INT				NOT NULL,
	ReportFunctionKey						NVARCHAR(50)	NULL,
	TemplateID								SMALLINT		NULL,
	TimezoneIDs								VARCHAR(50)		NULL,
	IsConvertNegativeFeeToZero				BIT				NULL,
	IsConvertNegativePaytoSupplierToZero	BIT				NULL,
	IsActive								BIT				NULL,
	 CONSTRAINT [PK_LA_VendorPaymentSetting] PRIMARY KEY CLUSTERED 
	(
		[Productid] ASC
	)
)
