USE [bodb02_CustRep]
GO
/*<info serverAlias="DBSPARE-bodb02_CustRep" executers="" selecters="" viewers="" isFunction="0" isNested="0"></info>*/
ALTER PROCEDURE [dbo].[SB_RunCSTargetQueueActivator]
AS
/*
	Creator:	20220121@Daniel
	Task:		Activator for Check Setting Target Service Queue - [Redmine: #00000]
	Database:	DBSPARE.bodb02_CustRep
	
	Revisions:
		
	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]
		
*/
BEGIN;
	SET NOCOUNT ON;

	
	-- Service Broker variables --
	DECLARE	@dialog				UNIQUEIDENTIFIER
		,	@type				NVARCHAR(256)
		,	@message			NVARCHAR(MAX)
		;

	-- Get message from queue --
	RECEIVE	TOP(1)
			@dialog		= conversation_handle
		,	@type		= message_type_name
		,	@message	= CAST(message_body AS NVARCHAR(MAX))
	FROM	dbo.RunCSTargetQueue;
	
	-- Execute new monitoring task --
	IF	@type = N'RunCSMessage'
	BEGIN;
		BEGIN TRY
			EXECUTE	sys.sp_executesql @query = @message;
			--waitfor delay '0:00:01';
		END TRY
		BEGIN CATCH
			--INSERT INTO	dbo.ServiceBroker_RunCSFailedLog (LogDate, Msg, ErrorMsg)
			SELECT	GETDATE(), @message, ERROR_MESSAGE();
		END CATCH;
	END;
	
	IF	@type = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
	BEGIN;
		END CONVERSATION @dialog WITH CLEANUP;
	END;
	
	
END