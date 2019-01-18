/*
	Task: Archive Dormant Licensee - Enhance scanning job - Support #107931
	Run at: MSDB@DB06
	Creator: Dominic@20190118
	Task: Update the first step of SQL job "Archive Deposit Member - Step 1: Collect Dormant Member"
				to check existing bet tickets in table Statement at 10-day intervals

*/
USE MSDB
GO

EXEC MSDB.DBO.SP_UPDATE_JOBSTEP @JOB_NAME = 'Archive Deposit Member - Step 1: Collect Dormant Member'
              ,@STEP_ID = 1
              ,@COMMAND = 'Exec dbo.[Task_Dep_Customer_Archive_GetDormantCustomer] @CheckStatement_DaysPerBatch = 10,
	@CheckBettrans_CustPerBatch = 2000,
	@InsertRepTable_CustPerBatch = 6000'