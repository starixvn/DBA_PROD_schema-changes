/*
	Task - Remove data in active from 2019-01-01 to 2019-05-31
	Run on DB052.bodb_CustomerLog

	P/s: must to deploy sp: DBA_CloneTableStructure first.
*/

USE bodb_CustomerLog
GO

SET NOCOUNT ON
DECLARE @Message VARCHAR(200)

-- ~ 1,930,141 rows need to delete
WHILE 1 = 1
BEGIN
	DELETE TOP(20000) FROM dbo.UserLog_ExternalAPI
	WHERE LogDate < '2019-06-01'

	IF @@ROWCOUNT = 0
		BREAK

	--for debug only
	SET @Message = 'Current datetime: ' + CONVERT(VARCHAR(50), GETDATE(), 121)
	RAISERROR (@Message, 0, 1) WITH NOWAIT

END

GO
