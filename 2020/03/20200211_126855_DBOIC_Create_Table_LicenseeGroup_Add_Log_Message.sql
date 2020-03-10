USE [bodb_OIC]
GO

/*
	Created: 20200211@Hogan
	DB: DBOIC.bodb_OIC
	Task: Add Group into Client functions [RedmineID: #126855]
*/

CREATE TABLE [dbo].[LicenseeGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
 CONSTRAINT [Pk_LicenseeGroup] PRIMARY KEY CLUSTERED ([Id] ASC)
)

GO

ALTER TABLE dbo.Licensee
ADD LicenseeGroupId INT

GO

INSERT INTO dbo.MessageError
           (MessageErrorId, MessageErrorGroupId, ContentEn)
     VALUES
			(40006, 4, 'Fail to add new email record.'),
			(40007, 4, 'Fail to add new email record site name.'),
			(40008, 4, 'Fail to update status of email record site name.'),
			(40009, 4, 'Fail to delete email record.'),
			(40010, 4, 'Fail to update MSiteMailId of email record site name.'),
			(40011, 1, 'The licensee group name is already used. Please try another name.'),
			(40012, 1, 'Fail to edit group of licensee. Please try again.'),
			(40014, 1, 'Unable to delete the group of licensee because one or many assigned client(s) or user(s) exist(s).'),
			(40015, 1, 'Fail to delete group of licensee. Please try again.'),
			(40016, 1, 'The licensee group name is already used. Please try another name.'),
			(40017, 1, 'Fail to create group of licensee. Please try again.')

GO

INSERT INTO dbo.LogAction
           (LogActionId, LogActionTypeId, SPName, ActionNameEn, [Enable], [Order])
     VALUES
			(600, 1, 'OIC_LicenseeGroupIns', 'Insert Client Group', 1, 600),
			(601, 1, 'OIC_LicenseeGroupUpd', 'Update Client Group', 1, 601),
			(602, 1, 'OIC_LicenseeGroupDel', 'Delete Client Group', 1, 602)

GO