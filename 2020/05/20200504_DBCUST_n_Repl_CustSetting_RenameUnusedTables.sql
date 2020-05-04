/*
	Task: Rename unused tables
	DB: DBCUST.custdb, DB06x.bodb02, DBTP.bodb02 & MNL
	Redmine: https://nexdev.net/issues/118699
*/


EXEC sp_rename 'AgentCommRate', 'DEL_AgentCommRate'
EXEC sp_rename 'CustCommRate', 'DEL_CustCommRate'