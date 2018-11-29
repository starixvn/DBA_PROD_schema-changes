/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052/DB053.bodb02

*/

--//run on db052
CREATE NONCLUSTERED INDEX [IX_username] ON [dbo].[Customer]
(
	[username] ASC
)WITH (DROP_EXISTING = OFF, ONLINE = OFF) ON [Customer_index]
GO

--//run on db053
/*
	Current:
	CREATE NONCLUSTERED INDEX [IX_agent] ON [dbo].[Customer]
	(
		[recommend] ASC
	)
	INCLUDE ( 	[roleid]) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [Customer_index]
GO
*/

CREATE NONCLUSTERED INDEX [IX_agent] ON [dbo].[Customer]
(
	[recommend] ASC
)
INCLUDE ( 	[roleid],
	[username],
	[username2],
	[currency]) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [Customer_index]
GO
