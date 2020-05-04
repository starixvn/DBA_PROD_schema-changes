/*
	Task: Rename unused tables
	DB: DBTP.bodb_CustHistory
	Redmine: https://nexdev.net/issues/118699
*/


EXEC sp_rename 'AgentCommRate_History', 'DEL_AgentCommRate_History'
EXEC sp_rename 'CustCommRate_History', 'DEL_CustCommRate_History'

EXEC sp_rename 'P2PGameSetting_History', 'DEL_P2PGameSetting_History'
EXEC sp_rename 'P2PGroupComm_History', 'DEL_P2PGroupComm_History'



