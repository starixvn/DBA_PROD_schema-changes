/*
	Task - Sync indexes for customer | custinfo | match | league | Odds from DB042 to DB054
	Run on DB054.bodb02
*/
--//custinfo
--==drop unused indexes
DROP INDEX [_MS_Sys_6] ON [dbo].[custinfo]
DROP INDEX [IX_custinfo_3] ON [dbo].[custinfo]
DROP INDEX [IX_roleid] ON [dbo].[custinfo]
DROP INDEX [IX_test] ON [dbo].[custinfo]
DROP INDEX [IXU_username] ON [dbo].[custinfo]

--//sync indexes
CREATE NONCLUSTERED INDEX [IX_CI_srecommend] ON [dbo].[custInfo]
(
	[srecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject],
	[DisableCasino]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [CustInfo_index]
GO

CREATE NONCLUSTERED INDEX [IX_custinfo] ON [dbo].[custInfo]
(
	[mrecommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[closed],
	[reject],
	[credit],
	[DisableCasino]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [CustInfo_index]
GO

CREATE NONCLUSTERED INDEX [IX_custinfo_1] ON [dbo].[custInfo]
(
	[recommend] ASC,
	[roleid] ASC
)
INCLUDE ( 	[reject],
	[closed],
	[username],
	[credit],
	[Enabled],
	[DisableCasino]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [CustInfo_index]
GO

--//customer
--==drop unused indexes
DROP INDEX [_MS_Sys_24_25] ON [dbo].[customer]
DROP INDEX [IX_recommend] ON [dbo].[customer]
DROP INDEX [IX_roleid] ON [dbo].[customer]
DROP INDEX [IX_Username2] ON [dbo].[customer]

--==sync indexes
CREATE NONCLUSTERED INDEX [IX_agent] ON [dbo].[Customer]
(
	[recommend] ASC,
	[roleid] ASC,
	[creatdate] ASC
)
INCLUDE ( 	[username2],
	[username]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Customer_index]
GO

CREATE NONCLUSTERED INDEX [IX_master] ON [dbo].[Customer]
(
	[mrecommend] ASC,
	[roleid] ASC,
	[creatdate] ASC
)WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Customer_index]
GO

CREATE NONCLUSTERED INDEX [IX_sma] ON [dbo].[Customer]
(
	[srecommend] ASC,
	[roleid] ASC,
	[creatdate] ASC
)WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Customer_index]
GO

CREATE NONCLUSTERED INDEX [IX_username] ON [dbo].[Customer]
(
	[username] ASC
)WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Customer_index]
GO

--//match
--== drop unused indexes
DROP INDEX [IX_eventdate_league] ON [dbo].[match]
DROP INDEX [IX_eventdate_matchid] ON [dbo].[match]
DROP INDEX [IX_eventdate_sporttye] ON [dbo].[match]

--==sync indexes
CREATE NONCLUSTERED INDEX [IX_leagueid] ON [dbo].[match]
(
	[leagueid] ASC
)
INCLUDE ( 	[showtime],
	[exrisk],
	[sporttype],
	[matchid],
	[homeid],
	[awayid],
	[eventstatus],
	[eventdate],
	[matchcode],
	[kickofftime],
	[IsNeutral]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [DATA]
GO

--==match14
DROP INDEX [IX_Eventdate] ON [dbo].[match14]

--=league
CREATE NONCLUSTERED INDEX [IX_League_sporttype] ON [dbo].[League]
(
	[sporttype] ASC
)
INCLUDE ( 	[leagueid],
	[isTest],
	[leaguename],
	[IsActive]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Event_index]
GO

CREATE UNIQUE NONCLUSTERED INDEX [IX_SportType] ON [dbo].[League]
(
	[leagueid] ASC
)
INCLUDE ( 	[isTest],
	[sporttype]) WITH (DROP_EXISTING = ON, ONLINE = ON) ON [Event_index]
GO

