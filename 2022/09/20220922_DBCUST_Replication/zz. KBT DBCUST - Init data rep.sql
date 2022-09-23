/*
	Task: Init data for objects added to replication
	
*/

--===========================================================
-- Table LA_VendorPaymentSetting on replicated - Import data from DBCUST.bodb_Licensee to DB052/DB054/DB055/DB06x/DBTP.bodb_Licensee
USE [bodb_Licensee]
GO
insert LA_VendorPaymentSetting
select * from DBCUST.bodb_Licensee.dbo.LA_VendorPaymentSetting with (nolock)



--===========================================================
-- New table ExchangeDaily_Crypto - Init data from DBCUST, run @DBCUST

USE [CustDB]
GO
DECLARE @ExChangeCryto TABLE (ExchangeId int,Currency nvarchar(50), USDT float)
INSERT INTO @ExChangeCryto(Currency,USDT)
VALUES  ('TRX',         0.061)
        ,('DOGE',       0.06)
        ,('ELON',       3)
        ,('SHIB',       1.2)
        ,('BTC',        2.01)
        ,('ETH',        1.61)
        ,('USDT3',      1)
        ,('USDC',       1)
        ,('HOT',        0.002)
        ,('AMP',        0.0055)
        ,('ZEON',       0.009)
        ,('RSR',        0.0061)
        ,('VET',        0.0254)
        ,('ZIL',        0.0341)
        ,('PEOPLE',     0.0194)
        ,('ADA',        0.4686)
        ,('XRP',        0.3418)
        ,('LOOKS',      0.286)
        ,('XPRT',       0.6424)
        ,('CRO',        0.1092)
        ,('FLOW',       1.8524)
        ,('SAND',       0.88)
        ,('AVAX',       18.535)
        ,('APE',        4.9918)
        ,('CAKE',       4.3758)
        ,('ENS',        14.8918)
        ,('UNI',        6.1776)

UPDATE a
SET a.ExchangeId = b.ExchangeId
FROM @ExChangeCryto a INNER JOIN exchange b WITH(NOLOCK)  ON a.Currency = b.currency

INSERT INTO ExchangeDaily_Crypto(ExchangeDate,ExchangeId,USDT)
SELECT a.ExchangeDate,a.ExchangeId,b.USDT 
FROM ExchangeDailyOanda a WITH (NOLOCK) 
        INNER JOIN @ExChangeCryto b ON a.ExchangeId = b.ExchangeId
        LEFT JOIN ExchangeDaily_Crypto c WITH (NOLOCK) ON a.ExchangeId = c.ExchangeId AND a.ExchangeDate = c.ExchangeDate
WHERE c.ExchangeId IS NULL



--===========================================================
-- Table Exchange for new columns - Update data from DBCUST, run @DBCUST

USE [CustDB]
GO
UPDATE exchange WITH(ROWLOCK) 
SET CurrencyType = 1 
WHERE currency IN('TRX','DOGE','ELON','SHIB','BTC','ETH','USDT3','USDC','HOT','AMP','ZEON','RSR','VET','ZIL','PEOPLE','ADA','XRP','LOOKS','XPRT','CRO','FLOW','SAND','AVAX','APE','CAKE','ENS','UNI')

UPDATE exchange WITH(ROWLOCK) SET MultipliedBy = 0.0001 WHERE currency = 'BTC';
UPDATE exchange WITH(ROWLOCK) SET MultipliedBy = 0.001 WHERE currency = 'ETH'; 
