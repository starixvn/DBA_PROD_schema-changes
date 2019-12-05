/*
	Creator:	20191128@Billy
	Task:		Deploy new database bodb_Ploutos - [Redmine: #123957]
	Server:		DBPLO
*/

USE master
GO

CREATE DATABASE	bodb_Ploutos
ON	PRIMARY (
		NAME		= N'bodb_Ploutos'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\bodb_Ploutos.mdf'
	,	SIZE		= 4096KB
	,	MAXSIZE		= UNLIMITED
	,	FILEGROWTH	= 4096KB
	)
,	FILEGROUP APILogs (
		NAME		= N'API_Logs01'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\API_Logs01.ndf'
	,	SIZE		= 65536KB
	,	MAXSIZE		= UNLIMITED
	,	FILEGROWTH	= 65536KB
	)
	,	(
		NAME		= N'API_Logs02'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\API_Logs02.ndf'
	,	SIZE		= 65536KB
	,	MAXSIZE		= UNLIMITED
	,	FILEGROWTH	= 65536KB
	)
,	FILEGROUP BetTicket (
		NAME		= N'BetTicket'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\BetTicket.ndf'
	,	SIZE		= 65536KB
	,	MAXSIZE		= UNLIMITED
	,	FILEGROWTH	= 65536KB
	)
,	FILEGROUP DATA DEFAULT (
		NAME		= N'bodb_Ploutos_DATA'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\bodb_Ploutos_DATA.ndf'
	,	SIZE		= 65536KB
	,	MAXSIZE		= UNLIMITED
	,	FILEGROWTH	= 65536KB
	)
,	FILEGROUP PlayerProfile (
		NAME		= N'PlayerProfile'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\PlayerProfile.ndf'
	,	SIZE		= 65536KB
	,	MAXSIZE		= UNLIMITED
	,	FILEGROWTH	= 65536KB
	)
	LOG ON (
		NAME		= N'bodb_Ploutos_log'
	,	FILENAME	= N'G:\IBC_DB\bodb_Ploutos\bodb_Ploutos_log.ldf'
	,	SIZE		= 1048576KB
	,	MAXSIZE		= 2048GB
	,	FILEGROWTH	= 1048576KB
	);
GO