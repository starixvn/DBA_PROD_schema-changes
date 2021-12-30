/*
	Task - Upgrade SQL Server DB054 to 2019
		1- Attach db: bodb_N88Log
	Run on db054
*/CREATE DATABASE [bodb_N88Log] ON ( FILENAME = N'E:\IBC_DB\bodb_N88Log\bodb_N88Log.mdf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\bodb_N88Log_log.ldf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Data_01.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Data_02.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\index_02.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Function_index.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Function_table.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Index_01.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Login_index.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Login_table_01.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\Login_table_02.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_detail_01.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_detail_02.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_detail_03.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_index_01.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_index_02.ndf'),
( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_table_01.ndf'),( FILENAME = N'E:\IBC_DB\bodb_N88Log\runsp_table_02.ndf')
FOR
ATTACH
