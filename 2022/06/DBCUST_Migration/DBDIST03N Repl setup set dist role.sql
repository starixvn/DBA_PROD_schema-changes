/*
	Task: In UM: Set distributor role for new DBDIST03N + Prepare agent profile settings & Config DBCUST as publisher
	Run at distributor server @ DBDIST03N (NEW)
	** ATTENTION!! Need replace xxx to sub sa's password **
*/  

-- Installing the server as a Distributor
use master
exec sp_adddistributor @distributor = N'DBDIST03N', @password = xxx --specify password of account distributor_admin (sub sa's password)
GO


-- Adding the agent profiles
declare @config_id int
exec sp_add_agent_profile @profile_id = @config_id OUTPUT, @profile_name = N'1 second (ignore error)', @agent_type = 3, @profile_type  = 1, @description = N''
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-BcpBatchSize', @parameter_value = N'10000'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-CommitBatchSize', @parameter_value = N'250'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-CommitBatchThreshold', @parameter_value = N'1000'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-HistoryVerboseLevel', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-KeepAliveMessageInterval', @parameter_value = N'300'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-LoginTimeout', @parameter_value = N'15'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-MaxBcpThreads', @parameter_value = N'4'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-MaxDeliveredTransactions', @parameter_value = N'0'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-PacketSize', @parameter_value = N'4096'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-PollingInterval', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-QueryTimeout', @parameter_value = N'3600'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-SkipErrors', @parameter_value = N'2601:2627:20598'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-TransactionsPerHistory', @parameter_value = N'100'
GO
declare @config_id int
exec sp_add_agent_profile @profile_id = @config_id OUTPUT, @profile_name = N'1 second', @agent_type = 2, @profile_type  = 1, @description = N''
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-HistoryVerboseLevel', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-LoginTimeout', @parameter_value = N'15'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-LogScanThreshold', @parameter_value = N'500000'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-PollingInterval', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-QueryTimeout', @parameter_value = N'1800'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-ReadBatchSize', @parameter_value = N'1000'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-ReadBatchThreshold', @parameter_value = N'1'
GO
declare @config_id int
exec sp_add_agent_profile @profile_id = @config_id OUTPUT, @profile_name = N'1 second - 1 cmd commit size (ignore error)', @agent_type = 3, @profile_type  = 1, @description = N''
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-BcpBatchSize', @parameter_value = N'10000'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-CommitBatchSize', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-CommitBatchThreshold', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-HistoryVerboseLevel', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-KeepAliveMessageInterval', @parameter_value = N'300'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-LoginTimeout', @parameter_value = N'15'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-MaxBcpThreads', @parameter_value = N'4'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-MaxDeliveredTransactions', @parameter_value = N'0'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-PollingInterval', @parameter_value = N'1'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-QueryTimeout', @parameter_value = N'3600'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-SkipErrors', @parameter_value = N'2601:2627:20598'
exec sp_change_agent_parameter @profile_id = @config_id, @parameter_name = N'-TransactionsPerHistory', @parameter_value = N'100'
GO
-- Updating the agent profile defaults
exec sp_MSupdate_agenttype_default @profile_id = 1
GO
exec sp_MSupdate_agenttype_default @profile_id = 6
GO
exec sp_MSupdate_agenttype_default @profile_id = 11
GO
exec sp_MSupdate_agenttype_default @profile_id = 17
GO
exec sp_MSupdate_agenttype_default @profile_id = 18
GO

-- Adding the distribution databases
-- *** ATTENTION: Make sure folder is ready: H:\User_DB\distribution\
use master
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution02', FILENAME = N'H:\User_DB\distribution\distribution02.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution03', FILENAME = N'H:\User_DB\distribution\distribution03.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution04', FILENAME = N'H:\User_DB\distribution\distribution04.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution05', FILENAME = N'H:\User_DB\distribution\distribution05.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution06', FILENAME = N'H:\User_DB\distribution\distribution06.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution07', FILENAME = N'H:\User_DB\distribution\distribution07.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] ADD FILE ( NAME = N'distribution08', FILENAME = N'H:\User_DB\distribution\distribution08.NDF' , SIZE = 3072KB , FILEGROWTH = 65536KB ) TO FILEGROUP [PRIMARY]
GO
ALTER DATABASE [distribution] MODIFY FILE ( NAME = N'distribution_log', FILEGROWTH = 65536KB )
GO


-- Change default snapshot file location
-- ** Attention!! Must finish run previous step first (Adding the distribution databases)
use [distribution] 
if (not exists (select * from sysobjects where name = 'UIProperties' and type = 'U ')) 
	create table UIProperties(id int) 
if (exists (select * from ::fn_listextendedproperty('SnapshotFolder', 'user', 'dbo', 'table', 'UIProperties', null, null))) 
	EXEC sp_updateextendedproperty N'SnapshotFolder', N'H:\ReplData', 'user', dbo, 'table', 'UIProperties' 
else 
	EXEC sp_addextendedproperty N'SnapshotFolder', N'H:\ReplData', 'user', dbo, 'table', 'UIProperties'
GO


-- Adding the distribution publishers
-- *** ATTENTION: Make sure folder is ready: H:\ReplData
exec sp_adddistpublisher @publisher = N'DBCUST', @distribution_db = N'distribution', @security_mode = 0, @login = N'dbtwsa1', @password = xxx, @working_directory = N'H:\ReplData', @trusted = N'false', @thirdparty_flag = 0, @publisher_type = N'MSSQLSERVER'
GO