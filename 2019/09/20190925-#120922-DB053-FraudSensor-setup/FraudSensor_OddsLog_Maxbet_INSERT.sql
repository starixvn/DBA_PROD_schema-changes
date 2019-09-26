USE [bodb02]
GO
CREATE TRIGGER	[dbo].[FraudSensor_OddsLog_Maxbet_INSERT] ON [dbo].[odds]
AFTER INSERT
AS
/*
	Creator:	20180314@Billy
	Task:		Trigger for new Fraud Sensor - Capture maxbet's changes - [Redmine: #91963]
	Database:	DBSPU.bodb02
	
	Revisions:
		- 20180314@Billy:	Initial - [Redmine: #91963]
*/
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO	bodb_FraudSensor.dbo.OddsLog (LogDate, OddsId, Maxbet, ActionId)
	SELECT	GETDATE(), i.oddsid, i.maxbet, 'I'
	FROM	Inserted AS i
	WHERE	i.maxbet > 0
		AND	i.bettype IN (1, 3, 5, 7, 8, 15);
END;

GO