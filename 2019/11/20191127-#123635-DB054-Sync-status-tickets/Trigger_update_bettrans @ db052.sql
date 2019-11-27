/*
	Task - Setup db054 such as db042
		+ Sync status tickets
	Run on DB052.bodb02	
*/

CREATE TRIGGER [dbo].[bettrans_Settled_UPDATE]
   ON  [dbo].[bettrans]
   AFTER UPDATE
AS 
/*
	Created: 20180622@Patrick
	Task: Get setttled ticket
	DB: DBAGE.bodb02
	
	- Revisions:
*/
BEGIN
	SET NOCOUNT ON

	INSERT INTO dbo.BetSettled_Transition(TransId)
	SELECT TransId 
	FROM inserted
	WHERE bettype < 19999 AND statusID NOT IN (0,1,101)
END

GO