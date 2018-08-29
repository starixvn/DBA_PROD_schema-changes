/*
	20180830@Patrick
	Revise index customer.IX_agent @ DB052.bodb02
	Add more included fields: username,username2,currency to customer.Ix_agent
*/

CREATE NONCLUSTERED INDEX [IX_agent] ON [dbo].[Customer]
(
	[recommend] ASC
)
INCLUDE ([roleid],username,username2,currency) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [Customer_index]
GO