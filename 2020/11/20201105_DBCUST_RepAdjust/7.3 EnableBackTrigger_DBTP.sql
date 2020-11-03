/*
	Task: Enable triggers of CustPTSetting3rd_Agent, CustPTSetting3rd_Member after done copy data for new columns
	Run @ DBTP
*/

USE bodb02
GO
ENABLE TRIGGER [dbo].[CustPTSetting3rd_Agent_update] ON [dbo].[CustPTSetting3rd_Agent] 
GO  
ENABLE TRIGGER [dbo].[CustPTSetting3rd_Member_update] ON [dbo].[CustPTSetting3rd_Member]
GO 

