/*
	Creator:	20190729@Thai
	Task:		Add more column Accept and Headers - [Redmine: #117397]
	Server:		FPS_DeviceFingerprint
*/

GO

ALTER TABLE [dbo].[DeviceFP] ADD Accept VARCHAR(41);
ALTER TABLE [dbo].[DeviceFP] ADD Headers VARCHAR(41);

ALTER TABLE [dbo].[DeviceDetail] ADD Accept VARCHAR(250);
ALTER TABLE [dbo].[DeviceDetail] ADD Headers NVARCHAR(MAX);


