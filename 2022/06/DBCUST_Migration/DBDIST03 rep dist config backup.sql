/****** Scripting replication configuration. Script Date: 5/20/2022 3:57:28 AM ******/
/****** Please Note: For security reasons, all password parameters were scripted with either NULL or an empty string. ******/

/****** Begin: Script to be run at Distributor ******/

/****** Installing the server as a Distributor. Script Date: 5/20/2022 3:57:28 AM ******/
use master
exec sp_adddistributor @distributor = N'DBDIST03', @password = N''
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
use master
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO
exec sp_adddistributiondb @database = N'distribution', @data_folder = N'H:\USER_DB\distribution', @data_file = N'distribution.MDF', @data_file_size = 1408, @log_folder = N'H:\USER_DB\distribution', @log_file = N'distribution.LDF', @log_file_size = 1920, @min_distretention = 0, @max_distretention = 72, @history_retention = 48, @security_mode = 1
GO

-- Adding the distribution publishers
exec sp_adddistpublisher @publisher = N'DBCUST', @distribution_db = N'distribution', @security_mode = 0, @login = N'dbtwsa1', @password = N'', @working_directory = N'H:\ReplData', @trusted = N'false', @thirdparty_flag = 0, @publisher_type = N'MSSQLSERVER'
GO

/****** End: Script to be run at Distributor ******/


