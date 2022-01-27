/*<info serverAlias="DBSPARE-bodb02_CustRep" executers="" selecters="" viewers="" isFunction="0" isNested="0"></info>*/
ALTER PROCEDURE	[dbo].[Acc_RunCS_SBInputMsg]      
    @Message NVARCHAR(MAX)
AS
/*
	Creator:	20220119@Daniel
	Task:		Run cust setting SP by SSB - Push message to queue - [Redmine: #00000]
	Database:	DBSPARE.bodb02_custRep
	
	exec Acc_RunCS_SBInputMsg 'waitfor delay ''0:01:00'''
		
*/
BEGIN;
	SET NOCOUNT ON;
	
	DECLARE	@Dialog				UNIQUEIDENTIFIER
		,	@Threads			SMALLINT

	BEGIN DIALOG CONVERSATION	@Dialog
	FROM SERVICE	RunCSInitiator
	TO SERVICE		'RunCSTarget'
	ON CONTRACT		RunCSContract
	WITH	ENCRYPTION	= OFF
		,	LIFETIME	= 172800
		;

	SEND ON CONVERSATION @Dialog MESSAGE TYPE RunCSMessage (@Message);

	END CONVERSATION @Dialog;


END;