CREATE TRIGGER	[dbo].[FraudSensor_OddsLog_Maxbet_UPDATE] ON [dbo].[odds]
AFTER UPDATE
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
	SELECT	GETDATE(), i.oddsid, i.maxbet, 'U'
	FROM		Inserted AS i
	INNER JOIN	Deleted AS d
			ON	i.oddsid = d.oddsid
	WHERE	i.maxbet > 0
		AND	i.maxbet <> d.maxbet
		AND	i.bettype IN (1, 3, 5, 7, 8, 15);
END;

GO