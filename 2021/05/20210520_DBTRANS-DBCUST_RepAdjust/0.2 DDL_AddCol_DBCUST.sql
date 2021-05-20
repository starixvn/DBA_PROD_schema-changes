/*
	Task: DDL commands + update data
	Run @ DBCUST
*/

use bodb_Licensee
go

-- Add new columns
alter table dbo.Product3rd
	add Enabled bit constraint DF_Product3rd_Enabled default (1)
		,EndOfSupportDate date


-- Initialize data
declare @tblProduct3rd table (ProductId int, Enabled bit, EndOfSupportDate date)
insert into @tblProduct3rd (ProductId, Enabled, EndOfSupportDate)
select 1, 0, '2017-11-30' union all -- Racing
select 4, 0, '2017-01-25' union all -- Live Casino
select 7, 0, '2017-01-11' union all -- Bingo
select 9, 0, '2016-01-29' union all -- Playtech Casino
select 12, 0, '2015-08-18' union all -- Macau
select 14, 0, '2018-08-28' union all -- Microgaming - Live Casino
select 17, 0, '2018-08-28' union all -- Microgaming - RNG Casino
select 30, 0, '2018-03-01' union all -- Bullfighting
select 33, 0, '2019-04-16' union all -- Poker Games
select 11, 0, NULL union all -- Gold Deluxe
select 13, 0, NULL union all -- BetTrade
select 24, 0, NULL -- Fishing World

update p with (rowlock)
set p.Enabled = isnull(t.Enabled, 1)
	,p.EndOfSupportDate = t.EndOfSupportDate
from dbo.Product3rd p
	left join @tblProduct3rd t on p.ProductId = t.ProductId
	
	
------------------------------------------------

USE CUSTDB
GO
ALTER TABLE dbo.BetLimitControlCustSetting ADD Mode TINYINT NULL CONSTRAINT DF_BetLimitControlCustSetting_Mode DEFAULT (1) 
GO

--> Update default value
WHILE 1 = 1
BEGIN
	UPDATE TOP (5000) BetLimitControlCustSetting WITH(ROWLOCK,UPDLOCK)
	SET Mode = 1 
	WHERE Mode IS NULL
	
	IF @@ROWCOUNT < 5000
		BREAK

	WAITFOR DELAY '00:00:00.010'
END
GO

--> Set column is not null
ALTER TABLE dbo.BetLimitControlCustSetting ALTER COLUMN Mode TINYINT NOT NULL
GO






