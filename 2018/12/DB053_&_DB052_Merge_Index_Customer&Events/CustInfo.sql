/*
	#105522 - DB052/DB053 - Indexes review for Customer & Events
	Run on DB052.bodb02

*/

CREATE NONCLUSTERED INDEX [IX_custinfo_1] ON [dbo].[custInfo]
(
	[recommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[reject],
	[closed],
	[username],
	[credit],
	[Enabled]) WITH (DROP_EXISTING = ON, ONLINE = OFF) ON [CustInfo_index]
GO
