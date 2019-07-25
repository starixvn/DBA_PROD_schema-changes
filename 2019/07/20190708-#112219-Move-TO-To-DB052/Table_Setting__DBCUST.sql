/*
	Task: Move TO Control func from DB054 to DB052/53 [Redmine: #112219]
		+ add new table setting
	Run on DBCUST.CustDB
*/

CREATE TABLE [dbo].[TOControl_GlobalVariables](
	[VName] [varchar](20) NULL,
	[VValue] [varchar](200) NULL
) ON [Others_table]
GO

IF NOT EXISTS (SELECT TOP 1 1 FROM TOControl_GlobalVariables WHERE VName = 'MaxID')
BEGIN
	INSERT INTO TOControl_GlobalVariables(VName, VValue) VALUES ('MaxID', 0)
END
