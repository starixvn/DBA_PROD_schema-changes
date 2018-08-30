/*
	20180830@Patrick
	Task: Move settlemenent logs data to normal disk
	Check list:
		1- Create new data file on nornal disk
		2- Drop cluster/index
		3- Create new cluster/index on new data file.
		
	Run on: DB05x/DB06x/DB042/DBLICAPIx
	
*/

--//create new file/group on nornal disk
ALTER DATABASE bodb02 ADD FILEGROUP ServiceBroker_Data_001
ALTER DATABASE bodb02 ADD FILE (NAME = N'ServiceBroker_Data_001', FILENAME = 'XXX:\IBC_DB\bodb02\ServiceBroker_Data_001.ndf'
			, SIZE = 32768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 32768KB) TO FILEGROUP ServiceBroker_Data_001

--//drop cluster/index
DROP INDEX [IX_CalculationLogs_Id] ON [sb].[CalculationLogs]
GO
DROP INDEX [CIX_CalculationLogs] ON [sb].[CalculationLogs] WITH ( ONLINE = OFF )
GO

--//create cluster/index on new file group
CREATE CLUSTERED INDEX [CIX_CalculationLogs] ON [sb].[CalculationLogs]
(
	[creationTime] ASC
)WITH (ONLINE = OFF) ON [ServiceBroker_Data_001]
GO

CREATE NONCLUSTERED INDEX [IX_CalculationLogs_Id] ON [sb].[CalculationLogs]
(
	[Id] ASC
)WITH (ONLINE = OFF) ON [ServiceBroker_Data_001]
GO

