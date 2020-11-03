/*
	Task: Disable triggers of CustPTSetting3rd_Agent, CustPTSetting3rd_Member for speeding up big update data
	Run @ DBTP
*/

USE bodb02
GO
DISABLE TRIGGER [dbo].[CustPTSetting3rd_Agent_update] ON [dbo].[CustPTSetting3rd_Agent] 
GO  
DISABLE TRIGGER [dbo].[CustPTSetting3rd_Member_update] ON [dbo].[CustPTSetting3rd_Member]
GO 
