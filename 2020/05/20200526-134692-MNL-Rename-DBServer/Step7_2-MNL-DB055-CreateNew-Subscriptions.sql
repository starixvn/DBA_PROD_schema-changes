/*
	Creator:	20200526@vnBobby
	Task:		Replace DB053 to DB055 role - [Redmine: #134692]
	Server:		DB053[.master]
*/


--	BEGIN STEP :
--		Create new subscriptions on bodb02,bodb_licensee databases
----------------------------------------------------------------------------------------------------
use master;
GO

--[bodb02]-[DB02].[bodb02]:DB02_event14
--[bodb02]-[DB02].[bodb02]:DB02_Odds_3rd
--[bodb02]-[DB02].[bodb02]:DB02_Odds_Info
--[bodb02]-[DB02].[bodb02]:DB02_Odds_Odds
--[bodb_Licensee]-[DBCUST].[bodb_Licensee]:bodb_Licensee_BA
--[CustDB]-[DBCUST].[CustDB]:CustDB_Customer_Info
--[CustDB]-[DBCUST].[CustDB]:CustDB_ExchangeDaily
--[CustDB]-[DBCUST].[CustDB]:CustDB_ExecRepAcc_Cust
--[CustDB]-[DBCUST].[CustDB]:CustDB_Login_Exchange
--[bodb02]-[DBTRANS].[bodb02]:DBTrans_Bet
--[bodb02]-[DBTRANS].[bodb02]:DBTrans_Bet14
--[bodb02]-[DBTRANS].[bodb02]:DBTrans_ExecRep
--[bodb02]-[DBTRANS].[bodb02]:DBTrans_ExecRepUAT
--[bodb02]-[DBTRANS].[bodb02]:DBTrans_ExecRepAcc
--[bodb02]-[DBTRANS].[bodb02]:DBTrans_Vendor
