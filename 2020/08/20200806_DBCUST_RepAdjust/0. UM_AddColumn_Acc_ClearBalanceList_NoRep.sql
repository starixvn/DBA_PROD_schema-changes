
/*
	Task: Add column Is Transferring into Acc_ClearBalanceList [Redmine: #137141]
	DB: DBCUST-CUSTDB, MNL DBCUST-CustDB

*/


ALTER TABLE Acc_ClearBalanceList ADD isTransferring BIT
GO

ALTER TABLE Acc_ClearBalanceList ADD CONSTRAINT DF_Acc_ClearBalanceList_isTransferring  DEFAULT (0) FOR isTransferring
GO

