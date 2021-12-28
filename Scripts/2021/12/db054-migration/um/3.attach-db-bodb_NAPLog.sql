/*
	Task - Upgrade SQL Server DB054 to 2019
		1- Attach db: bodb_NAPLog
	Run on db054
*/CREATE DATABASE [bodb_NAPLog] ON ( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG.mdf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_17.ldf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_1.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_2.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_3.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_4.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_5.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_6.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_7.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_8.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_9.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_10.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_11.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_12.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_13.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_14.ndf'),
( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_15.ndf'),( FILENAME = N'E:\IBC_DB\bodb_NAPLog\bodb_NAPLOG_16.ndf')
FOR
ATTACH
