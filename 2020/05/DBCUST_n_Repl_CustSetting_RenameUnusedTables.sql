/*
	Task: Rename unused tables
	DB: DBCUST, DB06x, DBTP & MNL
	Redmine: https://nexdev.net/issues/118699
*/


EXEC sp_rename 'AgentCommRate', 'DEL_AgentCommRate'
EXEC sp_rename 'CustCommRate', 'DEL_CustCommRate'