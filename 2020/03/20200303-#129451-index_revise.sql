
use bodb_OWP
go
/*
	Task - Revise indexes on OWP to imporve performance
	Run on DB061.bodb_OWP
*/
---non UM
create nonclustered index IX_LoggedDate on [dbo].[UserLog](LoggedDate) ON [OWP_Index]

create nonclustered index IX_Message on [dbo].[Message](CreatedDate) ON [OWP_Index]

---UM OWP site
--===MessageUser
DROP INDEX [IX_MessageUser_MessageId] ON [dbo].[MessageUser]
GO
DROP INDEX [IX_MessageUser_SessionId] ON [dbo].[MessageUser]
GO
ALTER TABLE [dbo].[MessageUser] DROP CONSTRAINT [PK_MessageUser]
GO
DROP INDEX [CIX_MessageUser] ON [dbo].[MessageUser] WITH ( ONLINE = OFF )
GO

CREATE CLUSTERED INDEX [CIX_MessageUser] ON [dbo].[MessageUser]
(
	[UserId] ASC,
	MessageId ASC
) ON [OWP_Data]
GO
CREATE NONCLUSTERED INDEX [IX_MessageUser_MessageId] ON [dbo].[MessageUser]
(
	[MessageId] ASC
) ON [OWP_Index]
GO
CREATE NONCLUSTERED INDEX [IX_MessageUser_SessionId] ON [dbo].[MessageUser]
(
	[SessionId] ASC
) ON [OWP_Index]
GO
ALTER TABLE [dbo].[MessageUser] ADD  CONSTRAINT [PK_MessageUser] PRIMARY KEY NONCLUSTERED 
(
	[MessageUserId] ASC
) ON [OWP_Index]
GO

--==OWPMatch
CREATE NONCLUSTERED INDEX [IX_OWPMatch_EventDate] ON [dbo].[OWPMatch]
(
	[EventDate] ASC
) ON [OWP_Index]
GO