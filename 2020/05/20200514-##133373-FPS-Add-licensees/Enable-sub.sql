/*
    Task: Enable licensees ZFRT081, 998bet [RedmindId: #133373]
		+ Enable backup setting
    Server:     DBFRAUD
*/

SET NOCOUNT ON;

USE FPS_ADMIN;
GO
--(2 rows affected)
UPDATE dbo.Subscribers WITH(UPDLOCK, ROWLOCK)
SET IsActive = 1
WHERE SubscriberName IN ('ZFRT081', '998bet')

GO
