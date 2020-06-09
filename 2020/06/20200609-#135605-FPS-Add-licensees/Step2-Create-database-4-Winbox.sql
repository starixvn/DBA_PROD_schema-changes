/*
    Task: Integrate new licensees ZhiFeng021, Winbox & pmwint [RedmindId: #135605]
		+ Create new database for Winbox
    Server: FPS_DB01\MSSQLSERVERWEB
*/
USE [master]
GO
CREATE DATABASE [FPS_SUB_Winbox]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FPS_SUB_Winbox', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\FPS_SUB_Winbox.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ), 
 FILEGROUP [ACCOUNTS_IDX] 
( NAME = N'ACCOUNTS_IDX_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\ACCOUNTS_IDX_01.NDF' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB ), 
 FILEGROUP [ACCOUNTS_TBL] 
( NAME = N'ACCOUNTS_TBL_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\ACCOUNTS_TBL_01.NDF' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [ASSOCIATIONS_IDX] 
( NAME = N'ASSOCIATIONS_IDX_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\ASSOCIATIONS_IDX_01.NDF' , SIZE = 16384KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB ), 
 FILEGROUP [ASSOCIATIONS_TBL] 
( NAME = N'ASSOCIATIONS_TBL_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\ASSOCIATIONS_TBL_01.NDF' , SIZE = 65536KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [DATA]  DEFAULT
( NAME = N'FPS_SUB_TBL_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\FPS_SUB_TBL_01.NDF' , SIZE = 67584KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB ), 
 FILEGROUP [INDEX] 
( NAME = N'FPS_SUB_IDX_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\FPS_SUB_IDX_01.NDF' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB ), 
 FILEGROUP [TRANSACTIONS_IDX] 
( NAME = N'TRANSACTIONS_IDX_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\TRANSACTIONS_IDX_01.NDF' , SIZE = 229376KB , MAXSIZE = UNLIMITED, FILEGROWTH = 16384KB ), 
 FILEGROUP [TRANSACTIONS_TBL] 
( NAME = N'TRANSACTIONS_TBL_01', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\TRANSACTIONS_TBL_01.NDF' , SIZE = 2752512KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [TransUserAgent] 
( NAME = N'TransUserAgent', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\TransUserAgent.ndf' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FPS_SUB_Winbox_log', FILENAME = N'D:\MSSQL\DATA\FPS_SUB_Winbox\FPS_SUB_Winbox_log.ldf' , SIZE = 512000KB , MAXSIZE = 2048GB , FILEGROWTH = 16384KB )
GO
ALTER DATABASE [FPS_SUB_Winbox] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FPS_SUB_Winbox].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FPS_SUB_Winbox] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET ARITHABORT OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET  MULTI_USER 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FPS_SUB_Winbox] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FPS_SUB_Winbox] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [FPS_SUB_Winbox]
GO
/****** Object:  User [vnteam]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [vnteam] FOR LOGIN [vnteam] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnSPU]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [vnSPU] FOR LOGIN [vnSPU] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [thaifps]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [thaifps] FOR LOGIN [thaifps] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sqlLink]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [sqlLink] FOR LOGIN [sqlLink] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [linkdbserver]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [linkdbserver] FOR LOGIN [linkdbserver] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fpsWinService]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [fpsWinService] FOR LOGIN [fpsWinService] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fpsWebSub]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [fpsWebSub] FOR LOGIN [fpsWebSub] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fpsWebService]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [fpsWebService] FOR LOGIN [fpsWebService] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fpsWebAdmin]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [fpsWebAdmin] FOR LOGIN [fpsWebAdmin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [fpsdev]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [fpsdev] FOR LOGIN [fpsdev] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnMonitor]    Script Date: 6/9/2020 4:37:41 AM ******/
CREATE USER [vnMonitor] FOR LOGIN [vnMonitor]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vnteam]
GO
ALTER ROLE [db_datareader] ADD MEMBER [vnSPU]
GO
ALTER ROLE [db_datareader] ADD MEMBER [thaifps]
GO
ALTER ROLE [db_datareader] ADD MEMBER [sqlLink]
GO
ALTER ROLE [db_owner] ADD MEMBER [linkdbserver]
GO
ALTER ROLE [db_datareader] ADD MEMBER [linkdbserver]
GO
ALTER ROLE [db_datareader] ADD MEMBER [fpsWinService]
GO
ALTER ROLE [db_datareader] ADD MEMBER [fpsWebSub]
GO
ALTER ROLE [db_datareader] ADD MEMBER [fpsWebService]
GO
ALTER ROLE [db_datareader] ADD MEMBER [fpsWebAdmin]
GO
ALTER ROLE [db_datareader] ADD MEMBER [fpsdev]
GO
ALTER ROLE [db_owner] ADD MEMBER [vnMonitor]
GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [vnMonitor]
GO
GRANT CONNECT TO [fpsdev] AS [dbo]
GO
GRANT CONNECT TO [fpsWebAdmin] AS [dbo]
GO
GRANT CONNECT TO [fpsWebService] AS [dbo]
GO
GRANT CONNECT TO [fpsWebSub] AS [dbo]
GO
GRANT CONNECT TO [fpsWinService] AS [dbo]
GO
GRANT CONNECT TO [linkdbserver] AS [dbo]
GO
GRANT CONNECT TO [sqlLink] AS [dbo]
GO
GRANT CONNECT TO [thaifps] AS [dbo]
GO
GRANT CONNECT TO [vnMonitor] AS [dbo]
GO
GRANT CONNECT TO [vnSPU] AS [dbo]
GO
GRANT CONNECT TO [vnteam] AS [dbo]
GO
/****** Object:  Schema [rmt]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SCHEMA [rmt]
GO
/****** Object:  Synonym [dbo].[rptDbSpaceUsed]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [dbo].[rptDbSpaceUsed] FOR [FPSRPT].[FPS_RPT].[dbo].[rptDbSpaceUsed]
GO
/****** Object:  Synonym [rmt].[Actions]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[Actions] FOR [FPSADMIN].[FPS_ADMIN].[dbo].[Actions]
GO
/****** Object:  Synonym [rmt].[AddException]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[AddException] FOR [FPSADMIN].[FPS_EVI].[dbo].[AddException]
GO
/****** Object:  Synonym [rmt].[EvidenceMaster]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[EvidenceMaster] FOR [FPSADMIN].[FPS_EVI].[dbo].[EvidenceMaster]
GO
/****** Object:  Synonym [rmt].[EvidenceSub]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[EvidenceSub] FOR [FPSADMIN].[FPS_EVI].[dbo].[EvidenceSub]
GO
/****** Object:  Synonym [rmt].[EvidenceTypes]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[EvidenceTypes] FOR [FPSADMIN].[FPS_EVI].[dbo].[EvidenceTypes]
GO
/****** Object:  Synonym [rmt].[Exceptions]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[Exceptions] FOR [FPSADMIN].[FPS_EVI].[dbo].[Exceptions]
GO
/****** Object:  Synonym [rmt].[GetEvidenceByIDAndType]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[GetEvidenceByIDAndType] FOR [FPSADMIN].[FPS_EVI].[dbo].[GetEvidenceByIDAndType]
GO
/****** Object:  Synonym [rmt].[RetractException]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[RetractException] FOR [FPSADMIN].[FPS_EVI].[dbo].[RetractException]
GO
/****** Object:  Synonym [rmt].[rptAccountDevice]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[rptAccountDevice] FOR [FPSRPT].[FPS_RPT].[dbo].[rptAccountDevice]
GO
/****** Object:  Synonym [rmt].[rptActions]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[rptActions] FOR [FPSRPT].[FPS_RPT].[dbo].[rptActions]
GO
/****** Object:  Synonym [rmt].[rptDBStats]    Script Date: 6/9/2020 4:37:42 AM ******/
CREATE SYNONYM [rmt].[rptDBStats] FOR [FPSRPT].[FPS_RPT].[dbo].[rptDBStats]
GO
/****** Object:  Synonym [rmt].[RuleSettingHistories]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[RuleSettingHistories] FOR [FPSBR].[FPS_ADMIN].[dbo].[RuleSettingHistories]
GO
/****** Object:  Synonym [rmt].[RuleSettings]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[RuleSettings] FOR [FPSBR].[FPS_ADMIN].[dbo].[RuleSettings]
GO
/****** Object:  Synonym [rmt].[RuleSettingsDetail]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[RuleSettingsDetail] FOR [FPSBR].[FPS_ADMIN].[dbo].[RuleSettingsDetail]
GO
/****** Object:  Synonym [rmt].[RuleSettingsDetailHistories]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[RuleSettingsDetailHistories] FOR [FPSBR].[FPS_ADMIN].[dbo].[RuleSettingsDetailHistories]
GO
/****** Object:  Synonym [rmt].[SubDBServers]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[SubDBServers] FOR [FPSADMIN].[FPS_ADMIN].[dbo].[SubDBServers]
GO
/****** Object:  Synonym [rmt].[Subscribers]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[Subscribers] FOR [FPSADMIN].[FPS_ADMIN].[dbo].[Subscribers]
GO
/****** Object:  Synonym [rmt].[SubscriberTrusty]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[SubscriberTrusty] FOR [FPSADMIN].[FPS_ADMIN].[dbo].[SubscriberTrusty]
GO
/****** Object:  Synonym [rmt].[ToolAccounts]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[ToolAccounts] FOR [FPSLOG].[FPS_LOG].[dbo].[ToolAccounts]
GO
/****** Object:  Synonym [rmt].[Users]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE SYNONYM [rmt].[Users] FOR [FPSADMIN].[FPS_ADMIN].[dbo].[Users]
GO
/****** Object:  UserDefinedFunction [dbo].[Split]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split]
(
	@string varchar(max),
	@delimiter char(1) = ','
)
RETURNS @temptable TABLE(Item int)
AS
/*
	Created: 20133101@kan.nguyen
	Task: split string off by inputted delimiter
	  DB: FPS_EVIDENCE.
  
	Revisions:
	Param's Explanation:
*/
BEGIN
	DECLARE @idx int;
	DECLARE @slice varchar(8000);

	IF @string is null OR LEN(@string) < 1
		RETURN;

	SELECT @idx = 1;
	WHILE @idx != 0
		BEGIN       
			SET @idx = charindex(@delimiter, @string);
			IF @idx != 0
				SET @slice = LEFT(@string, @idx - 1);
			ELSE
				SET @slice = @string;
	          
			IF (LEN(@slice) > 0)
				INSERT INTO @temptable(Item) VALUES(@slice);

			SET @string = RIGHT(@string, LEN(@string) - @idx);
			IF LEN(@string) = 0 break;
		END;
	RETURN;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[Split_To_IndValue]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Split_To_IndValue]
(
	@string varchar(max),
	@delimiter char(1) = ','
)
RETURNS @temptable TABLE(Ind INT, Val VARCHAR(50))
AS
BEGIN
	DECLARE @idx int, @idxRow int = 1;
	DECLARE @slice varchar(8000);

	IF @string is null OR LEN(@string) < 1
		RETURN;

	SELECT @idx = 1;
	WHILE @idx != 0
		BEGIN       
			SET @idx = charindex(@delimiter, @string);
			IF @idx != 0
				SET @slice = LEFT(@string, @idx - 1);
			ELSE
				SET @slice = @string;
	          
			IF (LEN(@slice) > 0)
			BEGIN
				INSERT INTO @temptable(Ind, Val) VALUES(@idxRow, @slice);

				SET @idxRow += 1;
			END;
			SET @string = RIGHT(@string, LEN(@string) - @idx);
			IF LEN(@string) = 0 break;
		END;
	RETURN;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitString]
(
	@string NVARCHAR(MAX),
	@delimiter CHAR(1) = ','
)
RETURNS @temptable TABLE(Item NVARCHAR(MAX))
AS
/***
	Created: 20133101@kan.nguyen
	Task: split string off by inputted delimiter
	  DB: FPS_SUB.
	  
	Revisions:
		- 20150614@Tom: convert to nvarchar
		- 20180516@Thai: update varchar(max)
	Param's Explanation:
***/
BEGIN
	DECLARE @NextString NVARCHAR(MAX);
	DECLARE @Pos INT;
	DECLARE @NextPos INT;
		
	SET @string = @string + @delimiter;
	SET @Pos = CHARINDEX(@delimiter, @string);

	WHILE (@pos <> 0)
	BEGIN
		SET @NextString = SUBSTRING(@string, 1, @Pos - 1);
		IF (@NextString IS NOT NULL AND @NextString <> '')
			INSERT INTO @temptable(Item) VALUES(@NextString);

		SET @string = SUBSTRING(@string, @pos+1, LEN(@string));
		SET @pos = CHARINDEX(@delimiter, @string);
	END;
	RETURN;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[SplitString_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[SplitString_xtest]
(
	@string nvarchar(max),
	@delimiter char(1) = ','
)
RETURNS @temptable TABLE(Item nvarchar(50))
AS
/***
	Created: 20133101@kan.nguyen
	Task: split string off by inputted delimiter
	  DB: FPS_SUB.
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	DECLARE @NextString NVARCHAR(50)
	DECLARE @Pos INT
	DECLARE @NextPos INT
	
	--SET @delimiter = ','
	SET @string = @string + @delimiter
	SET @Pos = charindex(@delimiter,@string)

	WHILE (@pos <> 0)
	BEGIN
		SET @NextString = substring(@string,1,@Pos - 1)
		IF (@NextString IS NOT NULL AND @NextString <> '')
			INSERT INTO @temptable(Item) VALUES(@NextString)
		SET @string = substring(@string,@pos+1,len(@string))
		SET @pos = charindex(@delimiter,@string)
	END
	RETURN
END














GO
/****** Object:  UserDefinedFunction [dbo].[SplitVarchar]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitVarchar]
(
	@string varchar(max),
	@delimiter char(1) = ','
)
RETURNS @temptable TABLE(Item varchar(8000))
AS
/***
	Created: 20130729@bobby.nguyen
	Task: split string to table
	  DB: FPS_SUB
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	DECLARE @idx int;
	DECLARE @slice varchar(8000);

	IF @string is null OR LEN(@string) < 1
		RETURN;

	SELECT @idx = 1;
	WHILE @idx != 0
		BEGIN       
			SET @idx = charindex(@delimiter, @string);
			IF @idx != 0
				SET @slice = LEFT(@string, @idx - 1);
			ELSE
				SET @slice = @string;
	          
			IF (LEN(@slice) > 0)
				INSERT INTO @temptable(Item) VALUES(@slice);

			SET @string = RIGHT(@string, LEN(@string) - @idx);
			IF LEN(@string) = 0 break;
		END;
	RETURN;
END;
GO
/****** Object:  UserDefinedFunction [dbo].[SplitVarchar_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[SplitVarchar_xtest]
(
	@string varchar(max),
	@delimiter char(1) = ','
)
RETURNS @temptable TABLE(Item varchar(8000))
AS
/***
	Created: 20130729@bobby.nguyen
	Task: split string to table
	  DB: FPS_SUB
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	DECLARE @idx int
	DECLARE @slice varchar(8000)

	IF @string is null OR LEN(@string) < 1
		RETURN

	SELECT @idx = 1
	WHILE @idx != 0
		BEGIN       
			SET @idx = charindex(@delimiter, @string)
			IF @idx != 0
				SET @slice = LEFT(@string, @idx - 1)
			ELSE
				SET @slice = @string
	          
			IF (LEN(@slice) > 0)
				INSERT INTO @temptable(Item) VALUES(@slice)

			SET @string = RIGHT(@string, LEN(@string) - @idx)
			IF LEN(@string) = 0 break
		END
	RETURN
END














GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserName2] [nvarchar](50) NULL,
	[SubscriberID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [CIX_AccountID] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ACCOUNTS_TBL]
) ON [ACCOUNTS_TBL]
GO
/****** Object:  Table [dbo].[Associations]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Associations](
	[Ass_ID] [int] IDENTITY(1,1) NOT NULL,
	[DeviceID] [int] NULL,
	[AccountID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastAccessedDate] [datetime] NULL,
	[ExceptionID] [int] NULL,
 CONSTRAINT [PK_Associations_AssID] PRIMARY KEY NONCLUSTERED 
(
	[Ass_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ASSOCIATIONS_IDX]
) ON [ASSOCIATIONS_TBL]
GO
/****** Object:  Index [CIX_Associations]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE CLUSTERED INDEX [CIX_Associations] ON [dbo].[Associations]
(
	[AccountID] ASC,
	[LastAccessedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ASSOCIATIONS_TBL]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[TransID] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[DeviceID] [bigint] NULL,
	[SubscriberID] [int] NULL,
	[TransDate] [datetime] NULL,
	[ActionName] [nvarchar](50) NULL,
	[IP] [nvarchar](20) NULL,
	[Country] [nvarchar](64) NULL,
	[CountryCode] [nvarchar](20) NULL,
	[Region] [nvarchar](128) NULL,
	[City] [nvarchar](128) NULL,
	[ServiceProvider] [nvarchar](50) NULL,
	[ISP] [nvarchar](256) NULL,
	[Browser] [nvarchar](50) NULL,
	[PluginID] [bigint] NULL,
	[Flagged] [tinyint] NULL,
	[RuleSetID] [int] NULL,
	[ResultType] [tinyint] NULL,
	[RuleVersionID] [nvarchar](150) NULL,
	[URL] [nvarchar](250) NULL,
	[ActionResult] [nvarchar](100) NULL,
	[UserAgent] [nvarchar](200) NULL,
 CONSTRAINT [PK_Transactions_TransID] PRIMARY KEY NONCLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TRANSACTIONS_IDX]
) ON [TRANSACTIONS_TBL]
GO
/****** Object:  Index [CIX_TransDate]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE CLUSTERED INDEX [CIX_TransDate] ON [dbo].[Transactions]
(
	[TransDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TRANSACTIONS_TBL]
GO
/****** Object:  Table [dbo].[TransactionUserAgent]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionUserAgent](
	[TransID] [bigint] NOT NULL,
	[UserAgent] [varchar](max) NULL,
 CONSTRAINT [PK_TransactionUserAgent] PRIMARY KEY CLUSTERED 
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TransUserAgent]
) ON [TransUserAgent] TEXTIMAGE_ON [TransUserAgent]
GO
/****** Object:  Table [dbo].[TransRuleSets]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransRuleSets](
	[TransRuleSetID] [int] IDENTITY(1,1) NOT NULL,
	[TransID] [bigint] NULL,
	[RuleSetDetailID] [int] NULL,
 CONSTRAINT [PK_TransRuleSets_TransRuleSetID] PRIMARY KEY NONCLUSTERED 
(
	[TransRuleSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [INDEX]
) ON [DATA]
GO
/****** Object:  Index [IX_TransID]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE CLUSTERED INDEX [IX_TransID] ON [dbo].[TransRuleSets]
(
	[TransID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [DATA]
GO
/****** Object:  UserDefinedFunction [dbo].[tf_SplitString]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION	[dbo].[tf_SplitString] (
					@string		NVARCHAR(MAX)
				,	@splitter	NVARCHAR(MAX)
				,	@id			INT				= NULL
				)
RETURNS TABLE
AS
/*
	Creator:	20190125@Billy
	Task:		Split String Function - Inline Table Value Version - [Redmine: #107814]

	Revisions:
		- 20190125@Billy:	Initial - [Redmine: #107814]
*/
RETURN (
	WITH cte AS (
				SELECT	[start]		= CAST(1 AS INT)
					,	[finish]	= CASE WHEN CHARINDEX(@splitter, @string, 1) = 0 THEN LEN(@string) + 1 ELSE CHARINDEX(@splitter, @string, 1) END
					,	[id]		= 1
				UNION ALL
				SELECT	[start]		= CAST(cte.finish + LEN(@splitter) AS INT)
					,	[finish]	= CASE WHEN CHARINDEX(@splitter, @string, cte.finish + LEN(@splitter)) = 0 THEN LEN(@string) + 1 ELSE CHARINDEX(@splitter, @string, cte.finish + LEN(@splitter)) END
					,	[id]		= cte.id + 1
				FROM	cte
				WHERE	cte.finish < LEN(@string)
			)
	SELECT	[id]	= cte.id
		,	[val]	= LTRIM(RTRIM(SUBSTRING(@string, cte.start, cte.finish - cte.start)))
	FROM	cte
	WHERE	cte.id = ISNULL(@id, cte.id)
);
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserName]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserName] ON [dbo].[Accounts]
(
	[UserName] ASC
)
INCLUDE([UserName2]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ACCOUNTS_IDX]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserName2]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_UserName2] ON [dbo].[Accounts]
(
	[UserName2] ASC
)
INCLUDE([UserName]) 
WHERE ([UserName2] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ACCOUNTS_IDX]
GO
/****** Object:  Index [IX_Associations_DeviceId_AccountId]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_Associations_DeviceId_AccountId] ON [dbo].[Associations]
(
	[DeviceID] ASC,
	[AccountID] ASC
)
INCLUDE([Ass_ID]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [ASSOCIATIONS_IDX]
GO
/****** Object:  Index [IX_AccountID]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_AccountID] ON [dbo].[Transactions]
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TRANSACTIONS_IDX]
GO
/****** Object:  Index [IX_DeviceID]    Script Date: 6/9/2020 4:37:43 AM ******/
CREATE NONCLUSTERED INDEX [IX_DeviceID] ON [dbo].[Transactions]
(
	[DeviceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [TRANSACTIONS_IDX]
GO
ALTER TABLE [dbo].[Accounts] ADD  CONSTRAINT [DF_Accounts_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Associations] ADD  CONSTRAINT [DF_Associations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
/****** Object:  StoredProcedure [dbo].[AddEvidenceOnAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddEvidenceOnAccount]
	@eviGroupID int,
	@eviCode varchar(50),
	@createBy nvarchar(50),
	@comment nvarchar(500),
	@itemID bigint,
	@itemType tinyint = 0,
	@centralPoint varchar(50),
	@subscriberID int,
	@statusID tinyint,
	@affectedDate datetime,
	@eviSource tinyint = 1,
	@evilID int output --default admin web
AS
/***
	Created: 20180303@harvey.nguyen
	Task: add evidence in one step
	  DB: FPS_SUB_.
	  
	Revisions:
	  - 20180322@thai: send email for adding evidence
	Param's Explanation:

	DECLARE	@evilID int
		EXEC [dbo].[AddEvidenceOnAccount]
			@eviGroupID = 7,
			@eviCode = N'7.2',
			@createBy = N'pgmharvey',
			@comment = N'evi from SP',
			@itemID = 3278,
			@itemType = 0,
			@centralPoint = N'fpsw_pgmharvey',
			@subscriberID = 99,
			@statusID = 0,
			@affectedDate = N'2018/03/05',
			@eviSource = 1,
			@evilID = @evilID OUTPUT

	SELECT	@evilID as N'@evilID'
***/
BEGIN
	SET NOCOUNT ON;
	-- Place evi on level 0 --
	EXEC FPSADMIN.FPS_EVI.dbo.AddEvidence @eviGroupID = @eviGroupID
		,@eviCode = @eviCode
		,@createBy = @createBy
		,@comment = @comment
		,@itemID = @itemID
		,@itemType = @itemType
		,@centralPoint = @centralPoint
		,@subscriberID = @subscriberID
		,@statusID = @statusID
		,@eviID = @evilID OUTPUT
		,@affectedDate = @affectedDate
		,@eviSource = 1;

	IF @evilID = 0
	RETURN;

	-- Place evi on level 1 --
	DECLARE @DeviceIds VARCHAR(MAX);

	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS VARCHAR(50))
	FROM (
		SELECT DISTINCT ass.DeviceID
		FROM Associations ass WITH (NOLOCK)
		LEFT JOIN rmt.Exceptions ex WITH (NOLOCK) ON ass.DeviceID = ex.DeviceID AND ass.AccountID = ex.AccountID
		WHERE ass.AccountID = @itemID
			AND (
				ex.ExceptionID IS NULL
				OR ex.StatusID = 1
				)) t;

	CREATE TABLE #tblDeviceLv1Infos (
		DeviceID INT
		,DeviceNo NVARCHAR(50)
		,OSName NVARCHAR(50)
		);

	-- Get the result set of the SP into the temp table.
	INSERT INTO #tblDeviceLv1Infos
	EXEC dbo.sp_DeviceInfoBylistDeviceID @DeviceIds = @DeviceIds
		,@subscriberId = @subscriberID;

	DECLARE @itemValue VARCHAR(max);

	SELECT @itemValue = COALESCE(@itemValue + ',', '') + (CAST(DeviceId AS VARCHAR(10)) + ' ' + CAST(DeviceNo AS VARCHAR(50)))
	FROM #tblDeviceLv1Infos;

		EXEC FPSADMIN.FPS_EVI.dbo.AddEvidenceToEvidenceSub 		
		@itemValue = @itemValue
		,@eviID = @evilID
		,@itemType = 1
		,@levelID = 1
		,@subscriberID = @subscriberID
		,@affectedDate = @affectedDate;

	-- Place evi on level 2 --
	SELECT DISTINCT ass.AccountID
		,acc.UserName
	INTO #tblAccountLv2Infos
	FROM Associations ass WITH (NOLOCK)
	INNER JOIN #tblDeviceLv1Infos de ON ass.DeviceID = de.DeviceID
	INNER JOIN Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
	LEFT JOIN rmt.Exceptions ex WITH (NOLOCK) ON ass.DeviceID = ex.DeviceID AND ass.AccountID = ex.AccountID
	WHERE ass.AccountID <> @itemID
			AND (
				ex.ExceptionID IS NULL
				OR ex.StatusID = 1
				);

	SET @itemValue = '';

	SELECT @itemValue = COALESCE(@itemValue + ',', '') + (CAST(AccountID AS VARCHAR(10)) + ' ' + CAST(UserName AS VARCHAR(50)))
	FROM #tblAccountLv2Infos;

		EXEC FPSADMIN.FPS_EVI.dbo.AddEvidenceToEvidenceSub 		
		@itemValue = @itemValue
		,@eviID = @evilID
		,@itemType = 0
		,@levelID = 2
		,@subscriberID = @subscriberID
		,@affectedDate = @affectedDate;


	-- send email to notify
	DECLARE @body varchar(MAX);
	SET @body = 'Added new Evidence ' 
				+ CHAR(13)+CHAR(10) + 'EvidenceId(' + CAST(@evilID as VARCHAR(10)) + '), EvidenceCode(' + @eviCode + ')'
				+ CHAR(13)+CHAR(10) + 'SubscriberId(' + CAST(@subscriberId AS VARCHAR(10)) + ')'
				+ CHAR(13)+CHAR(10) +
				+ CHAR(13)+CHAR(10) + 'FPS Account Id(' + CAST(@itemID AS VARCHAR(10)) + ')'
				+ CHAR(13)+CHAR(10) + 'FPS Account Name = ' + @centralPoint
				+ CHAR(13)+CHAR(10) + 'Comment = ' + @comment;
																						
	--EXECUTE msdb.dbo.sp_send_dbmail @recipients = 'spu@starixsoft.com', @subject = 'FPS - NOTICE !!! Add Evidence', @body = @body;

	DROP TABLE #tblDeviceLv1Infos;
	DROP TABLE #tblAccountLv2Infos;
END;
GO
GRANT EXECUTE ON [dbo].[AddEvidenceOnAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[AddEvidenceOnAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.AddEvidenceOnAccount_xtest    Script Date: 08/05/2018 4:33:49 PM ******/
CREATE PROCEDURE [dbo].[AddEvidenceOnAccount_xtest]
	@eviGroupID int,
	@eviCode varchar(50),
	@createBy nvarchar(50),
	@comment nvarchar(500),
	@itemID bigint,
	@itemType tinyint = 0,
	@centralPoint varchar(50),
	@subscriberID int,
	@statusID tinyint,
	@affectedDate datetime,
	@eviSource tinyint = 1,
	@evilID int output --default admin web
AS
/***
	Created: 20180303@harvey.nguyen
	Task: add evidence in one step
	  DB: FPS_SUB_.
	  
	Revisions:
	  - 20180322@thai: send email for adding evidence
	Param's Explanation:

	DECLARE	@evilID int
	EXEC [dbo].[AddEvidenceOnAccount_xtest]
			@eviGroupID = 7,
			@eviCode = N'7.2',
			@createBy = N'pgmharvey',
			@comment = N'evi from SP',
			@itemID = 3278,
			@itemType = 0,
			@centralPoint = N'fpsw_pgmharvey',
			@subscriberID = 99,
			@statusID = 0,
			@affectedDate = N'2018/03/05',
			@eviSource = 1,
			@evilID = @evilID OUTPUT

	SELECT	@evilID as N'@evilID'
***/
BEGIN
	SET NOCOUNT ON;
	-- Place evi on level 0 --
	EXEC [FPSADMIN].[FPS_EVI].[dbo].AddEvidence @eviGroupID = @eviGroupID
		,@eviCode = @eviCode
		,@createBy = @createBy
		,@comment = @comment
		,@itemID = @itemID
		,@itemType = @itemType
		,@centralPoint = @centralPoint
		,@subscriberID = @subscriberID
		,@statusID = @statusID
		,@eviID = @evilID OUTPUT
		,@affectedDate = @affectedDate
		,@eviSource = 1

	IF @evilID = 0
	RETURN

	-- Place evi on level 1 --
	DECLARE @DeviceIds VARCHAR(MAX)

	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS VARCHAR(50))
	FROM (
		SELECT DISTINCT ass.DeviceID
		FROM Associations ass WITH (NOLOCK)
		LEFT JOIN [rmt].[Exceptions] ex WITH (NOLOCK) ON ass.DeviceID = ex.DeviceID AND ass.AccountID = ex.AccountID
		WHERE ass.AccountID = @itemID
			AND (
				ex.ExceptionID IS NULL
				OR ex.StatusID = 1
				)) t

	CREATE TABLE #tblDeviceLv1Infos (
		DeviceID INT
		,DeviceNo NVARCHAR(50)
		,OSName NVARCHAR(50)
		);

	-- Get the result set of the SP into the temp table.
	INSERT INTO #tblDeviceLv1Infos
	EXEC [dbo].[sp_DeviceInfoBylistDeviceID] @DeviceIds = @DeviceIds
		,@subscriberId = @subscriberID

	DECLARE @itemValue VARCHAR(max)

	SELECT @itemValue = COALESCE(@itemValue + ',', '') + (CAST(DeviceId AS VARCHAR(10)) + ' ' + CAST(DeviceNo AS VARCHAR(50)))
	FROM #tblDeviceLv1Infos

	EXEC [FPSADMIN].[FPS_EVI].[dbo].AddEvidenceToEvidenceSub_xtest 		
		@itemValue = @itemValue
		,@eviID = @evilID
		,@itemType = 1
		,@levelID = 1
		,@subscriberID = @subscriberID
		,@affectedDate = @affectedDate

	-- Place evi on level 2 --
	SELECT DISTINCT ass.AccountID
		,acc.UserName
	INTO #tblAccountLv2Infos
	FROM Associations ass WITH (NOLOCK)
	INNER JOIN #tblDeviceLv1Infos de ON ass.DeviceID = de.DeviceID
	INNER JOIN Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
	LEFT JOIN [rmt].[Exceptions] ex WITH (NOLOCK) ON ass.DeviceID = ex.DeviceID AND ass.AccountID = ex.AccountID
	WHERE ass.AccountID <> @itemID
			AND (
				ex.ExceptionID IS NULL
				OR ex.StatusID = 1
				)

	SET @itemValue = ''

	SELECT @itemValue = COALESCE(@itemValue + ',', '') + (CAST(AccountID AS VARCHAR(10)) + ' ' + CAST(UserName AS VARCHAR(50)))
	FROM #tblAccountLv2Infos

	EXEC [FPSADMIN].[FPS_EVI].[dbo].AddEvidenceToEvidenceSub_xtest 		
		@itemValue = @itemValue
		,@eviID = @evilID
		,@itemType = 0
		,@levelID = 2
		,@subscriberID = @subscriberID
		,@affectedDate = @affectedDate


	-- send email to notify
	DECLARE @body varchar(MAX)
	SET @body = 'Added new Evidence ' 
				+ CHAR(13)+CHAR(10) + 'EvidenceId(' + CAST(@evilID as VARCHAR(10)) + '), EvidenceCode(' + @eviCode + ')'
				+ CHAR(13)+CHAR(10) + 'SubscriberId(' + CAST(@subscriberId AS VARCHAR(10)) + ')'
				+ CHAR(13)+CHAR(10) +
				+ CHAR(13)+CHAR(10) + 'FPS Account Id(' + CAST(@itemID AS VARCHAR(10)) + ')'
				+ CHAR(13)+CHAR(10) + 'FPS Account Name = ' + @centralPoint
				+ CHAR(13)+CHAR(10) + 'Comment = ' + @comment
																						
	EXECUTE msdb.dbo.sp_send_dbmail @recipients = 'spu@starixsoft.com', @subject = 'FPS - NOTICE !!! Add Evidence', @body = @body

	DROP TABLE #tblDeviceLv1Infos
	DROP TABLE #tblAccountLv2Infos
END
GO
GRANT EXECUTE ON [dbo].[AddEvidenceOnAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[AddIntenalException]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddIntenalException]
	@username NVARCHAR(50),
	@deviceNo NVARCHAR(50),
	@subscriber NVARCHAR(50),
	@createdBy NVARCHAR(50),
	@comment NVARCHAR(500),
	@actionName NVARCHAR(50),
	@statusID TINYINT,
	@exceptionID INT OUTPUT
AS
/***
	Created: 20133101@kan.nguyen
	Task: add internal exception
	  DB: FPS_SUB.
	  
	Revisions:
		-20130628@Hannah: use remote server
		-20130703@bobby: using OPENQUERY
		-20180322@thai: send email for adding exception
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;
	-- check insert new record or only need to update status
	DECLARE @associationID INT, @subscriberID INT, @deviceID INT, @accountID INT;

	SELECT TOP (1) 
		@accountId=acc.AccountID, 
		@subscriberId =acc.SubscriberID 
	FROM dbo.Accounts AS acc WITH (NOLOCK) WHERE acc.UserName=@username;	
	
	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN
		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceId OUTPUT;

		IF(@deviceID > 0)
		BEGIN
			SELECT TOP (1) @associationID = s.Ass_ID
			FROM dbo.Associations s WITH (NOLOCK)
			WHERE s.AccountID = @accountID
				AND s.DeviceID = @deviceID;

			EXEC rmt.AddException @username, @deviceNo, @subscriber, NULL,
					@createdBy, @comment, @actionName, @statusID, @exceptionID = @exceptionID OUTPUT;
			IF (@exceptionID > 0)
			BEGIN               
				-- update Association
				UPDATE dbo.Associations WITH (ROWLOCK, UPDLOCK) SET ExceptionID = @exceptionID WHERE Ass_ID = @associationID;	

				-- send email to notify
				DECLARE @body VARCHAR(MAX);
				SET @body = 'AddIntenalException '
							+ CHAR(13)+ CHAR(10) + '@exceptionID(' + CAST(@exceptionID AS VARCHAR(10)) + ')'						
							+ CHAR(13)+ CHAR(10) +				
							+ CHAR(13)+ CHAR(10) + '@username = ' + @username						
							+ CHAR(13)+ CHAR(10) + '@deviceNo = ' + @deviceNo
							+ CHAR(13)+ CHAR(10) + '@subscriber = ' + @subscriber;
										
				EXECUTE msdb.dbo.sp_send_dbmail @recipients = 'spu@starixsoft.com', @subject = 'FPS - NOTICE !!! AddIntenalException', @body = @body;
			END;
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[AddIntenalException] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[AddIntenalException] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[AddIntenalException] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[AddIntenalException_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.AddIntenalException_xtest    Script Date: 5/17/2018 9:15:00 AM ******/

CREATE PROCEDURE [dbo].[AddIntenalException_xtest]
	@username NVARCHAR(50),
	@deviceNo NVARCHAR(50),
	@subscriber NVARCHAR(50),
	@createdBy NVARCHAR(50),
	@comment NVARCHAR(500),
	@actionName NVARCHAR(50),
	@statusID TINYINT,
	@exceptionID INT OUTPUT
AS
/***
	Created: 20133101@kan.nguyen
	Task: add internal exception
	  DB: FPS_SUB.
	  
	Revisions:
		-20130628@Hannah: use remote server
		-20130703@bobby: using OPENQUERY
		-20180322@thai: send email for adding exception
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON
	-- check insert new record or only need to update status
	DECLARE @associationID INT, @subscriberID INT, @deviceID INT, @accountID INT

	SELECT TOP (1) 
		@accountId=acc.AccountID, 
		@subscriberId =acc.SubscriberID 
	FROM [dbo].[Accounts] AS acc WITH (NOLOCK) WHERE acc.UserName=@username	
	
	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN
		EXEC [dbo].[sp_DeviceInfoByNo] 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceId OUTPUT

		IF(@deviceID > 0)
		BEGIN
			SELECT TOP (1) @associationID = s.Ass_ID
			FROM dbo.Associations s WITH (NOLOCK)
			WHERE s.AccountID = @accountID
				AND s.DeviceID = @deviceID

			EXEC rmt.AddException @username, @deviceNo, @subscriber, NULL,
					@createdBy, @comment, @actionName, @statusID, @exceptionID = @exceptionID OUTPUT
			IF (@exceptionID > 0)
			BEGIN               
				-- update Association
				UPDATE dbo.Associations WITH (ROWLOCK, UPDLOCK) SET ExceptionID = @exceptionID WHERE Ass_ID = @associationID	

				-- send email to notify
				DECLARE @body VARCHAR(MAX)
				SET @body = 'AddIntenalException '
							+ CHAR(13)+ CHAR(10) + '@exceptionID(' + CAST(@exceptionID AS VARCHAR(10)) + ')'						
							+ CHAR(13)+ CHAR(10) +				
							+ CHAR(13)+ CHAR(10) + '@username = ' + @username						
							+ CHAR(13)+ CHAR(10) + '@deviceNo = ' + @deviceNo
							+ CHAR(13)+ CHAR(10) + '@subscriber = ' + @subscriber
										
				EXECUTE msdb.dbo.sp_send_dbmail @recipients = 'spu@starixsoft.com', @subject = 'FPS - NOTICE !!! AddIntenalException', @body = @body
			END
		END
	END
END
GO
GRANT EXECUTE ON [dbo].[AddIntenalException_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[AddIntenalException_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[AddIntenalException_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[admin_get_subdbinfo]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[admin_get_subdbinfo]
(
	@SubscriberId int = 0,
	@ServerName varchar(100) = NULL OUTPUT, 
	@DbName varchar(100) = NULL OUTPUT, 
	@LinkedDevice varchar(100) = NULL OUTPUT, 
	@FPSDevice varchar(100) = NULL OUTPUT,
	@IsOnMain BIT = 0 OUTPUT
)
AS
/*
	Created: 20133101@bobby
	Task: return db information of subscriber
	  DB: FPS_SUB
  
	Revisions:
	Param's Explanation:
		-@subscriberId: INT subscriber ID
		
*/
BEGIN
	SET NOCOUNT ON;

    IF @SubscriberId=0 AND @DbName IS NULL
		RETURN;

	DECLARE @IsSubTest BIT;

	IF(@subscriberId > 0)
	BEGIN
		SELECT TOP(1) @ServerName=ServerName, 
			@DbName=DbName, 
			@LinkedDevice = LinkedDevice, 
			@IsSubTest=sub.IsTest,
			@IsOnMain=IsOnMain 
		FROM rmt.SubDBServers srv WITH (NOLOCK)
		INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON srv.SubscriberId=sub.SubscriberID
		WHERE srv.SubscriberId = @subscriberId;
	END;
	ELSE IF (@DbName IS NOT NULL)
	BEGIN
		SELECT TOP(1) @ServerName=ServerName, 
			@DbName=DbName, 
			@LinkedDevice = LinkedDevice, 
			@IsSubTest=sub.IsTest,
			@IsOnMain=IsOnMain 
		FROM rmt.SubDBServers srv WITH (NOLOCK)
		INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON srv.SubscriberId=sub.SubscriberID
		WHERE srv.DbName = @DbName;
	END;
	SET @FPSDevice = 'FPS_DEV';
	IF(@IsSubTest=1)
	BEGIN
		SET @FPSDevice = 'FPS_DEV_TEST';
	END;
	RETURN;
END;
GO
/****** Object:  StoredProcedure [dbo].[admin_get_subdbinfo_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[admin_get_subdbinfo_xtest]
(
	@SubscriberId int = 0,
	@ServerName varchar(100) = NULL OUTPUT, 
	@DbName varchar(100) = NULL OUTPUT, 
	@LinkedDevice varchar(100) = NULL OUTPUT, 
	@FPSDevice varchar(100) = NULL OUTPUT,
	@IsOnMain BIT = 0 OUTPUT
)
AS
/*
	Created: 20133101@bobby
	Task: return db information of subscriber
	  DB: FPS_SUB
  
	Revisions:
	Param's Explanation:
		-@subscriberId: INT subscriber ID
		
*/
BEGIN
	SET NOCOUNT ON;

    IF @SubscriberId=0 AND @DbName IS NULL
		RETURN

	DECLARE @IsSubTest BIT

	IF(@subscriberId > 0)
	BEGIN
		SELECT TOP(1) @ServerName=ServerName, 
			@DbName=DbName, 
			@LinkedDevice = LinkedDevice, 
			@IsSubTest=IsTest,
			@IsOnMain=IsOnMain 
		FROM rmt.SubDBServers WITH (NOLOCK)
		WHERE SubscriberId = @subscriberId
	END
	ELSE IF (@DbName IS NOT NULL)
	BEGIN
		SELECT TOP(1) @ServerName=ServerName, 
			@DbName=DbName, 
			@LinkedDevice = LinkedDevice, 
			@IsSubTest=IsTest,
			@IsOnMain=IsOnMain 
		FROM rmt.SubDBServers WITH (NOLOCK)
		WHERE DbName = @DbName
	END
	SET @FPSDevice = 'FPS_DEV'
	IF(@IsSubTest=1)
	BEGIN
		SET @FPSDevice = 'FPS_DEV_TEST'
	END
END














GO
/****** Object:  StoredProcedure [dbo].[admin_get_subtrusty]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[admin_get_subtrusty]
(
	@SubscriberId int
)
AS
/*
	Created: 20133101@bobby
	Task: return subscriber trusty information
	  DB: FPS_ADMIN
  
	Revisions:
	Param's Explanation:
		-@subscriberId: INT subscriber ID
		
*/
BEGIN
	SET NOCOUNT ON;

    IF @SubscriberId<=0
		RETURN;

	CREATE TABLE #SubscriberTrusty(TrustyId int, GroupIds varchar(500), Codes varchar(2000));
	CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50));

	INSERT INTO #SubscriberTrusty(TrustyId, GroupIds, Codes)
	SELECT trust.SubscriberId_Trusty
		,trust.EviGroupIDs 
		,trust.EviCodeIds 
	FROM rmt.SubscriberTrusty AS trust WITH (NOLOCK)
	WHERE trust.SubscriberId=@subscriberId
		AND trust.IsActive=1
		AND (LEN(trust.EviGroupIDs) > 0 OR LEN(trust.EviCodeIds) > 0);

	--SELECT * FROM #SubscriberTrusty

	IF(EXISTS(SELECT TOP(1) 1 FROM #SubscriberTrusty))
	BEGIN
		DECLARE @trustyId int, @groupIds varchar(500), @codes varchar(2000);
		DECLARE CurTrusty CURSOR FOR 
		SELECT TrustyId, GroupIds, Codes FROM #SubscriberTrusty;
	
		OPEN CurTrusty;

		FETCH NEXT FROM CurTrusty INTO @trustyId, @groupIds, @codes;

		WHILE @@FETCH_STATUS = 0   
		BEGIN   
			IF(LEN(@groupIds) > 0)
			BEGIN
				INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType )
				SELECT @trustyId, Item, 'G' FROM dbo.SplitVarchar(@groupIds, ';');
			END;
			IF(LEN(@codes) > 0)
			BEGIN
				INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType )
				SELECT @trustyId, Item, 'C' FROM dbo.SplitVarchar(@codes, ';');
			END;
				
			FETCH NEXT FROM CurTrusty INTO @trustyId, @groupIds, @codes;   
		END;   

		CLOSE CurTrusty;
		DEALLOCATE CurTrusty;
	END;
	SELECT * FROM #TrustyInfo;
	
	DROP TABLE #TrustyInfo;
	DROP TABLE #SubscriberTrusty;

	RETURN;
END;
GO
/****** Object:  StoredProcedure [dbo].[admin_get_subtrusty_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[admin_get_subtrusty_xtest]
(
	@SubscriberId int
)
AS
/*
	Created: 20133101@bobby
	Task: return subscriber trusty information
	  DB: FPS_ADMIN
  
	Revisions:
	Param's Explanation:
		-@subscriberId: INT subscriber ID
		
*/
BEGIN
	SET NOCOUNT ON;

    IF @SubscriberId<=0
		RETURN

	CREATE TABLE #SubscriberTrusty(TrustyId int, GroupIds varchar(500), Codes varchar(2000));
	CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50))

	INSERT INTO #SubscriberTrusty(TrustyId, GroupIds, Codes)
	SELECT trust.SubscriberId_Trusty
		,trust.EviGroupIDs 
		,trust.EviCodeIds 
	FROM rmt.SubscriberTrusty AS trust WITH (NOLOCK)
	WHERE trust.SubscriberId=@subscriberId
		AND trust.IsActive=1
		AND (LEN(trust.EviGroupIDs) > 0 OR LEN(trust.EviCodeIds) > 0)

	--SELECT * FROM #SubscriberTrusty

	IF(EXISTS(SELECT TOP(1) 1 FROM #SubscriberTrusty))
	BEGIN
		DECLARE @trustyId int, @groupIds varchar(500), @codes varchar(2000)
		DECLARE CurTrusty CURSOR FOR 
		SELECT TrustyId, GroupIds, Codes FROM #SubscriberTrusty
	
		OPEN CurTrusty;

		FETCH NEXT FROM CurTrusty INTO @trustyId, @groupIds, @codes

		WHILE @@FETCH_STATUS = 0   
		BEGIN   
			IF(LEN(@groupIds) > 0)
			BEGIN
				INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType )
				SELECT @trustyId, Item, 'G' FROM dbo.SplitVarchar_xtest(@groupIds, ';')
			END
			IF(LEN(@codes) > 0)
			BEGIN
				INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType )
				SELECT @trustyId, Item, 'C' FROM dbo.SplitVarchar_xtest(@codes, ';')
			END
				
			FETCH NEXT FROM CurTrusty INTO @trustyId, @groupIds, @codes   
		END   

		CLOSE CurTrusty;
		DEALLOCATE CurTrusty;
	END
	SELECT * FROM #TrustyInfo
	
	DROP TABLE #TrustyInfo
	DROP TABLE #SubscriberTrusty

	RETURN
END














GO
/****** Object:  StoredProcedure [dbo].[BSR_GetAccountPerDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BSR_GetAccountPerDevice]
	@transDate datetime,
	@deviceNo nvarchar(50),
	@username nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get account per device
	DB: FPS_SUB

	Revisions:
		-20130701@hannah: use remote server
		-20130703@bobby: using OPENQUERY
	Param's Explanation: 
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @subscriberID int, @deviceID int, @accountId int;

	SELECT TOP (1) 
		@subscriberId =acc.SubscriberID
		, @accountId=acc.AccountID 
	FROM dbo.Accounts AS acc WITH (NOLOCK)	
	WHERE acc.UserName=@username;
	
	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN
		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceID output;
		
		IF(@deviceID > 0)
		BEGIN
			SELECT COUNT(1)
			FROM dbo.Associations ass (NOLOCK)
			WHERE ass.DeviceID = @deviceID
				AND ass.AccountID <> @accountId
				AND ass.LastAccessedDate >= @transDate; 
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[BSR_GetAccountPerDevice] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetAccountPerDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetAccountPerDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BSR_GetAccountPerDevice_xtest]
	@transDate datetime,
	@deviceNo nvarchar(50),
	@username nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get account per device
	DB: FPS_SUB

	Revisions:
		-20130701@hannah: use remote server
		-20130703@bobby: using OPENQUERY
	Param's Explanation: 
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @subscriberID int, @deviceID int, @accountId int

	SELECT TOP (1) 
		@subscriberId =acc.SubscriberID
		, @accountId=acc.AccountID 
	FROM [dbo].[Accounts] AS acc WITH (NOLOCK)	
	WHERE acc.UserName=@username
	
	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN
																																																																																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceID output
		
		IF(@deviceID > 0)
		BEGIN
			SELECT COUNT(1)
			FROM dbo.Associations ass (NOLOCK)
			WHERE ass.DeviceID = @deviceID
				AND ass.AccountID <> @accountId
				AND ass.LastAccessedDate >= @transDate 
		END
	END
END














GO
GRANT EXECUTE ON [dbo].[BSR_GetAccountPerDevice_xtest] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetAccountPerDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetDevicePerAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BSR_GetDevicePerAccount]
	@transDate datetime,
	@username nvarchar(50),
	@deviceNo nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get device per account
	DB: FPS_SUB

	Revisions:
		-20130703@bobby: using OPENQUERY
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @subscriberID int, @deviceID int, @accountId int;

	SELECT TOP (1) 
		@subscriberId =acc.SubscriberID
		, @accountId=acc.AccountID 
	FROM dbo.Accounts AS acc WITH (NOLOCK)	
	WHERE acc.UserName=@username;
	
	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN
		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceId output;

		IF(@deviceID > 0)
		BEGIN
			SELECT COUNT(1)
			FROM dbo.Associations ass (NOLOCK)
			WHERE ass.DeviceID <> @deviceID
				AND ass.AccountID = @accountId
				AND ass.LastAccessedDate >= @transDate; 
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[BSR_GetDevicePerAccount] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetDevicePerAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetDevicePerAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BSR_GetDevicePerAccount_xtest]
	@transDate datetime,
	@username nvarchar(50),
	@deviceNo nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get device per account
	DB: FPS_SUB

	Revisions:
		-20130703@bobby: using OPENQUERY
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @subscriberID int, @deviceID int, @accountId int

	SELECT TOP (1) 
		@subscriberId =acc.SubscriberID
		, @accountId=acc.AccountID 
	FROM [dbo].[Accounts] AS acc WITH (NOLOCK)	
	WHERE acc.UserName=@username
	
	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN
																																																																																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceId output

		IF(@deviceID > 0)
		BEGIN
			SELECT COUNT(1)
			FROM dbo.Associations ass (NOLOCK)
			WHERE ass.DeviceID <> @deviceID
				AND ass.AccountID = @accountId
				AND ass.LastAccessedDate >= @transDate 
		END
	END
END














GO
GRANT EXECUTE ON [dbo].[BSR_GetDevicePerAccount_xtest] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetDevicePerAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetTransactionPerAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BSR_GetTransactionPerAccount]
	@transDate datetime,
	@username nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get transaction per account
	DB: FPS_SUB

	Revisions:
		-20130703@Bobby: add prefix dbo
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	SELECT COUNT(1)
	FROM dbo.Transactions t WITH (NOLOCK)
		INNER JOIN dbo.Accounts a WITH (NOLOCK) ON (t.AccountID = a.AccountID)
	WHERE t.TransDate >= @transDate AND a.UserName = @username;
END;
GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerAccount] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetTransactionPerAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BSR_GetTransactionPerAccount_xtest]
	@transDate datetime,
	@username nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get transaction per account
	DB: FPS_SUB

	Revisions:
		-20130703@Bobby: add prefix dbo
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON

	SELECT COUNT(1)
	FROM dbo.Transactions t WITH (NOLOCK)
		INNER JOIN dbo.Accounts a WITH (NOLOCK) ON (t.AccountID = a.AccountID)
	WHERE t.TransDate >= @transDate AND a.UserName = @username
END














GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerAccount_xtest] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetTransactionPerLocalDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BSR_GetTransactionPerLocalDevice]
	@transDate datetime,
	@deviceNo nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get transaction per local device
	DB: FPS_SUB

	Revisions: 
		-20130703@Bobby: add prefix dbo
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
	DECLARE @deviceID int;

		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output;

	IF(@deviceID > 0)
	BEGIN
		SELECT COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)		
		WHERE t.TransDate >= @transDate AND t.DeviceID = @deviceID;
	END;	
END;
GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerLocalDevice] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerLocalDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[BSR_GetTransactionPerLocalDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BSR_GetTransactionPerLocalDevice_xtest]
	@transDate datetime,
	@deviceNo nvarchar(50)
AS
/*
	Created:20130305@kan.nguyen
	Task: get transaction per local device
	DB: FPS_SUB

	Revisions: 
		-20130703@Bobby: add prefix dbo
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON
	DECLARE @deviceID int

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output

	IF(@deviceID > 0)
	BEGIN
		SELECT COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)		
		WHERE t.TransDate >= @transDate AND t.DeviceID = @deviceID
	END	
END














GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerLocalDevice_xtest] TO [fpsWebService] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[BSR_GetTransactionPerLocalDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[CheckAccountsByUserNames]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckAccountsByUserNames]
	@usernames varchar(max)	
AS
/***
	Created: 20200117@Thai.Tran
	Task: Get & Check Accounts in Subscriber
	  DB: FPS_SUB.
	  
	Revisions:
	 - 20200117@Thai.Tran : initial (#126894)
	 
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #tmpUserNames (        
       UserName NVARCHAR(50)        
	);

	INSERT INTO #tmpUserNames (UserName)
	SELECT * FROM dbo.SplitString(@usernames, ',');
	
	WITH acc AS (
		SELECT AccountID, Username, Username2, SubscriberID
		FROM dbo.Accounts tempAcc WITH (NOLOCK)
		WHERE EXISTS (SELECT 1 FROM #tmpUserNames AS tmp WITH (NOLOCK)
						WHERE tmp.UserName = tempAcc.UserName)
	
		UNION ALL
	
		SELECT AccountID, Username, Username2, SubscriberID
		FROM dbo.Accounts tempAcc WITH (NOLOCK)
		WHERE EXISTS (SELECT 1 FROM #tmpUserNames AS tmp WITH (NOLOCK)
						WHERE tmp.UserName = tempAcc.UserName2)
	)

	SELECT	DISTINCT
			acc.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID
	FROM	acc WITH (NOLOCK);
END

GO
GRANT EXECUTE ON [dbo].[CheckAccountsByUserNames] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[CheckAccountsByUserNames] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[CheckAccountsByUserNames] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[CheckAccountsByUserNames_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CheckAccountsByUserNames_xtest]
	@usernames varchar(max)	
AS
/***
	Created: 20200117@Thai.Tran
	Task: Get & Check Accounts in Subscriber
	  DB: FPS_SUB.
	  
	Revisions:
	 - 20200117@Thai.Tran : initial (#126894)
	 
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #tmpUserNames (        
       UserName NVARCHAR(50)        
	);

	INSERT INTO #tmpUserNames (UserName)
	SELECT * FROM dbo.SplitString(@usernames, ',');
	
	WITH acc AS (
		SELECT AccountID, Username, Username2, SubscriberID
		FROM dbo.Accounts tempAcc WITH (NOLOCK)
		WHERE EXISTS (SELECT 1 FROM #tmpUserNames AS tmp WITH (NOLOCK)
						WHERE tmp.UserName = tempAcc.UserName)
	
		UNION ALL
	
		SELECT AccountID, Username, Username2, SubscriberID
		FROM dbo.Accounts tempAcc WITH (NOLOCK)
		WHERE EXISTS (SELECT 1 FROM #tmpUserNames AS tmp WITH (NOLOCK)
						WHERE tmp.UserName = tempAcc.UserName2)
	)

	SELECT	DISTINCT
			acc.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID
	FROM	acc WITH (NOLOCK);
END

GO
GRANT EXECUTE ON [dbo].[CheckAccountsByUserNames_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[CheckAccountsByUserNames_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[CheckAccountsByUserNames_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[DBA_GrantPermissions]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE		[dbo].[DBA_GrantPermissions]
						@SPs				NVARCHAR(4000)
					,	@strPermission		VARCHAR(4000)		= '' OUTPUT
AS
BEGIN;
	SET NOCOUNT ON;

	WITH cte AS (
		SELECT	[start]		= CAST(1 AS INT)
			,	[finish]	= CASE WHEN CHARINDEX(',', @SPs, 1) = 0 THEN LEN(@SPs) + 1 ELSE CHARINDEX(',', @SPs, 1) END
		UNION ALL
		SELECT	[start]		= CAST(cte.finish + 1 AS INT)
			,	[finish]	= CASE WHEN CHARINDEX(',', @SPs, cte.finish + 1) = 0 THEN LEN(@SPs) + 1 ELSE CHARINDEX(',', @SPs, cte.finish + 1) END
		FROM	cte
		WHERE	cte.finish < LEN(@SPs)
	)
	SELECT	xqry.xml.value('.[1]', 'NVARCHAR(MAX)')
	FROM	(
		SELECT	dp.state_desc + N' ' + dp.permission_name + N' ON [' + SCHEMA_NAME(obj.schema_id) + N'].[' + obj.name + N'] TO [' + USER_NAME(dp.grantee_principal_id) + N'] AS [' + USER_NAME(dp.grantor_principal_id) + N'];
GO
'
		FROM		cte
		CROSS APPLY	(
			SELECT	[SPName]	= LTRIM(RTRIM(SUBSTRING(@SPs, cte.start, cte.finish - cte.start)))
		) AS c
		INNER JOIN	sys.objects AS obj WITH (NOLOCK)
				ON	obj.name = c.SPName
		INNER JOIN	sys.database_permissions AS dp WITH (NOLOCK)
				ON	dp.major_id = obj.object_id
		FOR XML PATH ('')
		,	TYPE
	) xqry(xml)
	OPTION (MAXRECURSION 0);
END;
GO
/****** Object:  StoredProcedure [dbo].[DBA_ReIndex]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DBA_ReIndex]
AS
-- Joe : reorganize all index with fragment > 30%
-- Dan: reorganize all index with fragment > 10 %, rebuild for fragment > 30 %
BEGIN
	declare @database_id int
	select @database_id = db_id()

	declare @CMDs TABLE (rn int PRIMARY KEY IDENTITY(1,1), cmd nvarchar(1000))			

	INSERT INTO @CMDs (cmd)
	SELECT
	'ALTER INDEX [' + i.name + '] ON [dbo].[' + tbl.name + '] ' + 
		CASE WHEN fi.avg_fragmentation_in_percent > 30 then 'REBUILD'
		ELSE 'REORGANIZE'
		END
	--fi.avg_fragmentation_in_percent AS [AverageFragmentation]
	FROM
	sys.tables AS tbl
	INNER JOIN sys.indexes AS i ON (i.index_id > 0 and i.is_hypothetical = 0) AND (i.object_id=tbl.object_id)
	INNER JOIN sys.dm_db_index_physical_stats(@database_id, NULL, NULL, NULL, 'LIMITED') AS fi ON fi.object_id=CAST(i.object_id AS int) AND fi.index_id=CAST(i.index_id AS int)
	WHERE
		fi.avg_fragmentation_in_percent > 10
	--	AND tbl.name NOT LIKE 'BalanceRecord%'
	ORDER BY tbl.name, i.type_desc

	declare @rn int, @cmd nvarchar(1000)
	SET @rn = 1

	WHILE EXISTS(SELECT 1 FROM @CMDs WHERE rn = @rn)
	BEGIN
		SELECT @cmd = cmd FROM @CMDs WHERE rn = @rn
		SET @rn = @rn + 1

		EXEC sp_executesql @cmd
	END

	EXEC sp_updatestats
	--DBCC DROPCLEANBUFFERS
END














GO
/****** Object:  StoredProcedure [dbo].[FPS_Sub_AccountPerDevice_Report]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FPS_Sub_AccountPerDevice_Report]
	@Subscriber		INT
	,@NoOfAccount 	INT = 5
	,@TimeRange 	TINYINT = 1
	,@PageSize 		INT = 25
	,@PageIndex 	INT	= 1
	,@iExport		BIT	= 0
	,@ExportFrom	INT	= 0
	,@ExportTo		INT	= 0
	,@NRows 		INT	= 0 OUTPUT
	,@Error			INT	= 0 OUTPUT
	,@ErrorMsg		NVARCHAR(100)	= '' OUTPUT
AS
/*
Created: 20130117@Tom
Task: Retrieve Accounts Per Device report
	DB_SUB: FPS_SUB_XXX.
  
Revisions:
	-20130719@bobby.nguyen: add remote device information
	-20150313@bobby.nguyen: add betcount info
    
Param's Explanation:
	-@TimeRange:	in range [1-7]
*/
BEGIN
	SET NOCOUNT ON;
	
	---- check validation before searching
	--IF ( 
	--	@TimeRange > 7 -- invalid date range
	--	OR ( @iExport = 1 AND @ExportFrom > @ExportTo) -- invalid export
	--) 
	--BEGIN 
	--	SELECT @Error 	= 100
	--		,@ErrorMsg	= N'Invalid input value.'
			
	--	RETURN;
	--END
	
	DECLARE @startTime		DATETIME
		,@accessTime	 	DATETIME;
	
	DECLARE @DeviceIds 		VARCHAR(MAX)
		,@DeviceList		VARCHAR(MAX);

	DECLARE @tmpDevices 	TABLE (
		DeviceID 			bigINT
		, DeviceNo 			nvarchar(50)
		, OSName 			nvarchar(50)
	);
	
	DECLARE @tmpBetCount 	TABLE (
		Device 				varchar(50)
		, BetCount 			INT
	);
		
	CREATE TABLE #Rpt_APD
	(
		DeviceID 			INT
		,NoOfAccount 		INT
		,RowIdx				INT
	);
	
	SELECT @startTime 		= DATEADD(DD, -@TimeRange, CURRENT_TIMESTAMP)
		,@accessTime		= CASE	WHEN @TimeRange <> 1 THEN DATEADD(DD, DATEDIFF(DD, 0, @startTime), 0) -- convert to the beginning date
									ELSE @startTime
								END;
	
	--select @accessTime = '2015-02-08'

	INSERT INTO #Rpt_APD (DeviceID, NoOfAccount, RowIdx)
	SELECT DeviceID
		,COUNT(DISTINCT AccountID) AS NoOfAccount
		,ROW_NUMBER() OVER (
			ORDER BY COUNT(AccountID) DESC
		) AS RowIdx
	FROM dbo.Associations WITH (NOLOCK)
	WHERE DeviceID > 0
		AND LastAccessedDate > @accessTime
	GROUP BY DeviceID
	HAVING COUNT(AccountID) >= @NoOfAccount;
	
	SET @NRows = @@ROWCOUNT;

	IF (@NRows = 0 )
	BEGIN
		SELECT @Error 	= 102
			,@ErrorMsg	= N'There is no data found.';
			
		RETURN;	
	END; 

	--Paging
	SELECT t.RowIdx
		, t.DeviceID
		, t.NoOfAccount
	INTO #tmpAPDRpt
	FROM #Rpt_APD t
	WHERE ( 
			@iExport = 0 
			AND t.RowIdx BETWEEN ((@PageIndex - 1) * @PageSize) + 1 AND @PageSize * (@PageIndex)
		) 
		OR (@iExport = 1
			AND (	
				@ExportFrom = 0 AND @ExportTo = 0
				OR (@ExportFrom > 0 AND @ExportTo > 0) AND (t.RowIDX BETWEEN @ExportFrom AND @ExportTo)
			)		
		); 
	----gather FPS info
	BEGIN TRY
		
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS nvarchar(50))
		FROM #tmpAPDRpt
		GROUP BY DeviceId;

		--select @DeviceIds

		INSERT INTO @tmpDevices(DeviceID, DeviceNo, OSName)
		EXEC dbo.sp_DeviceInfoBylistDeviceID 
			@DeviceIds = @DeviceIds;
		
		SELECT @DeviceList = COALESCE(@DeviceList + ',', '') + CAST(DeviceNo AS nvarchar(50))
		FROM @tmpDevices
		GROUP BY DeviceNo;

		----gather betcount info
		INSERT INTO @tmpBetCount (
			Device
			, BetCount
		)
		EXEC FPSTICKET.FPS_BODB_TRANS.dbo.FPS_BetHistory_DeviceBetCount 
			@Subscriber 	= @Subscriber
			, @DeviceList	= @DeviceList
			, @TransTime	= @accessTime;
	
	END TRY
	BEGIN CATCH
		-- error handler
		SELECT @Error 	= ERROR_NUMBER()
			,@ErrorMsg 	= ERROR_MESSAGE();

	END CATCH;

	----megre result
	SELECT rpt.*
		, ISNULL(d.DeviceNo, 'N/A') AS DeviceNo  
		, ISNULL(b.BetCount, 0) 	AS BetCount  
	FROM #tmpAPDRpt rpt
		LEFT JOIN @tmpDevices d 
		ON rpt.DeviceID = d.DeviceID
		LEFT JOIN @tmpBetCount b
		ON d.DeviceNo = b.Device
	ORDER BY rpt.RowIdx; 
		
	DROP TABLE #tmpAPDRpt;
	DROP TABLE #Rpt_APD;
	
	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[FPS_Sub_AccountPerDevice_Report] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[FPS_Sub_DevicePerAccount_Report]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FPS_Sub_DevicePerAccount_Report]
	@Subscriber		INT
	,@NoOfDevice	INT = 5
	,@TimeRange 	TINYINT = 1
	,@PageSize 		INT = 25
	,@PageIndex 	INT	= 1
	,@iExport		BIT	= 0
	,@ExportFrom	INT	= 0
	,@ExportTo		INT	= 0
	,@NRows 		INT	= 0 OUTPUT
	,@Error			INT	= 0 OUTPUT
	,@ErrorMsg		NVARCHAR(100)	= '' OUTPUT
AS
/*
Created: 20130117@Tom
Task: Retrieve Devices Per Account report
	DB_SUB: FPS_SUB_XXX.
  
Revisions:
	-20130719@bobby.nguyen: add remote device information
	-20150313@bobby.nguyen: add betcount info
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
	
	-- check validation before searching
	--IF ( 
	--	@TimeRange > 7 -- invalid date range
	--	OR ( @iExport = 1 AND @ExportFrom > @ExportTo) -- invalid export
	--) 
	--BEGIN 
	--	SELECT @Error 	= 100
	--		,@ErrorMsg	= N'Invalid input value.'
			
	--	RETURN;
	--END
	
	DECLARE @startTime		DATETIME
		,@accessTime	 	DATETIME;
	
	DECLARE @AccountList	NVARCHAR(MAX);
	DECLARE @tmpDevices 	TABLE (
		DeviceID 			bigINT
		, DeviceNo 			nvarchar(50)
		, OSName 			nvarchar(50)
	);
	
	DECLARE @tmpBetCount 	TABLE (
		Account 			varchar(50)
		, BetCount 			INT
	);
		
	CREATE TABLE #Rpt_DPA
	(
		UserName 			VARCHAR(50)
		,UserName2 			VARCHAR(50)
		,NoOfDevice			INT
		,RowIdx				INT
	);
	
	SELECT @startTime 		= DATEADD(DD, - @TimeRange, CURRENT_TIMESTAMP)
		,@accessTime		= CASE	WHEN @TimeRange <> 1 THEN DATEADD(DD, DATEDIFF(DD, 0, @startTime), 0) -- convert to the beginning date
									ELSE @startTime
								END
		,@NRows				= 0;
	
	--select @accessTime = '2015-02-08'

	INSERT INTO #Rpt_DPA (UserName, UserName2, NoOfDevice, RowIdx)
	SELECT a.UserName
		,a.UserName2
		,COUNT(DISTINCT ass.DeviceID) AS NoOfDevice
		,ROW_NUMBER() OVER (
			ORDER BY COUNT(DISTINCT ass.DeviceID) DESC
		) AS RowIdx
	FROM dbo.Associations ass WITH (NOLOCK)
		INNER JOIN dbo.Accounts a WITH (NOLOCK)
		ON ass.AccountId = a.AccountId
	WHERE ass.AccountId > 0
		AND ass.LastAccessedDate > @accessTime
	GROUP BY a.UserName
		,a.UserName2
		
	HAVING COUNT(DISTINCT ass.DeviceID) >= @NoOfDevice;
	
	SET @NRows = @@ROWCOUNT;

	IF (@NRows = 0 )
	BEGIN
		SELECT @Error 	= 102
			,@ErrorMsg	= N'There is no data found.';
			
		RETURN;	
	END; 

	--Paging
	SELECT t.*
	INTO #tmpAPDRpt
	FROM #Rpt_DPA t
	WHERE ( 
			@iExport = 0 
			AND t.RowIdx BETWEEN ((@PageIndex - 1) * @PageSize) + 1 AND @PageSize * (@PageIndex)
		) 
		OR (@iExport = 1
			AND (	
				@ExportFrom = 0 AND @ExportTo = 0
				OR (@ExportFrom > 0 AND @ExportTo > 0) AND (t.RowIDX BETWEEN @ExportFrom AND @ExportTo)
			)		
		); 
		
	----gather betcount info
	BEGIN TRY
		
		SELECT @AccountList = COALESCE(@AccountList + ',', '') + CAST(UserName2 AS varchar(50)) + ''
		FROM #tmpAPDRpt
		GROUP BY UserName2;
		
		INSERT INTO @tmpBetCount (
			Account
			, BetCount
		)
		EXEC FPSTICKET.FPS_BODB_TRANS.dbo.FPS_BetHistory_AccountBetCount 
			@Subscriber 	= @Subscriber
			, @AccountList	= @AccountList
			, @TransTime	= @accessTime;
	
	END TRY
	BEGIN CATCH
		-- error handler
		SELECT @Error 	= ERROR_NUMBER()
			,@ErrorMsg 	= ERROR_MESSAGE();

	END CATCH;
	
	
	
	----megre result
	SELECT rpt.RowIdx
		,rpt.UserName
		,rpt.UserName2
		,rpt.NoOfDevice
		, ISNULL(b.BetCount, 0) AS BetCount  
	FROM #tmpAPDRpt rpt
		LEFT JOIN @tmpBetCount b
		ON rpt.UserName2 = b.Account
	ORDER BY rpt.RowIdx; 
		
	DROP TABLE #tmpAPDRpt;
	DROP TABLE #Rpt_DPA;
	
	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[FPS_Sub_DevicePerAccount_Report] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[FPS_Sub_GetTransInfo]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[FPS_Sub_GetTransInfo]
	@TransIds 	VARCHAR(MAX)
AS
/*   
Created: 20150311@Bobby.Nguyen
Task : Bet History report
DB: FPSLIC/FPS_SUB_XXX

Revisions:   
	- 20140603@bobby: Create SP
	
Param's Explanation:  
	@TransIds:	List of FPS TransId
*/
BEGIN
	
	SET NOCOUNT ON;

	WITH tblTransId (TransId)
	AS (
		SELECT CAST(u.Val AS BIGINT)
		FROM dbo.Split_To_IndValue(@TransIds, ',') u
	)
	SELECT t.TransId
		,t.ActionName
		,t.IP
		,CAST(t.TransDate AS smalldatetime) AS ActionTime
	FROM dbo.Transactions t WITH (NOLOCK)
		INNER JOIN tblTransId p
		ON t.TransId = p.TransId;

	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[FPS_Sub_GetTransInfo] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[FPS_Sub_Rpt_GetLatestIPsByTimeRange]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[FPS_Sub_Rpt_GetLatestIPsByTimeRange]
						@UserName		VARCHAR(30)
					,	@FromDate		DATETIME		= NULL
					,	@ToDate			DATETIME		= NULL
AS
/*
	Created:	20161013@bobby
	Task:		NAP - Risk Control
	DB:			FPS_SUB_*
  
	Revisions: 
		- 20171002@Billy:	Change from select 10 distinct latest IPs to select 1 latest IP - [Redmine: #84105]

*/
BEGIN
	SET NOCOUNT ON;

	DECLARE	@accountId		INT;

	SELECT	@accountId = a.AccountID
	FROM	dbo.Accounts AS a WITH (NOLOCK)
	WHERE	a.UserName	= @UserName
		OR	a.UserName2	= @UserName;

	SELECT	TOP(1)
			[IP]			= t.IP
		,	[TransDate]		= t.TransDate
	FROM	dbo.Transactions AS t WITH (NOLOCK)
	WHERE	t.AccountID = @accountId
		AND	t.IP IS NOT NULL
	ORDER BY t.TransDate DESC;

	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[FPS_Sub_Rpt_GetLatestIPsByTimeRange] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountByUserName]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetAccountByUserName]
						@username			NVARCHAR(50)
AS
/*
	Creator:	20130131@Tom
	Task:		Retrieve Account by UserName - [Redmine: #000000]
	Database:	FPSLICALL.FPS_SUB_FPS

	Revisions:
		- 20130131@Tom:		Initial - [Redmine: #000000]
		- 20160916@Thai:	Performance enhancement - [Redmine: #000000]
		- 20161213@Harvey:	Adding coloumn SubscriberId - [Redmine: #000000]
		- 20190301@Thai:	Remove checking deposit licensees when searching username2 - [Redmine: #109598]
 		- 20190730@Billy:	Refactor & Performance Tuning - [Redmine: #117671]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET NOCOUNT ON;

	WITH acc AS (
		SELECT	acc.AccountID
			,	acc.UserName
			,	acc.UserName2
			,	acc.SubscriberId
		FROM	dbo.Accounts AS acc WITH (NOLOCK)
		WHERE	acc.UserName = @username
		UNION ALL
		SELECT	acc.AccountID
			,	acc.UserName
			,	acc.UserName2
			,	acc.SubscriberId
		FROM	dbo.Accounts AS acc WITH (NOLOCK)
		WHERE	acc.UserName2 = @username
	)
	SELECT	TOP(1)
			acc.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID
	FROM	acc WITH (NOLOCK);
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountByUserName_xpre]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetAccountByUserName_xpre]
						@username			NVARCHAR(50)
AS
/*
	Creator:	20130131@Tom
	Task:		Retrieve Account by UserName - [Redmine: #000000]
	Database:	FPSLICALL.FPS_SUB_FPS

	Revisions:
		- 20130131@Tom:		Initial - [Redmine: #000000]
		- 20160916@Thai:	Performance enhancement - [Redmine: #000000]
		- 20161213@Harvey:	Adding coloumn SubscriberId - [Redmine: #000000]
		- 20190301@Thai:	Remove checking deposit licensees when searching username2 - [Redmine: #109598]
 		- 20190730@Billy:	Refactor & Performance Tuning - [Redmine: #117671]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET NOCOUNT ON;

	WITH acc AS (
		SELECT	acc.AccountID
			,	acc.UserName
			,	acc.UserName2
			,	acc.SubscriberId
		FROM	dbo.Accounts AS acc WITH (NOLOCK)
		WHERE	acc.UserName = @username
		UNION ALL
		SELECT	acc.AccountID
			,	acc.UserName
			,	acc.UserName2
			,	acc.SubscriberId
		FROM	dbo.Accounts AS acc WITH (NOLOCK)
		WHERE	acc.UserName2 = @username
	)
	SELECT	TOP(1)
			acc.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID
	FROM	acc WITH (NOLOCK);
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName_xpre] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName_xpre] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName_xpre] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountByUserName_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAccountByUserName_xtest] @username NVARCHAR(50)
AS
/*
Created: 20130131@Tom
Task: Retrieve Account by UserName
  DB: FPS_SUB_2.
  
Revisions:
    - 20160916@Thai: Performance enhancement
    - 20161213@Harvey: Adding coloumn SubscriberId
	- 20190301@Thai: Remove checking deposit licensees when searching username2 (#109598)
    
Param's Explanation:

*/
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1 ac.AccountID
        ,ac.UserName
        ,ac.UserName2
        ,ac.SubscriberId
    FROM dbo.Accounts AS ac WITH (NOLOCK)
    WHERE ac.UserName = @username

	UNION

	  SELECT TOP 1 ac.AccountID
        ,ac.UserName
        ,ac.UserName2
        ,ac.SubscriberId
    FROM dbo.Accounts AS ac WITH (NOLOCK)
    WHERE ac.UserName2 = @username
        
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserName_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountByUserNameList]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAccountByUserNameList]
	@usernames varchar(max),
	@subscriber varchar(50),
	@itemType tinyint = 0
AS
/***
	Created: 20133101@kan.nguyen
	Task: get account information by a list of usernames
	  DB: FPS_SUB.
	  
	Revisions:
	 - 20130318@kan.nguyen: customize temp table 
	 - 20130703@bobby: add prefix rmt
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	CREATE TABLE #tempData (AccountID INT, Username NVARCHAR(50), Username2 NVARCHAR(50), SubscriberID int);
	CREATE CLUSTERED INDEX IDX_C_tblAccount_AccountID ON #tempData(AccountID);

	-- Account is replaced by #tempData
	INSERT INTO #tempData
	SELECT AccountID, Username, Username2, SubscriberID
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE Username IN (SELECT * FROM dbo.SplitString(@usernames, ','));

	-- account info
	SELECT a.AccountID, a.UserName, a.UserName2, s.SubscriberID, s.SubscriberName
	FROM #tempData a WITH (NOLOCK)
		INNER JOIN rmt.Subscribers s ON (a.SubscriberID = s.SubscriberID)
	WHERE s.SubscriberName = @subscriber;
	
	-- evidence
	SELECT s.ItemID, m.EviID, m.EviGroupID, m.EviCode, m.SubscriberID, s.LevelID
	FROM rmt.EvidenceMaster m WITH (NOLOCK)
		INNER JOIN rmt.EvidenceSub s WITH (NOLOCK) ON (m.EviID = s.EviID)
		INNER JOIN #tempData tblTemp WITH (NOLOCK) ON (tblTemp.AccountID = s.ItemID)
	WHERE s.ItemType = @itemType;

	-- drop temp table
	DROP TABLE #tempData;
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserNameList] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserNameList] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserNameList] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountByUserNameList_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAccountByUserNameList_xtest]
	@usernames varchar(max),
	@subscriber varchar(50),
	@itemType tinyint = 0
AS
/***
	Created: 20133101@kan.nguyen
	Task: get account information by a list of usernames
	  DB: FPS_SUB.
	  
	Revisions:
	 - 20130318@kan.nguyen: customize temp table 
	 - 20130703@bobby: add prefix rmt
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON

	CREATE TABLE #tempData (AccountID INT, Username NVARCHAR(50), Username2 NVARCHAR(50), SubscriberID int)
	CREATE CLUSTERED INDEX IDX_C_tblAccount_AccountID ON #tempData(AccountID)

	-- Account is replaced by #tempData
	INSERT INTO #tempData
	SELECT AccountID, Username, Username2, SubscriberID
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE Username IN (SELECT * FROM dbo.SplitString(@usernames, ','))

	-- account info
	SELECT a.AccountID, a.UserName, a.UserName2, s.SubscriberID, s.SubscriberName
	FROM #tempData a WITH (NOLOCK)
		INNER JOIN rmt.Subscribers s ON (a.SubscriberID = s.SubscriberID)
	WHERE s.SubscriberName = @subscriber
	
	-- evidence
	SELECT s.ItemID, m.EviID, m.EviGroupID, m.EviCode, m.SubscriberID, s.LevelID
	FROM rmt.EvidenceMaster m WITH (NOLOCK)
		INNER JOIN rmt.EvidenceSub s WITH (NOLOCK) ON (m.EviID = s.EviID)
		INNER JOIN #tempData tblTemp WITH (NOLOCK) ON (tblTemp.AccountID = s.ItemID)
	WHERE s.ItemType = @itemType

	-- drop temp table
	DROP TABLE #tempData
END














GO
GRANT EXECUTE ON [dbo].[GetAccountByUserNameList_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserNameList_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountByUserNameList_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountsByKeywordAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAccountsByKeywordAndRangeTime]
	@subscriberId int,
	@keyword nvarchar(50), 
	@fromDate datetime = NULL,
	@toDate datetime = NULL,
	@page int = 1,
	@pageSize int = 10,
	@total int = 0 OUTPUT
AS

/*
Created: 20130125@Bobby
Task: Retrieve all transaction by account and range of time
  DB: FPS_SUB
  
Revisions:
    - 20130703@bobby: add prefix rmt
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @Begin		DATETIME= GETDATE();
	DECLARE @End		DATETIME;
	DECLARE @Duration	INT;

	-- search account
	CREATE TABLE #tmp_AccID (AccountID int, UserName nvarchar(50), UserName2 nvarchar(50));
	INSERT INTO #tmp_AccID (AccountID, UserName, UserName2)
	SELECT DISTINCT acc.AccountID,
					acc.UserName,
					acc.UserName2
	FROM   dbo.Accounts AS acc WITH (NOLOCK)
		   INNER JOIN
		   dbo.Transactions AS trans WITH (NOLOCK)
		   ON trans.AccountID = acc.AccountID
	WHERE  (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
		   AND (acc.UserName LIKE @keyword + '%'
				OR (acc.UserName2 IS NOT NULL
					AND acc.UserName2 LIKE @keyword + '%'))
		   AND DeviceID IS NOT NULL;

	SELECT @total = COUNT(1) FROM #tmp_AccID;

	IF(@total>0)
	BEGIN
		DECLARE @skip int = (@page-1) * @pageSize;
		DECLARE @limit int = @skip + @pageSize;
		IF(@page > 1)
			SET @skip += 1;
	
		DECLARE @SubscriberName NVARCHAR(50);
		SELECT TOP 1 @SubscriberName = SubscriberName 
		FROM rmt.Subscribers WITH(NOLOCK)
		WHERE SubscriberID = @subscriberId;
	
		SELECT * FROM (
			SELECT ROW_NUMBER() Over (Order By acc.UserName) As RowID,
					acc.AccountID,
					acc.UserName,
					acc.UserName2,
					@subscriberId SubscriberID, 
					@SubscriberName SubscriberName
				FROM #tmp_AccID AS acc 
			)tblA
			WHERE RowID BETWEEN @skip AND @limit
			ORDER BY RowID;
	END;

	SET @End = GETDATE();
	SET @Duration = DATEDIFF(millisecond,@Begin,@End);

	DROP TABLE #tmp_AccID;
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountsByKeywordAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountsByKeywordAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountsByKeywordAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountsByKeywordAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAccountsByKeywordAndRangeTime_xtest]
	@subscriberId int,
	@keyword nvarchar(50), 
	@fromDate datetime = NULL,
	@toDate datetime = NULL,
	@page int = 1,
	@pageSize int = 10,
	@total int = 0 OUTPUT
AS

/*
Created: 20130125@Bobby
Task: Retrieve all transactio by account and range of time
  DB: FPS_SUB
  
Revisions:
    - 20130703@bobby: add prefix rmt
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @Begin		DATETIME= GETDATE()
	DECLARE @End		DATETIME
	DECLARE @Duration	INT

	-- search account
	CREATE TABLE #tmp_AccID (AccountID int, UserName nvarchar(50), UserName2 nvarchar(50))
	INSERT INTO #tmp_AccID (AccountID, UserName, UserName2)
	SELECT DISTINCT acc.AccountID,
					acc.UserName,
					acc.UserName2
	FROM   dbo.Accounts AS acc WITH (NOLOCK)
		   INNER JOIN
		   dbo.Transactions AS trans WITH (NOLOCK)
		   ON trans.AccountID = acc.AccountID
	WHERE  (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
		   AND (acc.UserName LIKE @keyword + '%'
				OR (acc.UserName2 IS NOT NULL
					AND acc.UserName2 LIKE @keyword + '%'))
		   AND DeviceID IS NOT NULL;

	SELECT @total = COUNT(1) FROM #tmp_AccID

	IF(@total>0)
	BEGIN
		DECLARE @skip int = (@page-1) * @pageSize
		DECLARE @limit int = @skip + @pageSize;
		IF(@page > 1)
			SET @skip += 1
	
		DECLARE @SubscriberName NVARCHAR(50)
		SELECT TOP 1 @SubscriberName = SubscriberName 
		FROM rmt.Subscribers WITH(NOLOCK)
		WHERE SubscriberID = @subscriberId
	
		SELECT * FROM (
			SELECT ROW_NUMBER() Over (Order By acc.UserName) As RowID,
					acc.AccountID,
					acc.UserName,
					acc.UserName2,
					@subscriberId SubscriberID, 
					@SubscriberName SubscriberName
				FROM #tmp_AccID AS acc 
			)tblA
			WHERE RowID BETWEEN @skip AND @limit
			ORDER BY RowID
	END

	SET @End = GETDATE()
	SET @Duration = DATEDIFF(millisecond,@Begin,@End)

	DROP TABLE #tmp_AccID
END














GO
GRANT EXECUTE ON [dbo].[GetAccountsByKeywordAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountsByKeywordAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountsByKeywordAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountWithUsername2IsNull]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAccountWithUsername2IsNull]
	@accountID int,
	@limit int
AS
/*
	Created:20130225@kan.nguyen
	Task: get Account with its username2 is null or empty
	DB: FPS_SUB

	Revisions:
		- 20130703@bobby: add prefix rmt
		- 20140604@bobby: add constraint active member/player
	Param's Explanation:
*/
BEGIN
	DECLARE @toDate DATETIME = GETDATE()
		, @fromDate DATETIME;

	SET @fromDate = CAST(DATEADD(DD, -1, @toDate) AS DATE);

	WITH accActive AS
	(
		SELECT AccountId
		FROM Transactions t WITH(NOLOCK)
		WHERE TransDate >= @fromDate AND TransDate <= @toDate
			AND AccountID > @accountID
		GROUP BY AccountID
	)
	SELECT TOP (@limit) a.AccountID, UserName, UserName2
	FROM dbo.Accounts a WITH (NOLOCK)
		INNER JOIN accActive t
		ON a.AccountID = t.AccountID 
	WHERE a.AccountID > @accountID AND (UserName2 IS NULL OR UserName2 = '')
	ORDER BY AccountID;
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNull] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNull] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNull] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountWithUsername2IsNull_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.GetAccountWithUsername2IsNull_xtest    Script Date: 7/25/2018 9:29:36 AM ******/
CREATE PROCEDURE [dbo].[GetAccountWithUsername2IsNull_xtest]	
	@accountID int,
	@limit int
AS
/*
	Created:20130225@kan.nguyen
	Task: get Account with its username2 is null or empty
	DB: FPS_SUB

	Revisions:
		- 20130703@bobby: add prefix rmt
		- 20140604@bobby: add constraint active member/player
		- 20180713@thai: get accounts have username2 is null within latest 6 months, circularly (#98135)
	Param's Explanation:
		exec [GetAccountWithUsername2IsNull_xtest] 1, 100
*/
BEGIN
	
	DECLARE @totalAccNULL INT
	DECLARE @totalAccUpdate INT

	CREATE TABLE #accIsNull 
	(
		AccountID INT,
		UserName NVARCHAR(50),
		UserName2 NVARCHAR(50)
	)
	
	CREATE TABLE #accToUpdate
	(				
		AccountID INT,
		UserName NVARCHAR(50),
		UserName2 NVARCHAR(50)
	);
		
	WITH accActive AS
	(
		SELECT AccountId
		FROM Transactions t WITH(NOLOCK)
		WHERE TransDate >= DATEADD(MONTH, -6, GETDATE()) 
		GROUP BY AccountID
	)

	INSERT INTO #accIsNull (AccountID, UserName, UserName2)
	SELECT  acc.AccountID,
			UserName,
			UserName2	
	FROM dbo.Accounts acc WITH (NOLOCK)		
	INNER JOIN accActive t
		ON acc.AccountID = t.AccountID 
	WHERE UserName2 IS NULL OR UserName2 = ''
	ORDER BY AccountID

	INSERT INTO #accToUpdate (AccountID, UserName, UserName2)
	SELECT TOP (@limit) 
			AccountID,
			UserName,
			UserName2	
	FROM #accIsNull		
	WHERE AccountID > @accountID
	ORDER BY AccountID

	SELECT @totalAccNULL = COUNT(1) FROM #accIsNull
	SELECT @totalAccUpdate = COUNT(1) FROM #accToUpdate

	IF (@totalAccNULL > @limit AND @totalAccUpdate < @limit)
	BEGIN
		INSERT INTO #accToUpdate (AccountID, UserName, UserName2)
		SELECT TOP (@limit - @totalAccUpdate) 
				AccountID,
				UserName,
				UserName2	
		FROM #accIsNull			
		ORDER BY AccountID	
	END
		
	SELECT  AccountID,
			UserName,
			UserName2	
	FROM #accToUpdate	

	DROP TABLE #accIsNull	
	DROP TABLE #accToUpdate	
END
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNull_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNull_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNull_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountWithUsername2IsNullAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAccountWithUsername2IsNullAndRangeTime]
	@accountID int,
	@limit int,
	@fromDate datetime = NULL,
	@toDate datetime = NULL
AS
/*
	Created:20170602@thai.tran
	Task: get Account with its username2 is null or empty within fromDate to toDate
	DB: FPS_SUB

	Revisions:
		
	Param's Explanation:
*/
BEGIN;
	SET NOCOUNT ON;

	WITH accActive AS
	(
		SELECT AccountId
		FROM Transactions t WITH(NOLOCK)
		WHERE TransDate >= @fromDate AND TransDate <= @toDate
			AND AccountID > @accountID
		GROUP BY AccountID
	)
	SELECT TOP (@limit) a.AccountID, UserName, UserName2
	FROM dbo.Accounts a WITH (NOLOCK)
		INNER JOIN accActive t
		ON a.AccountID = t.AccountID 
	WHERE a.AccountID > @accountID AND (UserName2 IS NULL OR UserName2 = '')
	ORDER BY AccountID;
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNullAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNullAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNullAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountWithUsername2IsNullFull]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAccountWithUsername2IsNullFull]
	@accountID int,
	@limit int
AS
/*
	Created:20150908@jacob.phan
	Task: get Account with its username2 is null or empty
	DB: FPS_SUB

	Revisions:	
	Param's Explanation:
				EXEC [GetAccountWithUsername2IsNullFull] 0, 100
*/
BEGIN
	SET NOCOUNT ON;
	
	WITH accActive AS
	(
		SELECT AccountId
		FROM Transactions t WITH(NOLOCK)
		WHERE AccountID > @accountID
		GROUP BY AccountID
	)
	SELECT TOP (@limit) a.AccountID, UserName, UserName2
	FROM dbo.Accounts a WITH (NOLOCK)
		INNER JOIN accActive t
		ON a.AccountID = t.AccountID 
	WHERE a.AccountID > @accountID AND (UserName2 IS NULL OR UserName2 = '')
	ORDER BY AccountID;
END;
GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNullFull] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAccountWithUsername2IsNullFull_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAccountWithUsername2IsNullFull_xtest]
	@accountID int,
	@limit int
AS
/*
	Created:20150908@jacob.phan
	Task: get Account with its username2 is null or empty
	DB: FPS_SUB

	Revisions:	
	Param's Explanation:
		EXEC [GetAccountWithUsername2IsNullFull_xtest] 0, 100
*/
BEGIN
	SET NOCOUNT ON;
	
	;WITH accActive AS
	(
		SELECT AccountId
		FROM Transactions t WITH(NOLOCK)
		WHERE AccountID > @accountID
		GROUP BY AccountID
	)
	SELECT TOP (@limit) a.AccountID, UserName, UserName2
	FROM dbo.Accounts a WITH (NOLOCK)
		INNER JOIN accActive t
		ON a.AccountID = t.AccountID 
	WHERE a.AccountID > @accountID AND (UserName2 IS NULL OR UserName2 = '')
	ORDER BY AccountID
END














GO
GRANT EXECUTE ON [dbo].[GetAccountWithUsername2IsNullFull_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociatedAccountByAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[GetAssociatedAccountByAccount_xtest] 
    @userName NVARCHAR(50)
    ,@total INT = 0 OUTPUT
AS
/***
    Created: 20170125@Harvey
    Task: get associated accounts  by account
      DB: FPS_SUB
      
    Revisions:
    
    Param's Explanation:
***/
BEGIN
    SET NOCOUNT ON

    DECLARE @accountId INT = 0
        ,@subscriberId INT;

    SELECT TOP 1 @accountId = AccountId
        ,@subscriberId = SubscriberID
    FROM dbo.Accounts(NOLOCK)
    WHERE UserName = @userName

    IF (ISNULL(@accountId, 0) = 0) RETURN;

    SELECT DeviceID
    INTO #deviceLv1
    FROM dbo.Associations(NOLOCK)
    WHERE AccountID = @accountId

    SELECT *
    INTO #tmpAssociatedAccount
    FROM (
        SELECT AccountID
            ,MAX(LastAccessedDate) LastAccessedDate
        FROM dbo.Associations(NOLOCK)
        WHERE DeviceID IN (
                SELECT *
                FROM #deviceLv1(NOLOCK)
                )
            AND AccountID <> @accountId
        GROUP BY AccountID
        ) tmp

    SELECT AccountID
        ,MAX(LastAccessedDate) LastAccessedDate
        ,[Level] = 2
    INTO #accL2
    FROM #tmpAssociatedAccount WITH (NOLOCK)
    GROUP BY AccountID
    ORDER BY LastAccessedDate DESC

    DROP TABLE #tmpAssociatedAccount

    -- implement paging
    CREATE TABLE #tblPaging (
        AccountID INT
        ,UserName NVARCHAR(50)
        ,UserName2 NVARCHAR(50)
        ,SubscriberId INT
        ,LastAccessedDate DATETIME
        ,[Level] INT
        );

    INSERT INTO #tblPaging
    SELECT AccountID
        ,UserName
        ,UserName2
        ,SubscriberId
        ,LastAccessedDate
        ,[Level]
    FROM (
        SELECT accL2.AccountID
            ,acc.UserName
            ,acc.UserName2
            ,acc.SubscriberId
            ,accL2.LastAccessedDate
            ,accL2.[Level]
        FROM (
            SELECT l2.AccountID
                ,l2.LastAccessedDate
                ,l2.[Level]
            FROM #accL2(NOLOCK) l2
            UNION
            (
                SELECT ass.AccountID
                    ,MAX(LastAccessedDate) LastAccessedDate
                    ,0 AS [Level]
                FROM dbo.Associations ass(NOLOCK)
                WHERE AccountID = @accountId
                GROUP BY ass.AccountID -- central point
                )
            ) accL2
            INNER JOIN [dbo].[Accounts] acc WITH (NOLOCK) ON accL2.AccountID = acc.AccountID
        ) tmp

    DROP TABLE #accL2;

    -- account info
    SELECT acc.AccountID
        ,acc.UserName
        ,acc.UserName2
        ,acc.SubscriberID
        ,sub.SubscriberName
    FROM #tblPaging acc(NOLOCK)
        INNER JOIN rmt.Subscribers sub(NOLOCK) ON (acc.SubscriberId = sub.SubscriberID)
    ORDER BY acc.[Level]
        ,acc.LastAccessedDate DESC

    DROP TABLE #tblPaging;
    DROP TABLE #deviceLv1
END














GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountByAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociatedAccountByDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--CREATE / ALTER
CREATE PROCEDURE [dbo].[GetAssociatedAccountByDevice_xtest] 
    @deviceNo NVARCHAR(50)
    ,@total INT = 0 OUTPUT
AS
/***
    Created: 20170125@Harvey
    Task: get associated accounts  by device
      DB: FPS_SUB
      
    Revisions:
    
    Param's Explanation:
***/
BEGIN
    SET NOCOUNT ON

    DECLARE @deviceId INT
        ,@subscriberId INT

    SELECT TOP 1 @subscriberId = subscriberId
    FROM dbo.Accounts WITH (NOLOCK)
    WHERE AccountID > 0

    EXEC [dbo].[sp_DeviceInfoByNo] @deviceNo = @deviceNo
        ,@subscriberId = @subscriberId
        ,@deviceId = @deviceId OUTPUT

    IF (ISNULL(@deviceId, 0) = 0) RETURN;

    SELECT @total = COUNT(DISTINCT AccountId)
    FROM dbo.Associations WITH (NOLOCK)
    WHERE DeviceID = @deviceId

    IF (ISNULL(@total, 0) > 0)
    BEGIN
        -- implement paging
        CREATE TABLE #tblPaging (
            AccountID INT
            ,UserName NVARCHAR(50)
            ,UserName2 NVARCHAR(50)
            ,SubscriberId INT
            );

        INSERT INTO #tblPaging
        SELECT AccountID
            ,UserName
            ,UserName2
            ,SubscriberId
        FROM (
            SELECT ass.AccountID
                ,acc.UserName
                ,acc.UserName2
                ,acc.SubscriberId
                ,ROW_NUMBER() OVER (
                    ORDER BY LastAccessedDate DESC
                    ) AS RowNum
            FROM [dbo].[Associations] ass(NOLOCK)
                INNER JOIN [dbo].[Accounts] acc(NOLOCK) ON ass.AccountID = acc.AccountID
            WHERE ass.DeviceID = @deviceId
            ) tmp

        -- account info
        SELECT acc.AccountID
            ,acc.UserName
            ,acc.UserName2
            ,acc.SubscriberID
            ,sub.SubscriberName
        FROM #tblPaging acc(NOLOCK)
            INNER JOIN rmt.Subscribers sub ON (acc.SubscriberId = sub.SubscriberID)

        DROP TABLE #tblPaging
    END
END















GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountByDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime]
	@subscriberId int,
	@deviceNo nvarchar(50), 
	@fromDate datetime = NULL,
	@toDate datetime = NULL
AS
/*
Created:20130120@Bobby
Task: Get list UserName,SubscriberID by deviceNo and datetime
DB: FPS_SUB
  
Revisions:
    - 20130703@bobby: add prefix rmt
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceID int;

		EXEC dbo.sp_DeviceInfoByNo
		@deviceNo=@deviceNo, 
		@deviceId=@deviceID output;


	IF(@deviceID > 0) 
	BEGIN
		SELECT DISTINCT acc.AccountID, acc.UserName, acc.UserName2, sub.SubscriberID, sub.SubscriberName 
		FROM dbo.Transactions (NOLOCK) AS trans 
			INNER JOIN dbo.Accounts AS acc (NOLOCK) ON trans.AccountID = acc.AccountID
			INNER JOIN rmt.Subscribers AS sub (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.DeviceID = @deviceID;

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime_xtest]
	@subscriberId int,
	@deviceNo nvarchar(50), 
	@fromDate datetime = NULL,
	@toDate datetime = NULL
AS
/*
Created:20130120@Bobby
Task: Get list UserName,SubscriberID by deviceNo and datetime
DB: FPS_SUB
  
Revisions:
    - 20130703@bobby: add prefix rmt
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON

	DECLARE @deviceID int

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest]
		@deviceNo=@deviceNo, 
		@deviceId=@deviceID output


	IF(@deviceID > 0) 
	BEGIN
		SELECT DISTINCT acc.AccountID, acc.UserName, acc.UserName2, sub.SubscriberID, sub.SubscriberName 
		FROM dbo.Transactions (NOLOCK) AS trans 
			INNER JOIN dbo.Accounts AS acc (NOLOCK) ON trans.AccountID = acc.AccountID
			INNER JOIN rmt.Subscribers AS sub (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.DeviceID = @deviceID

		RETURN
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedAccountsBySubscriberAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociatedDevicesByAccountAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociatedDevicesByAccountAndRangeTime]
	@subscriberId int,
	@username nvarchar(50), 
	@username2 nvarchar(50) = NULL, 
	@fromDate datetime,
	@toDate datetime
AS
/***
	Created: 
	Task: 
	  DB: FPS_SUB.
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @accountID int = 0;
	
	SELECT TOP 1 @accountID = acc.AccountID
		,@subscriberId= acc.SubscriberID
	FROM dbo.Accounts  acc WITH (NOLOCK) 
	WHERE acc.UserName = @username 
		OR acc.UserName2=@username2; 

	
	IF(@accountID > 0 AND @subscriberId>0)
	BEGIN
		
		DECLARE @DeviceIds NVARCHAR(MAX);
		CREATE TABLE #tblDevices(DeviceId int);

		INSERT INTO #tblDevices(DeviceId)
		SELECT DISTINCT trans.DeviceID
		FROM dbo.Transactions trans WITH (NOLOCK) 
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.AccountID = @accountID
			AND trans.DeviceID > 0;

		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tblDevices;

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			OSName   NVARCHAR(50)
		);

		INSERT #spResult EXEC dbo.sp_DeviceInfoBylistDeviceID 
			@subscriberId=@subscriberId, @DeviceIds=@DeviceIds;

		SELECT tmp.DeviceID, ISNULL(dev.deviceNo, 'N/A') DeviceNo
		FROM #tblDevices tmp 
		LEFT JOIN #spResult AS dev ON tmp.DeviceId = dev.DeviceId;

		DROP TABLE #tblDevices;
		DROP TABLE #spResult;
		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociatedDevicesByAccountAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedDevicesByAccountAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedDevicesByAccountAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociatedDevicesByAccountAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociatedDevicesByAccountAndRangeTime_xtest]
	@subscriberId int,
	@username nvarchar(50), 
	@username2 nvarchar(50) = NULL, 
	@fromDate datetime,
	@toDate datetime
AS
/***
	Created: 
	Task: 
	  DB: FPS_SUB.
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON
	
	DECLARE @accountID int = 0
	
	SELECT TOP 1 @accountID = acc.AccountID
		,@subscriberId= acc.SubscriberID
	FROM [dbo].[Accounts]  acc WITH (NOLOCK) 
	WHERE acc.UserName = @username 
		OR acc.UserName2=@username2 

	
	IF(@accountID > 0 AND @subscriberId>0)
	BEGIN
		
		DECLARE @DeviceIds VARCHAR(500)
		CREATE TABLE #tblDevices(DeviceId int)

		INSERT INTO #tblDevices(DeviceId)
		SELECT DISTINCT trans.DeviceID
		FROM dbo.Transactions trans WITH (NOLOCK) 
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.AccountID = @accountID
			AND trans.DeviceID > 0

		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tblDevices

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			OSName   NVARCHAR(50)
		);

		INSERT #spResult                                                                EXEC [dbo].[sp_DeviceInfoBylistDeviceID_xtest] @DeviceIds=@DeviceIds, @subscriberId=@subscriberId

		IF(LEN(@DeviceIds) > 1)		
		BEGIN		

			SELECT tmp.DeviceID, dev.deviceNo
			FROM #tblDevices tmp 
					LEFT JOIN #spResult AS dev 
			ON tmp.DeviceId = dev.DeviceId
			
		END
		DROP TABLE #tblDevices
		DROP TABLE #spResult
		RETURN
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociatedDevicesByAccountAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedDevicesByAccountAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociatedDevicesByAccountAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByAccount]
	@username varchar(50),
	@limit int = 500
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by Account's name
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby:add remote server
	Param's Explanation:
***/
BEGIN
	IF (@limit IS NULL OR  @limit = 0)
		SET @limit=500;
	
	DECLARE @accountId int, @subscrierId int;

	SELECT TOP(1) 
		@accountId=acc.AccountID
		, @subscrierId=acc.SubscriberID 
	FROM dbo.Accounts acc WITH (NOLOCK)
	WHERE acc.UserName=@username;

	IF(@accountId > 0 AND @subscrierId > 0)
	BEGIN

		CREATE TABLE #tblAssociations(Ass_ID int, AccountId int, DeviceId bigint, DeviceNo nvarchar(50), ExceptionId int, CreatedDate datetime, LastAccessedDate datetime, SubscriberID int);
		INSERT INTO #tblAssociations(Ass_ID, AccountId, DeviceId, ExceptionId, CreatedDate, LastAccessedDate, SubscriberID)
		SELECT TOP(@limit) 
			ass.Ass_ID, ass.AccountID,ass.DeviceID, ISNULL(ass.ExceptionID, 0) ExceptionID, ass.CreatedDate, ass.LastAccessedDate, @subscrierId
		FROM dbo.Associations ass WITH (NOLOCK)
		WHERE ass.AccountID = @accountId;

		-- update device no
		DECLARE @sqlUpdate NVARCHAR (MAX);
		CREATE TABLE #deviceIdTmp(DeviceId INT);

		INSERT INTO #deviceIdTmp(DeviceId)
		SELECT DISTINCT DeviceID FROM #tblAssociations;	

		DECLARE @DeviceIds VARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #deviceIdTmp;
		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			OSName   NVARCHAR(50)
		);

		-- Get the result set of the SP into the temp table.
		INSERT #spResult 
				EXEC dbo.sp_DeviceInfoBylistDeviceID @DeviceIds=@DeviceIds, @subscriberId=@subscrierId;
		
		SELECT ass.Ass_ID, ass.AccountId,ass.DeviceId, tblDevice.DeviceNo, ass.ExceptionId, ass.CreatedDate, ass.LastAccessedDate,ass.SubscriberID, acc.UserName, acc.UserName2, sub.SubscriberName, ISNULL(e.StatusID, 0) StatusID
		FROM #tblAssociations ass WITH (NOLOCK) 
		LEFT JOIN #spResult AS tblDevice ON ass.DeviceId = tblDevice.DeviceId
			INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON (ass.AccountId=acc.AccountID)
			INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON (ass.SubscriberID = sub.SubscriberID)
			LEFT JOIN rmt.Exceptions e (NOLOCK) ON (ass.ExceptionID = e.ExceptionID)
			
		WHERE tblDevice.DeviceNo IS NOT NULL
		ORDER BY ass.Ass_ID;

		DROP TABLE #deviceIdTmp;
		DROP TABLE #tblAssociations;
		DROP TABLE #spResult;
	END;
	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccount] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccount] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccount] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByAccount_xtest]
	@username varchar(50),
	@limit int = 500
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by Account's name
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby:add remote server
	Param's Explanation:
***/
BEGIN
	IF (@limit IS NULL OR  @limit = 0)
		SET @limit=500
	
	DECLARE @accountId int, @subscrierId int

	SELECT TOP(1) 
		@accountId=acc.AccountID
		, @subscrierId=acc.SubscriberID 
	FROM dbo.Accounts acc WITH (NOLOCK)
	WHERE acc.UserName=@username

	IF(@accountId > 0 AND @subscrierId > 0)
	BEGIN

		CREATE TABLE #tblAssociations(Ass_ID int, AccountId int, DeviceId bigint, DeviceNo nvarchar(50), ExceptionId int, CreatedDate datetime, LastAccessedDate datetime, SubscriberID int)
		INSERT INTO #tblAssociations(Ass_ID, AccountId, DeviceId, ExceptionId, CreatedDate, LastAccessedDate, SubscriberID)
		SELECT TOP(@limit) 
			ass.Ass_ID, ass.AccountID,ass.DeviceID, ISNULL(ass.ExceptionID, 0) ExceptionID, ass.CreatedDate, ass.LastAccessedDate, @subscrierId
		FROM dbo.Associations ass WITH (NOLOCK)
		WHERE ass.AccountID = @accountId

		-- update device no
		DECLARE @sqlUpdate NVARCHAR (MAX)
		CREATE TABLE #deviceIdTmp(DeviceId INT);

		INSERT INTO #deviceIdTmp(DeviceId)
		SELECT DISTINCT DeviceID FROM #tblAssociations	

		DECLARE @DeviceIds VARCHAR(1000)
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #deviceIdTmp
		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			OSName   NVARCHAR(50)
		);

		-- Get the result set of the SP into the temp table.
		INSERT #spResult                                                                EXEC [dbo].[sp_DeviceInfoBylistDeviceID_xtest] @DeviceIds=@DeviceIds, @subscriberId=@subscrierId
		
		SELECT ass.Ass_ID, ass.AccountId,ass.DeviceId, tblDevice.DeviceNo, ass.ExceptionId, ass.CreatedDate, ass.LastAccessedDate,ass.SubscriberID, acc.UserName, acc.UserName2, sub.SubscriberName, ISNULL(e.StatusID, 0) StatusID
		FROM #tblAssociations ass WITH (NOLOCK) 
		LEFT JOIN #spResult AS tblDevice ON ass.DeviceId = tblDevice.DeviceId
			INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON (ass.AccountId=acc.AccountID)
			INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON (ass.SubscriberID = sub.SubscriberID)
			LEFT JOIN rmt.Exceptions e (NOLOCK) ON (ass.ExceptionID = e.ExceptionID)
			
		WHERE tblDevice.DeviceNo IS NOT NULL
		ORDER BY ass.Ass_ID

		DROP TABLE #deviceIdTmp
		DROP TABLE #tblAssociations
		DROP TABLE #spResult
	END
	RETURN
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccount_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccount_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccountDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByAccountDevice]
	@username nvarchar(50),
	@deviceNo nvarchar(50)
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by device No.
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby:add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	DECLARE @accountId int, @subscrierId int, @deviceId bigint;

	SELECT TOP(1) 
		@accountId=acc.AccountID
		, @subscrierId=acc.SubscriberID 
	FROM dbo.Accounts acc WITH (NOLOCK)
	WHERE acc.UserName=@username;

	IF(@accountId > 0 AND @subscrierId > 0)
	BEGIN
		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscrierId, 
		@deviceId=@deviceId output;

		IF(@deviceId > 0)
		BEGIN
			SELECT TOP 1 s.*, @username AS UserName, @deviceNo AS DeviceNo, u.SubscriberID, u.SubscriberName, e.StatusID
			FROM dbo.Associations s WITH (NOLOCK)
				INNER JOIN dbo.Accounts a WITH (NOLOCK) ON s.AccountID=a.AccountID
				INNER JOIN rmt.Subscribers u WITH (NOLOCK) ON (a.SubscriberID = u.SubscriberID)
				LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (e.ExceptionID = s.ExceptionID)
			WHERE s.AccountID = @accountId
				AND s.DeviceID = @deviceId;
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountDevice] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountDevice] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountDevice] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccountDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByAccountDevice_xtest]
	@username nvarchar(50),
	@deviceNo nvarchar(50)
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by device No.
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby:add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON

	DECLARE @accountId int, @subscrierId int, @deviceId bigint

	SELECT TOP(1) 
		@accountId=acc.AccountID
		, @subscrierId=acc.SubscriberID 
	FROM dbo.Accounts acc WITH (NOLOCK)
	WHERE acc.UserName=@username

	IF(@accountId > 0 AND @subscrierId > 0)
	BEGIN
																																																																																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscrierId, 
		@deviceId=@deviceId output

		IF(@deviceId > 0)
		BEGIN
			SELECT TOP 1 s.*, @username AS UserName, @deviceNo AS DeviceNo, u.SubscriberID, u.SubscriberName, e.StatusID
			FROM dbo.Associations s WITH (NOLOCK)
				INNER JOIN dbo.Accounts a WITH (NOLOCK) ON s.AccountID=a.AccountID
				INNER JOIN rmt.Subscribers u WITH (NOLOCK) ON (a.SubscriberID = u.SubscriberID)
				LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (e.ExceptionID = s.ExceptionID)
			WHERE s.AccountID = @accountId
				AND s.DeviceID = @deviceId
		END
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountDevice_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountDevice_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccountIDDeviceID]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByAccountIDDeviceID]
	@accountID int,
	@deviceID int,
	@lastAccessedDate datetime = NULL
AS
/***
	Created: 20130325@kan.nguyen
	Task: get association by ID of account and device
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add prefix dbo & rmt
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	DECLARE @assID int;
	SELECT TOP 1 @assID = Ass_ID FROM dbo.Associations WITH (NOLOCK)
	WHERE AccountID = @accountID AND DeviceID = @deviceID;

	IF (@assID > 0)
	BEGIN
		SELECT TOP 1 ISNULL(s.ExceptionID, 0) ExceptionID, e.StatusID
		FROM dbo.Associations s WITH (NOLOCK)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (e.ExceptionID = s.ExceptionID)
		WHERE s.Ass_ID = @assID;

		-- update TransDate
		IF(@lastAccessedDate IS NOT NULL)
		BEGIN
			UPDATE dbo.Associations WITH (ROWLOCK, UPDLOCK)
				SET LastAccessedDate = @lastAccessedDate 
			WHERE Ass_ID = @assID;
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountIDDeviceID] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccountIDDeviceID_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByAccountIDDeviceID_xtest]
	@accountID int,
	@deviceID int,
	@lastAccessedDate datetime = NULL
AS
/***
	Created: 20130325@kan.nguyen
	Task: get association by ID of account and device
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add prefix dbo & rmt
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON

	DECLARE @assID int
	SELECT TOP 1 @assID = Ass_ID FROM dbo.Associations WITH (NOLOCK)
	WHERE AccountID = @accountID AND DeviceID = @deviceID

	IF (@assID > 0)
	BEGIN
		SELECT TOP 1 ISNULL(s.ExceptionID, 0) ExceptionID, e.StatusID
		FROM dbo.Associations s WITH (NOLOCK)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (e.ExceptionID = s.ExceptionID)
		WHERE s.Ass_ID = @assID

		-- update TransDate
		IF(@lastAccessedDate IS NOT NULL)
		BEGIN
			UPDATE dbo.Associations WITH (ROWLOCK, UPDLOCK)
				SET LastAccessedDate = @lastAccessedDate 
			WHERE Ass_ID = @assID
		END
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountIDDeviceID_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccountList]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByAccountList]
	@usernames varchar(max)
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by a list of Account's username
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	DECLARE @subscriberId int;
	
	CREATE TABLE #tblAssociations(Ass_ID int, AccountId int, DeviceId bigint, DeviceNo nvarchar(50), ExceptionId int, CreatedDate datetime, LastAccessedDate datetime, SubscriberID int);
	INSERT INTO #tblAssociations(Ass_ID, AccountId, DeviceId, ExceptionId, CreatedDate, LastAccessedDate, SubscriberID)
	SELECT ass.Ass_ID
		, ass.AccountID
		, ass.DeviceID, 
		ISNULL(ass.ExceptionID, 0) ExceptionID
		, ass.CreatedDate
		, ass.LastAccessedDate
		, acc.SubscriberID
	FROM dbo.Associations ass WITH (NOLOCK)
		INNER JOIN dbo.Accounts acc ON ass.AccountID=acc.AccountID
	WHERE acc.UserName IN (SELECT * FROM dbo.SplitString(@usernames, ','));

	SELECT TOP 1 @subscriberId= SubscriberID
	FROM #tblAssociations;

	-- update device no
	CREATE TABLE #deviceIdTmp(DeviceId INT);

	INSERT INTO #deviceIdTmp(DeviceId)
	SELECT DISTINCT DeviceID FROM #tblAssociations;	

	DECLARE @DeviceIds VARCHAR(MAX);
	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
	FROM #deviceIdTmp;

	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		OSName   NVARCHAR(50)
	);

	-- Get the result set of the SP into the temp table.
	INSERT #spResult  EXEC dbo.sp_DeviceInfoBylistDeviceID @DeviceIds=@DeviceIds,@subscriberId=@subscriberId;

	SELECT ass.Ass_ID, ass.AccountId, ass.DeviceId, tblDevice.DeviceNo, ass.ExceptionId, ass.CreatedDate, ass.LastAccessedDate, ass.SubscriberID
		, a.UserName
		, a.UserName2
		, sub.SubscriberName
		, ISNULL(e.StatusID, 0) StatusID
	FROM #tblAssociations ass WITH (NOLOCK) 
		INNER JOIN dbo.Accounts a WITH (NOLOCK) ON (ass.AccountID = a.AccountID)
		INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON (ass.SubscriberID = sub.SubscriberID)
		LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (ass.ExceptionID = e.ExceptionID)
		LEFT JOIN #spResult AS tblDevice ON ass.DeviceId = tblDevice.DeviceId
	WHERE tblDevice.DeviceNo IS NOT NULL
	ORDER BY ass.Ass_ID DESC;

	DROP TABLE #tblAssociations;
	DROP TABLE #deviceIdTmp;
	DROP TABLE  #spResult;
	RETURN;

END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountList] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountList] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountList] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByAccountList_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByAccountList_xtest]
	@usernames varchar(max)
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by a list of Account's username
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON

	DECLARE @subscriberId int
	
	CREATE TABLE #tblAssociations(Ass_ID int, AccountId int, DeviceId bigint, DeviceNo nvarchar(50), ExceptionId int, CreatedDate datetime, LastAccessedDate datetime, SubscriberID int)
	INSERT INTO #tblAssociations(Ass_ID, AccountId, DeviceId, ExceptionId, CreatedDate, LastAccessedDate, SubscriberID)
	SELECT ass.Ass_ID
		, ass.AccountID
		, ass.DeviceID, 
		ISNULL(ass.ExceptionID, 0) ExceptionID
		, ass.CreatedDate
		, ass.LastAccessedDate
		, acc.SubscriberID
	FROM dbo.Associations ass WITH (NOLOCK)
		INNER JOIN dbo.Accounts acc ON ass.AccountID=acc.AccountID
	WHERE acc.UserName IN (SELECT * FROM dbo.SplitString(@usernames, ','))

	SELECT TOP 1 @subscriberId= SubscriberID
	FROM #tblAssociations

	-- update device no
	CREATE TABLE #deviceIdTmp(DeviceId INT);

	INSERT INTO #deviceIdTmp(DeviceId)
	SELECT DISTINCT DeviceID FROM #tblAssociations	

	DECLARE @DeviceIds VARCHAR(1000)
	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
	FROM #deviceIdTmp

	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		OSName   NVARCHAR(50)
	);

	-- Get the result set of the SP into the temp table.
	INSERT #spResult                                                                EXEC [dbo].[sp_DeviceInfoBylistDeviceID_xtest] @DeviceIds=@DeviceIds,@subscriberId=@subscriberId

	SELECT ass.Ass_ID, ass.AccountId, ass.DeviceId, tblDevice.DeviceNo, ass.ExceptionId, ass.CreatedDate, ass.LastAccessedDate, ass.SubscriberID
		, a.UserName
		, a.UserName2
		, sub.SubscriberName
		, ISNULL(e.StatusID, 0) StatusID
	FROM #tblAssociations ass WITH (NOLOCK) 
		INNER JOIN dbo.Accounts a WITH (NOLOCK) ON (ass.AccountID = a.AccountID)
		INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON (ass.SubscriberID = sub.SubscriberID)
		LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (ass.ExceptionID = e.ExceptionID)
		LEFT JOIN #spResult AS tblDevice ON ass.DeviceId = tblDevice.DeviceId
	WHERE tblDevice.DeviceNo IS NOT NULL
	ORDER BY ass.Ass_ID DESC

	DROP TABLE #tblAssociations
	DROP TABLE #deviceIdTmp
	DROP TABLE  #spResult
	RETURN

END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountList_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountList_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByAccountList_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByDevice]
	@deviceNo varchar(50),
	@limit int = 500
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by device No. with limitation of number row
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	IF (@limit IS NULL OR  @limit = 0)
		SET @limit=500;

	DECLARE @deviceId bigint;

	EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output;		

	IF(@deviceId > 0)
	BEGIN

		SELECT TOP(@limit) a.AccountID, a.UserName, a.UserName2, a.SubscriberID, su.SubscriberName, s.DeviceID, @deviceNo AS DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		FROM dbo.Associations s WITH (NOLOCK) 
		INNER JOIN dbo.Accounts a WITH (NOLOCK) ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers su WITH (NOLOCK) ON (a.SubscriberID = su.SubscriberID)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE s.DeviceID=@deviceId
		ORDER BY s.LastAccessedDate DESC;
	END;
	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDevice] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDevice] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDevice] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByDevice_xtest]
	@deviceNo varchar(50),
	@limit int = 500
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by device No. with limitation of number row
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	IF (@limit IS NULL OR  @limit = 0)
		SET @limit=500

	DECLARE @deviceId bigint

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output		

	IF(@deviceId > 0)
	BEGIN

		SELECT TOP(@limit) a.AccountID, a.UserName, a.UserName2, a.SubscriberID, su.SubscriberName, s.DeviceID, @deviceNo AS DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		FROM dbo.Associations s WITH (NOLOCK) 
		INNER JOIN dbo.Accounts a WITH (NOLOCK) ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers su WITH (NOLOCK) ON (a.SubscriberID = su.SubscriberID)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE s.DeviceID=@deviceId
		ORDER BY s.LastAccessedDate DESC
	END
	RETURN
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByDevice_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDevice_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByDeviceNoList]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByDeviceNoList]
	@deviceNos varchar(max)
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by a list of device No.
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @subscrierId int;

	SELECT TOP(1) @subscrierId=acc.SubscriberID 
	FROM dbo.Accounts acc WITH (NOLOCK)
	WHERE acc.AccountID > 0;

	IF(@subscrierId > 0)
	BEGIN
		--DECLARE @remoteDevices nvarchar(500)	 

		CREATE TABLE #tmpDevices (DeviceId bigint, DeviceNo nvarchar(50));

		INSERT INTO #tmpDevices --(DeviceId,DeviceNo) --SELECT * INTO #tmpDevices1 		
		EXEC dbo.sp_DeviceInfoBylistDeviceNo_withoutOS @DeviceNos= @deviceNos, @subscriberId=@subscrierId;

		IF(EXISTS(SELECT TOP(1) 1 FROM #tmpDevices))
		BEGIN
			SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, d.DeviceID, d.DeviceNo,
				ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
			FROM dbo.Accounts a (NOLOCK) 
				INNER JOIN dbo.Associations s (NOLOCK) ON (a.AccountID = s.AccountID)
				INNER JOIN #tmpDevices d (NOLOCK) ON (s.DeviceID = d.DeviceID)
				LEFT JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			ORDER BY s.LastAccessedDate DESC;
		END;
		DROP TABLE #tmpDevices;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDeviceNoList] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDeviceNoList] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDeviceNoList] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByDeviceNoList_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByDeviceNoList_xtest]
	@deviceNos varchar(max)
AS
/***
	Created: 20133101@kan.nguyen
	Task: get association by a list of device No.
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON
	
	DECLARE @subscrierId int

	SELECT TOP(1) @subscrierId=acc.SubscriberID 
	FROM dbo.Accounts acc WITH (NOLOCK)
	WHERE acc.AccountID > 0

	IF(@subscrierId > 0)
	BEGIN
		--DECLARE @remoteDevices nvarchar(500)	 

		CREATE TABLE #tmpDevices (DeviceId bigint, DeviceNo nvarchar(50))

		INSERT INTO #tmpDevices --(DeviceId,DeviceNo) --SELECT * INTO #tmpDevices1 		
																																																																																																																																EXEC [dbo].[sp_DeviceInfoBylistDeviceNo_withoutOS_xtest] @DeviceNos= @deviceNos, @subscriberId=@subscrierId

		IF(EXISTS(SELECT TOP(1) 1 FROM #tmpDevices))
		BEGIN
			SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, d.DeviceID, d.DeviceNo,
				ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
			FROM dbo.Accounts a (NOLOCK) 
				INNER JOIN dbo.Associations s (NOLOCK) ON (a.AccountID = s.AccountID)
				INNER JOIN #tmpDevices d (NOLOCK) ON (s.DeviceID = d.DeviceID)
				LEFT JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			ORDER BY s.LastAccessedDate DESC
		END
		DROP TABLE #tmpDevices
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByDeviceNoList_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDeviceNoList_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByDeviceNoList_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationById]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationById]
	@ass_Id int
AS

/*
Created: 20130125@Bobby
Task: get association by association ID
  DB: FPS_SUB
  
Revisions:
    -20130703:bobby: add remote server
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceId int,@accountId int,@subscrierId int, @deviceNo nvarchar(50);

	SELECT TOP(1) @accountId = acc.AccountID
		, @subscrierId = acc.SubscriberID 
		, @deviceId = ass.DeviceID
	FROM dbo.Associations ass WITH (NOLOCK)
	INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON ass.AccountID=acc.AccountID
	WHERE ass.Ass_ID= @ass_Id;

	IF(@accountId > 0 
		AND @subscrierId > 0
		AND @deviceId > 0)
	BEGIN

		EXEC dbo.sp_DeviceInfoById 
		@deviceId=@deviceId, 
		@subscriberId=@subscrierId, 
		@deviceNo=@deviceNo output;		

		SELECT ass.*, ex.StatusID, acc.UserName, @subscrierId AS SubscriberID, sub.SubscriberName, @deviceNo AS DeviceNo 
		FROM dbo.Associations ass WITH (NOLOCK) 
		INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
		INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON acc.SubscriberID=sub.SubscriberID
		LEFT JOIN rmt.Exceptions ex WITH (NOLOCK) ON ass.ExceptionID=ex.ExceptionID
		WHERE ass.Ass_ID=@ass_Id;

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationById] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationById] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationById] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationById_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationById_xtest]
	@ass_Id int
AS

/*
Created: 20130125@Bobby
Task: get association by association ID
  DB: FPS_SUB
  
Revisions:
    -20130703:bobby: add remote server
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @deviceId int,@accountId int,@subscrierId int, @deviceNo nvarchar(50)

	SELECT TOP(1) @accountId = acc.AccountID
		, @subscrierId = acc.SubscriberID 
		, @deviceId = ass.DeviceID
	FROM dbo.Associations ass WITH (NOLOCK)
	INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON ass.AccountID=acc.AccountID
	WHERE ass.Ass_ID= @ass_Id

	IF(@accountId > 0 
		AND @subscrierId > 0
		AND @deviceId > 0)
	BEGIN

																																																																																																																																EXEC [dbo].[sp_DeviceInfoById_xtest] 
		@deviceId=@deviceId, 
		@subscriberId=@subscrierId, 
		@deviceNo=@deviceNo output		

		SELECT ass.*, ex.StatusID, acc.UserName, @subscrierId AS SubscriberID, sub.SubscriberName, @deviceNo AS DeviceNo 
		FROM dbo.Associations ass WITH (NOLOCK) 
		INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
		INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON acc.SubscriberID=sub.SubscriberID
		LEFT JOIN rmt.Exceptions ex WITH (NOLOCK) ON ass.ExceptionID=ex.ExceptionID
		WHERE ass.Ass_ID=@ass_Id

		RETURN
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationById_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationById_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationById_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByUsernameAndDeviceNo]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationByUsernameAndDeviceNo]
	@username nvarchar(50), 
	@deviceNo nvarchar(50)
AS
/*
Created: 20130125@Bobby
Task: Retrieve all transaction by account and range of time
  DB: FPS_SUB
  
Revisions:
    -20130703:bobby: re-use SP [dbo].[GetAssociationByAccountDevice] 
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON;

		EXEC dbo.GetAssociationByAccountDevice 
		@username=@username
		,@deviceNo = @deviceNo;

	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationByUsernameAndDeviceNo] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByUsernameAndDeviceNo] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByUsernameAndDeviceNo] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationByUsernameAndDeviceNo_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationByUsernameAndDeviceNo_xtest]
	@username nvarchar(50), 
	@deviceNo nvarchar(50)
AS
/*
Created: 20130125@Bobby
Task: Retrieve all transaction by account and range of time
  DB: FPS_SUB
  
Revisions:
    -20130703:bobby: re-use SP [dbo].[GetAssociationByAccountDevice_xtest] 
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON

																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																EXEC [dbo].[GetAssociationByAccountDevice_xtest] 
		@username=@username
		,@deviceNo = @deviceNo

	RETURN
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationByUsernameAndDeviceNo_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByUsernameAndDeviceNo_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetAssociationByUsernameAndDeviceNo_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationsL1AndL2OfAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationsL1AndL2OfAccount]
	@username nvarchar(50)
AS
/***
	Created: 20130314@kan.nguyen
	Task: get Association L1 & L2 of Account
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @accountId int, @subscriberId int;

	SELECT TOP(1) @accountId=AccountID
		, @subscriberId = SubscriberID
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE UserName=@username;

	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN		
		
		-- Association L1
		SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, su.SubscriberName, s.DeviceID, CAST('' AS nvarchar(50)) AS DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		INTO #tmpAssL1
		FROM dbo.Accounts a WITH (NOLOCK) 
			INNER JOIN dbo.Associations s WITH (NOLOCK) ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers su WITH (NOLOCK) ON (a.SubscriberID = su.SubscriberID)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE a.AccountID=@accountId
		ORDER BY s.LastAccessedDate DESC;
		
		-- update device no
		CREATE TABLE #deviceIdTmp(DeviceId INT);

		INSERT INTO #deviceIdTmp(DeviceId)
		SELECT DISTINCT DeviceID FROM #tmpAssL1;	

		DECLARE @DeviceIds VARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #deviceIdTmp;

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50)		
		);
		INSERT #spResult  EXEC dbo.sp_DeviceInfoBylistDeviceID_withoutOS @DeviceIds=@DeviceIds, @subscriberId=@subscriberId;

		SELECT 
		tmp.AccountID, tmp.UserName, tmp.UserName2, tmp.SubscriberID, tmp.SubscriberName, tmp.DeviceID, tblDevice.DeviceNo,
			tmp.Ass_ID, tmp.CreatedDate, tmp.LastAccessedDate, tmp.ExceptionID, tmp.StatusID
		FROM #tmpAssL1 tmp
		LEFT JOIN #spResult AS tblDevice ON tmp.DeviceId = tblDevice.DeviceId
		WHERE tblDevice.DeviceNo IS NOT NULL;

		-- Association L2
		SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, sub.SubscriberName, l1.DeviceID, tblDevice.DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		--INTO #tmpAssL2
		FROM dbo.Associations s WITH (NOLOCK)
			INNER JOIN #tmpAssL1 l1 ON s.DeviceID=l1.DeviceID -- join with device level 1
			INNER JOIN dbo.Accounts a WITH (NOLOCK)  ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON (a.SubscriberID = sub.SubscriberID)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			LEFT JOIN #spResult AS tblDevice ON L1.DeviceId = tblDevice.DeviceId
		WHERE s.AccountID <> @accountId AND tblDevice.DeviceNo IS NOT NULL
		ORDER BY s.LastAccessedDate DESC;

		DROP TABLE #deviceIdTmp;
		DROP TABLE #tmpAssL1;
		DROP TABLE #spResult;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationsL1AndL2OfAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationsL1AndL2OfAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationsL1AndL2OfAccount_xtest]
	@username nvarchar(50)
AS
/***
	Created: 20130314@kan.nguyen
	Task: get Association L1 & L2 of Account
	  DB: FPS_SUB.
	  
	Revisions:
		-20130703:bobby: add remote server
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON
	
	DECLARE @accountId int, @subscriberId int

	SELECT TOP(1) @accountId=AccountID
		, @subscriberId = SubscriberID
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE UserName=@username

	IF(@accountId > 0 AND @subscriberId > 0)
	BEGIN		
		
		-- Association L1
		SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, su.SubscriberName, s.DeviceID, CAST('' AS nvarchar(50)) AS DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		INTO #tmpAssL1
		FROM dbo.Accounts a WITH (NOLOCK) 
			INNER JOIN dbo.Associations s WITH (NOLOCK) ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers su WITH (NOLOCK) ON (a.SubscriberID = su.SubscriberID)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE a.AccountID=@accountId
		ORDER BY s.LastAccessedDate DESC
		
		-- update device no
		CREATE TABLE #deviceIdTmp(DeviceId INT);

		INSERT INTO #deviceIdTmp(DeviceId)
		SELECT DISTINCT DeviceID FROM #tmpAssL1	

		DECLARE @DeviceIds VARCHAR(1000)
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #deviceIdTmp

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50)		
		);
		INSERT #spResult                                                                EXEC [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS_xtest] @DeviceIds=@DeviceIds, @subscriberId=@subscriberId

		SELECT 
		tmp.AccountID, tmp.UserName, tmp.UserName2, tmp.SubscriberID, tmp.SubscriberName, tmp.DeviceID, tblDevice.DeviceNo,
			tmp.Ass_ID, tmp.CreatedDate, tmp.LastAccessedDate, tmp.ExceptionID, tmp.StatusID
		FROM #tmpAssL1 tmp
		LEFT JOIN #spResult AS tblDevice ON tmp.DeviceId = tblDevice.DeviceId
		WHERE tblDevice.DeviceNo IS NOT NULL

		-- Association L2
		SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, sub.SubscriberName, l1.DeviceID, tblDevice.DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		--INTO #tmpAssL2
		FROM dbo.Associations s WITH (NOLOCK)
			INNER JOIN #tmpAssL1 l1 ON s.DeviceID=l1.DeviceID -- join with device level 1
			INNER JOIN dbo.Accounts a WITH (NOLOCK)  ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON (a.SubscriberID = sub.SubscriberID)
			LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			LEFT JOIN #spResult AS tblDevice ON L1.DeviceId = tblDevice.DeviceId
		WHERE s.AccountID <> @accountId AND tblDevice.DeviceNo IS NOT NULL
		ORDER BY s.LastAccessedDate DESC

		DROP TABLE #deviceIdTmp
		DROP TABLE #tmpAssL1
		DROP TABLE #spResult
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationsL1AndL2OfAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationsL1AndL2OfDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAssociationsL1AndL2OfDevice]
	@deviceNo nvarchar(50)
AS
/***
	Created: 20130314@kan.nguyen
	Task: get Association L1 & L2 of Device
	  DB: FPS_SUB.
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;
	DECLARE @subscriberId int, @deviceID bigint;

	EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceID output;		

	IF(@deviceId > 0)
	BEGIN
		-- Association L1
		SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, su.SubscriberName, @deviceID AS DeviceID, @deviceNo AS DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		INTO #tmpAssL1
		FROM dbo.Accounts a (NOLOCK) 
			INNER JOIN dbo.Associations s (NOLOCK) ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers su (NOLOCK) ON (a.SubscriberID = su.SubscriberID)
			LEFT JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE s.DeviceID=@deviceID;

		SELECT * FROM #tmpAssL1
		WHERE DeviceNo IS NOT NULL;

		IF(EXISTS(SELECT TOP (1) 1 FROM #tmpAssL1))
		BEGIN		
			-- Association L2
			SELECT l1.AccountID, l1.UserName, l1.UserName2, l1.SubscriberID, l1.SubscriberName, s.DeviceID, CAST('' AS nvarchar(50)) AS DeviceNo,
				s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
			INTO #tmpAssL2
			FROM dbo.Associations s WITH (NOLOCK) 
				INNER JOIN #tmpAssL1 l1 WITH (NOLOCK) ON (s.AccountID = l1.AccountID)
				INNER JOIN rmt.Subscribers su (NOLOCK) ON (l1.SubscriberID = su.SubscriberID)
				LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			WHERE s.DeviceID <> @deviceID;

			-- update device no
			CREATE TABLE #deviceIdTmp(DeviceId INT);

			INSERT INTO #deviceIdTmp(DeviceId)
			SELECT DISTINCT DeviceID FROM #tmpAssL2;	

			DECLARE @DeviceIds VARCHAR(MAX);
			SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
			FROM #deviceIdTmp;
			-----
			CREATE TABLE #spResult 
			(
				DeviceID INT,
				DeviceNo NVARCHAR(50)					
			);
			-- Get the result set of the SP into the temp table.

			INSERT INTO #spResult  EXEC dbo.sp_DeviceInfoBylistDeviceID_withoutOS @DeviceIds=@DeviceIds;

			SELECT
			tmp.AccountID,tmp.UserName, tmp.UserName2,tmp.SubscriberID,tmp.SubscriberName,tmp.DeviceID,tblDevice.DeviceNo,tmp.Ass_ID, tmp.CreatedDate,tmp.LastAccessedDate, tmp.ExceptionID, tmp.StatusID
			FROM #tmpAssL2 tmp
			LEFT JOIN #spResult AS tblDevice ON tmp.DeviceId = tblDevice.DeviceId
			WHERE tblDevice.DeviceNo IS NOT NULL;
			DROP TABLE #tmpAssL2;
			DROP TABLE #spResult; 

		END;
		DROP TABLE #tmpAssL1;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetAssociationsL1AndL2OfDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetAssociationsL1AndL2OfDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetAssociationsL1AndL2OfDevice_xtest]
	@deviceNo nvarchar(50)
AS
/***
	Created: 20130314@kan.nguyen
	Task: get Association L1 & L2 of Device
	  DB: FPS_SUB.
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON
	DECLARE @subscriberId int, @deviceID bigint

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceID output		

	IF(@deviceId > 0)
	BEGIN
		-- Association L1
		SELECT a.AccountID, a.UserName, a.UserName2, a.SubscriberID, su.SubscriberName, @deviceID AS DeviceID, @deviceNo AS DeviceNo,
			s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
		INTO #tmpAssL1
		FROM dbo.Accounts a (NOLOCK) 
			INNER JOIN dbo.Associations s (NOLOCK) ON (a.AccountID = s.AccountID)
			INNER JOIN rmt.Subscribers su (NOLOCK) ON (a.SubscriberID = su.SubscriberID)
			LEFT JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE s.DeviceID=@deviceID

		SELECT * FROM #tmpAssL1
		WHERE DeviceNo IS NOT NULL

		IF(EXISTS(SELECT TOP (1) 1 FROM #tmpAssL1))
		BEGIN		
			-- Association L2
			SELECT l1.AccountID, l1.UserName, l1.UserName2, l1.SubscriberID, l1.SubscriberName, s.DeviceID, CAST('' AS nvarchar(50)) AS DeviceNo,
				s.Ass_ID, s.CreatedDate, s.LastAccessedDate, ISNULL(s.ExceptionID, 0) ExceptionID, ISNULL(e.StatusID, 0) StatusID
			INTO #tmpAssL2
			FROM dbo.Associations s WITH (NOLOCK) 
				INNER JOIN #tmpAssL1 l1 WITH (NOLOCK) ON (s.AccountID = l1.AccountID)
				INNER JOIN rmt.Subscribers su (NOLOCK) ON (l1.SubscriberID = su.SubscriberID)
				LEFT JOIN rmt.Exceptions e WITH (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			WHERE s.DeviceID <> @deviceID

			-- update device no
			CREATE TABLE #deviceIdTmp(DeviceId INT);

			INSERT INTO #deviceIdTmp(DeviceId)
			SELECT DISTINCT DeviceID FROM #tmpAssL2	

			DECLARE @DeviceIds VARCHAR(1000)
			SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
			FROM #deviceIdTmp
			-----
			CREATE TABLE #spResult 
			(
				DeviceID INT,
				DeviceNo NVARCHAR(50)					
			);
			-- Get the result set of the SP into the temp table.

			INSERT INTO #spResult                                                                EXEC [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS_xtest] @DeviceIds=@DeviceIds

			SELECT
			tmp.AccountID,tmp.UserName, tmp.UserName2,tmp.SubscriberID,tmp.SubscriberName,tmp.DeviceID,tblDevice.DeviceNo,tmp.Ass_ID, tmp.CreatedDate,tmp.LastAccessedDate, tmp.ExceptionID, tmp.StatusID
			FROM #tmpAssL2 tmp
			LEFT JOIN #spResult AS tblDevice ON tmp.DeviceId = tblDevice.DeviceId
			WHERE tblDevice.DeviceNo IS NOT NULL
			DROP TABLE #tmpAssL2
			DROP TABLE #spResult 

		END
		DROP TABLE #tmpAssL1
	END
END














GO
GRANT EXECUTE ON [dbo].[GetAssociationsL1AndL2OfDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetFlaggedAccountFromAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlaggedAccountFromAccount]
	@userName NVARCHAR(200),
	@eviCode NVARCHAR(50)= '',
	@affectedDate DATETIME = NULL
AS
/*
	Created: 20170411@Harvey.Nguyen
	Task: Get associated account list which has suitable evidences code from account based on affected Date
	  DB: FPS_SUB_
  
	Revisions:
		- 20171124@Thai: get Username2 from deposit sites, Username from credit sites (#82663)
		- 20180301@Thai: get associated accounts from @affectedDate
		- 20180418@Thai: get more accountId (#92996)
		- 20180418@Thai: just get afftected accounts, eliminate input flagged account (#92996)
		- 20200515@Patrick: Enhance performance [RedmineId: #133811]
	Param's Explanation:  
		- If @affectedDate is NULL then ignore this param
		
		exec GetFlaggedAccountFromAccount 'fpsw_pgmharvey', '1.1'
*/
BEGIN
	DECLARE @accountId INT, @subscriberId INT

	SELECT @accountId = AccountID, @subscriberId = SubscriberID
	FROM Accounts acc WITH (NOLOCK)
	WHERE acc.UserName = @username;     

	SELECT DISTINCT DeviceID
	INTO #DeviceLevel1
	FROM Associations WITH (NOLOCK)
	WHERE AccountID = @accountId;

	DECLARE @__xmlData XML
	SET @__xmlData = (
		SELECT acc.AccountID AS 'c'
			, Username AS 'u'
			, Username2 AS 'u2'
			, ass.DeviceID AS 'd'
		FROM Associations ass WITH (NOLOCK)
			INNER JOIN #DeviceLevel1 de ON ass.DeviceID = de.DeviceID
			INNER JOIN Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
		WHERE acc.AccountId <> @accountId
		FOR XML RAW ('r')
	)

	DECLARE @data VARCHAR(MAX)
	SET @data = CAST(@__xmlData AS VARCHAR(MAX))
	EXEC [FPSADMIN].master.dbo.sp_executesql
		N'EXECUTE FPS_EVI.dbo.EVI_GetFlaggedAccountFromAccount @data = @data, @affectedDate = @affectedDate, @subscriberId = @subscriberId, @eviCode = @eviCode',
		N'@data varchar(max), @affectedDate datetime, @subscriberId int, @eviCode varchar(128)',
		@data, @affectedDate, @subscriberId, @eviCode

	DROP TABLE #DeviceLevel1;
END;
GO
GRANT EXECUTE ON [dbo].[GetFlaggedAccountFromAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetFlaggedAccountFromAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlaggedAccountFromAccount_xtest]
	@userName NVARCHAR(200),
	@eviCode NVARCHAR(50)= '',
	@affectedDate DATETIME = NULL
AS
/*
	Created: 20170411@Harvey.Nguyen
	Task: Get associated account list which has suitable evidences code from account based on affected Date
	  DB: FPS_SUB_
  
	Revisions:
		- 20171124@Thai: get Username2 from deposit sites, Username from credit sites (#82663)
		- 20180301@Thai: get associated accounts from @affectedDate
		- 20180418@Thai: get more accountId (#92996)
		- 20180418@Thai: just get afftected accounts, eliminate input flagged account (#92996)
		- 20200515@Patrick: Enhance performance [RedmineId: #133811]
	Param's Explanation:  
		- If @affectedDate is NULL then ignore this param
		
		exec GetFlaggedAccountFromAccount_xtest 'fpsw_pgmharvey', '1.1'
*/
BEGIN
	DECLARE @accountId INT, @subscriberId INT

	SELECT @accountId = AccountID, @subscriberId = SubscriberID
	FROM Accounts acc WITH (NOLOCK)
	WHERE acc.UserName = @username;     

	SELECT DISTINCT DeviceID
	INTO #DeviceLevel1
	FROM Associations WITH (NOLOCK)
	WHERE AccountID = @accountId;

	DECLARE @__xmlData XML
	SET @__xmlData = (
		SELECT acc.AccountID AS 'c'
			, Username AS 'u'
			, Username2 AS 'u2'
			, ass.DeviceID AS 'd'
		FROM Associations ass WITH (NOLOCK)
			INNER JOIN #DeviceLevel1 de ON ass.DeviceID = de.DeviceID
			INNER JOIN Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
		WHERE acc.AccountId <> @accountId
		FOR XML RAW ('r')
	)

	DECLARE @data VARCHAR(MAX)
	SET @data = CAST(@__xmlData AS VARCHAR(MAX))
	EXEC [FPSADMIN].master.dbo.sp_executesql
		N'EXECUTE FPS_EVI.dbo.EVI_GetFlaggedAccountFromAccount @data = @data, @affectedDate = @affectedDate, @subscriberId = @subscriberId, @eviCode = @eviCode',
		N'@data varchar(max), @affectedDate datetime, @subscriberId int, @eviCode varchar(128)',
		@data, @affectedDate, @subscriberId, @eviCode

	DROP TABLE #DeviceLevel1;
END;
GO
GRANT EXECUTE ON [dbo].[GetFlaggedAccountFromAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetFlaggedAccountFromDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlaggedAccountFromDevice] 
	@deviceNo NVARCHAR(50),
	@subsciberName NVARCHAR(200),
	@eviCode NVARCHAR(50) = '',
	@affectedDate DATETIME = NULL
AS
/*
	Created: 20170411@Harvey.Nguyen
	Task: Get associated account list which has suitable evidences code from device based on affected Date
	  DB: FPS_SUB_
  
	Revisions:
		- 20171124@Thai: get Username2 from deposit sites, Username from credit sites (#82663)
		- 20180301@Thai: get associated accounts from @affectedDate
		- 20180426@Thai: refactor sps
	Param's Explanation:  
		- If @affectedDate is NULL then ignore this param
		
		exec GetFlaggedAccountFromDevice '2b80d27b85754a68951322f9f371ea88', 'FPS', '','2018-03-02 14:15:18'
*/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @deviceId INT
		,@isSubTest BIT
		,@subscriberId INT;

	SELECT @isSubTest = IsTest
		,@subscriberId = SubscriberID
	FROM FPSADMIN.FPS_ADMIN.dbo.Subscribers WITH (NOLOCK)
	WHERE SubscriberName = @subsciberName;

	IF @isSubTest = 1
	BEGIN
		SELECT @deviceId = DeviceId
		FROM FPSADMIN.FPS_DEV_TEST.dbo.DevMaster WITH (NOLOCK)
		WHERE DeviceNo = @deviceNo;
	END;
	ELSE
	BEGIN
		SELECT @deviceId = DeviceId
		FROM FPSADMIN.FPS_DEV.dbo.DevMaster WITH (NOLOCK)
		WHERE DeviceNo = @deviceNo;
	END;

	SELECT DISTINCT (CASE 
			WHEN UserName2 IS NULL THEN UserName
			ELSE UserName2 END
			) AS 'Username'
		,eviMaster.EviCode
		,(CASE 
			WHEN eviSub.LevelId > 0 THEN 2
			ELSE 1 END
			) AS 'Level'
	FROM Associations ass WITH (NOLOCK)
		INNER JOIN Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
		INNER JOIN rmt.EvidenceSub eviSub WITH (NOLOCK) ON ass.AccountID = eviSub.ItemId
		INNER JOIN rmt.EvidenceMaster eviMaster WITH (NOLOCK) ON eviSub.EviID = eviMaster.EviID
	WHERE DeviceID = @deviceId
		AND eviMaster.StatusID = 0
		AND (eviSub.AffectedDate >= @affectedDate OR @affectedDate IS NULL)
		AND eviSub.ItemType = 0
		AND (
				eviMaster.EviCode = @eviCode
				OR ISNULL(@eviCode, '') = ''
			)
		AND eviMaster.SubscriberId = @subscriberId
		AND 
		(
			EXISTS (
					SELECT TOP (1) 1
					FROM rmt.Subscribers AS su WITH (NOLOCK)
					WHERE su.SubscriberID = acc.SubscriberID AND su.EnableSysId = 0
					)
			OR 
			EXISTS (
					SELECT TOP (1) 1
					FROM rmt.Subscribers AS su WITH (NOLOCK)
					WHERE acc.UserName2 IS NOT NULL AND su.SubscriberID = acc.SubscriberID AND su.EnableSysId = 1
					)
		);
END;
GO
GRANT EXECUTE ON [dbo].[GetFlaggedAccountFromDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetFlaggedAccountFromDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.GetFlaggedAccountFromDevice_xtest    Script Date: 08/05/2018 4:33:49 PM ******/
CREATE PROCEDURE [dbo].[GetFlaggedAccountFromDevice_xtest] 
	@deviceNo NVARCHAR(50),
	@subsciberName NVARCHAR(200),
	@eviCode NVARCHAR(50) = '',
	@affectedDate DATETIME = NULL
AS
/*
	Created: 20170411@Harvey.Nguyen
	Task: Get associated account list which has suitable evidences code from device based on affected Date
	  DB: FPS_SUB_
  
	Revisions:
		- 20171124@Thai: get Username2 from deposit sites, Username from credit sites (#82663)
		- 20180301@Thai: get associated accounts from @affectedDate
		- 20180426@Thai: refactor sps
	Param's Explanation:  
		- If @affectedDate is NULL then ignore this param
		
	exec GetFlaggedAccountFromDevice_xtest '2b80d27b85754a68951322f9f371ea88', 'FPS', '','2018-03-02 14:15:18'
*/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @deviceId INT
		,@isSubTest BIT
		,@subscriberId INT

	SELECT @isSubTest = IsTest
		,@subscriberId = SubscriberID
	FROM FPSADMIN.FPS_ADMIN.dbo.Subscribers WITH (NOLOCK)
	WHERE SubscriberName = @subsciberName

	IF @isSubTest = 1
	BEGIN
		SELECT @deviceId = DeviceId
		FROM FPSADMIN.FPS_DEV_TEST.dbo.DevMaster WITH (NOLOCK)
		WHERE DeviceNo = @deviceNo
	END
	ELSE
	BEGIN
		SELECT @deviceId = DeviceId
		FROM FPSADMIN.FPS_DEV.dbo.DevMaster WITH (NOLOCK)
		WHERE DeviceNo = @deviceNo
	END

	SELECT DISTINCT (CASE 
			WHEN UserName2 IS NULL THEN UserName
			ELSE UserName2 END
			) AS 'Username'
		,eviMaster.EviCode
		,(CASE 
			WHEN eviSub.LevelId > 0 THEN 2
			ELSE 1 END
			) AS 'Level'
	FROM Associations ass WITH (NOLOCK)
		INNER JOIN Accounts acc WITH (NOLOCK) ON ass.AccountID = acc.AccountID
		INNER JOIN rmt.EvidenceSub eviSub WITH (NOLOCK) ON ass.AccountID = eviSub.ItemId
		INNER JOIN rmt.EvidenceMaster eviMaster WITH (NOLOCK) ON eviSub.EviID = eviMaster.EviID
	WHERE DeviceID = @deviceId
		AND eviMaster.StatusID = 0
		AND (eviSub.AffectedDate >= @affectedDate OR @affectedDate IS NULL)
		AND eviSub.ItemType = 0
		AND (
				eviMaster.EviCode = @eviCode
				OR ISNULL(@eviCode, '') = ''
			)
		AND eviMaster.SubscriberId = @subscriberId
		AND 
		(
			EXISTS (
					SELECT TOP (1) 1
					FROM rmt.Subscribers AS su WITH (NOLOCK)
					WHERE su.SubscriberID = acc.SubscriberID AND su.EnableSysId = 0
					)
			OR 
			EXISTS (
					SELECT TOP (1) 1
					FROM rmt.Subscribers AS su WITH (NOLOCK)
					WHERE acc.UserName2 IS NOT NULL AND su.SubscriberID = acc.SubscriberID AND su.EnableSysId = 1
					)
		)
END
GO
GRANT EXECUTE ON [dbo].[GetFlaggedAccountFromDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetLastestTransByAccIdAndDevId]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLastestTransByAccIdAndDevId] @accountId INT
	,@deviceId INT
	,@fromDate DATETIME
	,@toDate DATETIME
AS
/*
	Created: 20190619@Harvey
	Task: Get lastest trans by accountId and deviceId
	  DB: FPS_SUB_FPS
  
	Revisions:
		- 20190619@Harvey: init SPs  (#114371)
	Param's Explanation:  

	exec [GetLastestTransByAccIdAndDevId] 14,3233,'2019-06-19 02:12:55.000','2019-06-19 02:12:55.000'
*/
BEGIN
	SET NOCOUNT ON
	DECLARE @usedByMember INT = 0
		,@usedByOtherMembers INT = 0
		,@quantityOfOtherMember INT = 0

	SELECT @usedByMember = COUNT(1)
	FROM Transactions WITH (NOLOCK)
	WHERE AccountID = @accountId
		AND DeviceID = @deviceId
		AND TransDate BETWEEN @fromDate AND @toDate

	SELECT @usedByOtherMembers = COUNT(1)
	FROM Transactions WITH (NOLOCK)
	WHERE DeviceID = @deviceId
		AND AccountID <> @accountId
		AND TransDate BETWEEN @fromDate AND @toDate

	SELECT @quantityOfOtherMember = COUNT(DISTINCT AccountID)
	FROM Transactions WITH (NOLOCK)
	WHERE DeviceID = @deviceId
		AND AccountID <> @accountId
		AND TransDate BETWEEN @fromDate AND @toDate

	SELECT TOP (1) TransDate
		,trans.AccountID
		,acc.UserName
		,acc.UserName2
		,trans.DeviceID
		,dev.DeviceNo
		,ActionName
		,dev.OSName
		,Browser
		,URL
		,IP
		,Country
		,Region
		,City
		,ISP 'ServiceProvider'
		,@usedByMember 'UsedByMember'
		,@usedByOtherMembers 'UsedByOtherMember'
		,@quantityOfOtherMember 'NoOfOtherMember'
	FROM [Transactions] trans WITH (NOLOCK)
	LEFT JOIN Accounts acc WITH (NOLOCK) ON trans.AccountID = acc.AccountID
	LEFT JOIN FPSDEV.FPS_DEV.dbo.DevMaster dev WITH (NOLOCK) ON trans.DeviceID = dev.DeviceID
	WHERE trans.AccountID = @accountId
		AND trans.DeviceID = @deviceId
		AND TransDate BETWEEN @fromDate AND @toDate
	ORDER BY TransDate DESC
END
GO
GRANT EXECUTE ON [dbo].[GetLastestTransByAccIdAndDevId] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetLastestTransByAccIdAndDevId_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLastestTransByAccIdAndDevId_xtest] @accountId INT
	,@deviceId INT
	,@fromDate DATETIME
	,@toDate DATETIME
AS
/*
	Created: 20190619@Harvey
	Task: Get lastest trans by accountId and deviceId
	  DB: FPS_SUB_FPS
  
	Revisions:
		- 20190619@Harvey: init SPs  (#114371)
	Param's Explanation:  

	exec [GetLastestTransByAccIdAndDevId_xtest] 14,3233,'2019-06-19 02:12:55.000','2019-06-19 02:12:55.000'
*/
BEGIN
	SET NOCOUNT ON
	DECLARE @usedByMember INT = 0
		,@usedByOtherMembers INT = 0
		,@quantityOfOtherMember INT = 0

	SELECT @usedByMember = COUNT(1)
	FROM Transactions WITH (NOLOCK)
	WHERE AccountID = @accountId
		AND DeviceID = @deviceId
		AND TransDate BETWEEN @fromDate AND @toDate

	SELECT @usedByOtherMembers = COUNT(1)
	FROM Transactions WITH (NOLOCK)
	WHERE DeviceID = @deviceId
		AND AccountID <> @accountId
		AND TransDate BETWEEN @fromDate AND @toDate

	SELECT @quantityOfOtherMember = COUNT(DISTINCT AccountID)
	FROM Transactions WITH (NOLOCK)
	WHERE DeviceID = @deviceId
		AND AccountID <> @accountId
		AND TransDate BETWEEN @fromDate AND @toDate

	SELECT TOP (1) TransDate
		,trans.AccountID
		,acc.UserName
		,acc.UserName2
		,trans.DeviceID
		,dev.DeviceNo
		,ActionName
		,dev.OSName
		,Browser
		,URL
		,IP
		,Country
		,Region
		,City
		,ISP 'ServiceProvider'
		,@usedByMember 'UsedByMember'
		,@usedByOtherMembers 'UsedByOtherMember'
		,@quantityOfOtherMember 'NoOfOtherMember'
	FROM [Transactions] trans WITH (NOLOCK)
	LEFT JOIN Accounts acc WITH (NOLOCK) ON trans.AccountID = acc.AccountID
	LEFT JOIN FPSDEV.FPS_DEV.dbo.DevMaster dev WITH (NOLOCK) ON trans.DeviceID = dev.DeviceID
	WHERE trans.AccountID = @accountId
		AND trans.DeviceID = @deviceId
		AND TransDate BETWEEN @fromDate AND @toDate
	ORDER BY TransDate DESC
END
GO
GRANT EXECUTE ON [dbo].[GetLastestTransByAccIdAndDevId_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetLatestAccessedAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetLatestAccessedAccount]
	@username nvarchar(50),
	@range int = 10
AS
/***
	Created: 20133101@kan.nguyen
	Task: search account by its username (partial search)
	  DB: FPS_SUB.
	  
	Revisions:
		- 20130826@bobby.nguyen: optimize index
		- 20140331@bobby.nguyen: adding sort by username first

	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @subId INT, @EnableSysID BIT = 0;
		
	SELECT TOP 1 @EnableSysID = EnableSysID 
	FROM rmt.Subscribers sub WITH (NOLOCK)
	WHERE SubscriberID = (SELECT TOP 1 SubscriberID FROM dbo.Accounts AS ac WITH (NOLOCK) WHERE AccountID > 0);
	
	IF(@EnableSysID=1)
	BEGIN
		SELECT TOP (@range) ac.AccountID, ac.UserName, ac.UserName2, max(a.LastAccessedDate) LastAccessedDate
		FROM dbo.Accounts ac WITH (NOLOCK) 
		INNER JOIN dbo.Associations a WITH (NOLOCK) ON (ac.AccountID = a.AccountID)
		WHERE ac.UserName LIKE @username + '%'
			OR ac.UserName2 LIKE @username + '%'
		GROUP BY ac.AccountID, ac.UserName, ac.UserName2
		ORDER BY ac.UserName, ac.UserName2
			, LastAccessedDate DESC;
	END;
	ELSE
	BEGIN
		SELECT TOP (@range) ac.AccountID, ac.UserName, ac.UserName2, max(a.LastAccessedDate) LastAccessedDate
		FROM dbo.Accounts ac WITH (NOLOCK) 
		INNER JOIN dbo.Associations a WITH (NOLOCK) ON (ac.AccountID = a.AccountID)
		WHERE ac.UserName LIKE @username + '%'
		GROUP BY ac.AccountID, ac.UserName, ac.UserName2
		ORDER BY ac.UserName
			, LastAccessedDate DESC;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetLatestAccessedAccount] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetLatestAccessedAccount] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetLatestAccessedAccount] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetLatestAccessedAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetLatestAccessedAccount_xtest]
	@username nvarchar(50),
	@range int = 10
AS
/***
	Created: 20133101@kan.nguyen
	Task: search account by its username (partial search)
	  DB: FPS_SUB.
	  
	Revisions:
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON
	
	DECLARE @subId INT, @enableSysId BIT = 0;
		
	SELECT TOP(1) @subId=SubscriberID FROM dbo.Accounts WITH (NOLOCK)
	
	SELECT @enableSysId=EnableSysId FROM rmt.Subscribers WITH (NOLOCK)
	WHERE SubscriberID=@subId
	
	SELECT TOP (@range) ac.AccountID, ac.UserName, ac.UserName2, max(a.LastAccessedDate) LastAccessedDate
	FROM dbo.Accounts ac WITH (NOLOCK) 
	INNER JOIN dbo.Associations a WITH (NOLOCK) ON (ac.AccountID = a.AccountID)
	WHERE ac.UserName LIKE @username + '%'
		OR CASE @enableSysId
			WHEN 0 THEN CASE WHEN 1=1 THEN 0 END
			WHEN 1 THEN CASE WHEN ac.UserName2 LIKE @username + '%' THEN 1 END
		END=1
	GROUP BY ac.AccountID, ac.UserName, ac.UserName2
	ORDER BY LastAccessedDate DESC
END














GO
GRANT EXECUTE ON [dbo].[GetLatestAccessedAccount_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetLatestAccessedAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetLatestAccessedAccount_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListAccountByUserName]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetListAccountByUserName]
						@username			NVARCHAR(50)
					,	@PageSize			INT				= 50
					,	@PageIndex			INT				= 1
					,	@TotalPages			INT				= 0			OUTPUT
					,	@TotalRows			INT				= 0			OUTPUT
AS
/*
	Creator:	20130124@Tom
	Task:		Retrieve List Account by UserName - [Redmine: #000000]
	Database:	FPSLICALL

	Revisions:
		- 20130124@Tom:		Initial - [Redmine: #000000]
 		- 20190730@Billy:	Refactor & Performance Tuning - [Redmine: #117671]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;

	DECLARE	@SubscriberDB	NVARCHAR(128)
		,	@EnableSysID	BIT
		,	@LimitedDate	DATETIME
		;

	DECLARE	@RowStart		BIGINT
		,	@RowEnd			BIGINT
		,	@UserCount		INT
		;

	CREATE TABLE	#accTmp (
						AccountID			INT
					,	UserName			NVARCHAR(50)
					,	UserName2			NVARCHAR(50)
					,	LastAccessedDate	DATETIME
					);

	-- Determined value --
	SELECT	@SubscriberDB	= DB_NAME()
		,	@LimitedDate	= DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()) - 365, 0)
		;

	-- Input handling --
	SELECT	@RowStart		= @PageSize * (@PageIndex - 1) + 1;
	SELECT	@RowEnd			= @RowStart + @PageSize - 1;


	EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo
				@SubscriberDB	= @SubscriberDB
			,	@EnableSysID	= @EnableSysID	OUTPUT
			;

	SELECT	@UserCount = COUNT(1)
	FROM	dbo.Accounts AS acc WITH (NOLOCK)
	WHERE	acc.UserName LIKE @username + N'%';

	SELECT	@UserCount = @UserCount + COUNT(1)
	FROM	dbo.Accounts AS acc WITH (NOLOCK)
	WHERE	acc.UserName2 LIKE @username + N'%';

	IF	@UserCount < 1000
	-- Small batch of user: better query 1 by 1
	BEGIN;
		INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
		SELECT	[AccountID]			= acc.AccountID
			,	[UserName]			= acc.UserName
			,	[UserName2]			= acc.UserName2
			,	[LastAccessedDate]	= ass.LastAccessedDate
		FROM		dbo.Accounts AS acc WITH (NOLOCK)
		CROSS APPLY	(
			SELECT	TOP(1)
					_ass.LastAccessedDate
			FROM	dbo.Associations AS _ass WITH (NOLOCK)
			WHERE	_ass.AccountID = acc.AccountID
			ORDER BY _ass.LastAccessedDate DESC
		) AS ass
		WHERE	acc.UserName LIKE @username + N'%'
			AND	ass.LastAccessedDate >= @LimitedDate;

		IF	@EnableSysID = 1
		BEGIN;
			INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
			SELECT	[AccountID]			= acc.AccountID
				,	[UserName]			= acc.UserName
				,	[UserName2]			= acc.UserName2
				,	[LastAccessedDate]	= ass.LastAccessedDate
			FROM		dbo.Accounts AS acc WITH (NOLOCK)
			CROSS APPLY	(
				SELECT	TOP(1)
						_ass.LastAccessedDate
				FROM	dbo.Associations AS _ass WITH (NOLOCK)
				WHERE	_ass.AccountID = acc.AccountID
				ORDER BY _ass.LastAccessedDate DESC
			) AS ass
			LEFT JOIN	#accTmp AS tmp
					ON	tmp.AccountID = acc.AccountID
			WHERE	acc.UserName2 LIKE @username + N'%'
				AND	ass.LastAccessedDate >= @LimitedDate
				AND	tmp.AccountID IS NULL;
		END;
	END;
	ELSE
	-- Large batch of user: better scan all table
	BEGIN;
		IF	@EnableSysID = 1
		BEGIN;
			WITH acc AS (
				SELECT	acc.AccountID, acc.UserName, acc.UserName2
				FROM	dbo.Accounts AS acc WITH (NOLOCK)
				WHERE	acc.UserName LIKE @username + N'%'
				UNION ALL
				SELECT	acc.AccountID, acc.UserName, acc.UserName2
				FROM	dbo.Accounts AS acc WITH (NOLOCK)
				WHERE	acc.UserName2 LIKE @username + N'%'
			)
			INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
			SELECT	[AccountID]			= acc.AccountID
				,	[UserName]			= acc.UserName
				,	[UserName2]			= acc.UserName2
				,	[LastAccessedDate]	= MAX(ass.LastAccessedDate)
			FROM		acc WITH (NOLOCK)
			INNER JOIN	dbo.Associations AS ass WITH (NOLOCK)
					ON	acc.AccountID = ass.AccountID
			WHERE	ass.LastAccessedDate >= @LimitedDate
			GROUP BY acc.AccountID, acc.UserName, acc.UserName2;
		END;
		ELSE
		BEGIN
			INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
			SELECT	[AccountID]			= acc.AccountID
				,	[UserName]			= acc.UserName
				,	[UserName2]			= acc.UserName2
				,	[LastAccessedDate]	= MAX(ass.LastAccessedDate)
			FROM		dbo.Accounts AS acc WITH (NOLOCK)
			INNER JOIN	dbo.Associations AS ass WITH (NOLOCK)
					ON	acc.AccountID = ass.AccountID
			WHERE	acc.UserName LIKE @username + N'%'
				AND	ass.LastAccessedDate >= @LimitedDate
			GROUP BY acc.AccountID, acc.UserName, acc.UserName2;
		END;
	END;


	SELECT	@TotalRows	= COUNT(1)
		,	@TotalPages	= CEILING(COUNT(1) * 1.0 / @PageSize)
	FROM	#accTmp WITH (NOLOCK);

	SELECT	tbl.RowNum, tbl.AccountID, tbl.UserName, tbl.UserName2, tbl.LastAccessedDate
	FROM	(
		SELECT	[AccountID]			= _tmp.AccountID
			,	[UserName]			= _tmp.UserName
			,	[UserName2]			= _tmp.UserName2
			,	[LastAccessedDate]	= _tmp.LastAccessedDate
			,	[RowNum]			= ROW_NUMBER() OVER (ORDER BY _tmp.LastAccessedDate DESC)
		FROM	#accTmp AS _tmp WITH (NOLOCK)
	) AS tbl
	WHERE	tbl.RowNum BETWEEN @RowStart AND @RowEnd
	ORDER BY tbl.RowNum;
END;
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListAccountByUserName_xpre]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetListAccountByUserName_xpre]
						@username			NVARCHAR(50)
					,	@PageSize			INT				= 50
					,	@PageIndex			INT				= 1
					,	@TotalPages			INT				= 0			OUTPUT
					,	@TotalRows			INT				= 0			OUTPUT
AS
/*
	Creator:	20130124@Tom
	Task:		Retrieve List Account by UserName - [Redmine: #000000]
	Database:	FPSLICALL

	Revisions:
		- 20130124@Tom:		Initial - [Redmine: #000000]
 		- 20190730@Billy:	Refactor & Performance Tuning - [Redmine: #117671]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;

	DECLARE	@SubscriberDB	NVARCHAR(128)
		,	@EnableSysID	BIT
		,	@LimitedDate	DATETIME
		;

	DECLARE	@RowStart		BIGINT
		,	@RowEnd			BIGINT
		,	@UserCount		INT
		;

	CREATE TABLE	#accTmp (
						AccountID			INT
					,	UserName			NVARCHAR(50)
					,	UserName2			NVARCHAR(50)
					,	LastAccessedDate	DATETIME
					);

	-- Determined value --
	SELECT	@SubscriberDB	= DB_NAME()
		,	@LimitedDate	= DATEADD(DAY, DATEDIFF(DAY, 0, GETDATE()) - 365, 0)
		;

	-- Input handling --
	SELECT	@RowStart		= @PageSize * (@PageIndex - 1) + 1;
	SELECT	@RowEnd			= @RowStart + @PageSize - 1;


	EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo
				@SubscriberDB	= @SubscriberDB
			,	@EnableSysID	= @EnableSysID	OUTPUT
			;

	SELECT	@UserCount = COUNT(1)
	FROM	dbo.Accounts AS acc WITH (NOLOCK)
	WHERE	acc.UserName LIKE @username + N'%';

	SELECT	@UserCount = @UserCount + COUNT(1)
	FROM	dbo.Accounts AS acc WITH (NOLOCK)
	WHERE	acc.UserName2 LIKE @username + N'%';

	IF	@UserCount < 1000
	-- Small batch of user: better query 1 by 1
	BEGIN;
		INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
		SELECT	[AccountID]			= acc.AccountID
			,	[UserName]			= acc.UserName
			,	[UserName2]			= acc.UserName2
			,	[LastAccessedDate]	= ass.LastAccessedDate
		FROM		dbo.Accounts AS acc WITH (NOLOCK)
		CROSS APPLY	(
			SELECT	TOP(1)
					_ass.LastAccessedDate
			FROM	dbo.Associations AS _ass WITH (NOLOCK)
			WHERE	_ass.AccountID = acc.AccountID
			ORDER BY _ass.LastAccessedDate DESC
		) AS ass
		WHERE	acc.UserName LIKE @username + N'%'
			AND	ass.LastAccessedDate >= @LimitedDate;

		IF	@EnableSysID = 1
		BEGIN;
			INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
			SELECT	[AccountID]			= acc.AccountID
				,	[UserName]			= acc.UserName
				,	[UserName2]			= acc.UserName2
				,	[LastAccessedDate]	= ass.LastAccessedDate
			FROM		dbo.Accounts AS acc WITH (NOLOCK)
			CROSS APPLY	(
				SELECT	TOP(1)
						_ass.LastAccessedDate
				FROM	dbo.Associations AS _ass WITH (NOLOCK)
				WHERE	_ass.AccountID = acc.AccountID
				ORDER BY _ass.LastAccessedDate DESC
			) AS ass
			LEFT JOIN	#accTmp AS tmp
					ON	tmp.AccountID = acc.AccountID
			WHERE	acc.UserName2 LIKE @username + N'%'
				AND	ass.LastAccessedDate >= @LimitedDate
				AND	tmp.AccountID IS NULL;
		END;
	END;
	ELSE
	-- Large batch of user: better scan all table
	BEGIN;
		IF	@EnableSysID = 1
		BEGIN;
			WITH acc AS (
				SELECT	acc.AccountID, acc.UserName, acc.UserName2
				FROM	dbo.Accounts AS acc WITH (NOLOCK)
				WHERE	acc.UserName LIKE @username + N'%'
				UNION ALL
				SELECT	acc.AccountID, acc.UserName, acc.UserName2
				FROM	dbo.Accounts AS acc WITH (NOLOCK)
				WHERE	acc.UserName2 LIKE @username + N'%'
			)
			INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
			SELECT	[AccountID]			= acc.AccountID
				,	[UserName]			= acc.UserName
				,	[UserName2]			= acc.UserName2
				,	[LastAccessedDate]	= MAX(ass.LastAccessedDate)
			FROM		acc WITH (NOLOCK)
			INNER JOIN	dbo.Associations AS ass WITH (NOLOCK)
					ON	acc.AccountID = ass.AccountID
			WHERE	ass.LastAccessedDate >= @LimitedDate
			GROUP BY acc.AccountID, acc.UserName, acc.UserName2;
		END;
		ELSE
		BEGIN
			INSERT INTO	#accTmp (AccountID, UserName, UserName2, LastAccessedDate)
			SELECT	[AccountID]			= acc.AccountID
				,	[UserName]			= acc.UserName
				,	[UserName2]			= acc.UserName2
				,	[LastAccessedDate]	= MAX(ass.LastAccessedDate)
			FROM		dbo.Accounts AS acc WITH (NOLOCK)
			INNER JOIN	dbo.Associations AS ass WITH (NOLOCK)
					ON	acc.AccountID = ass.AccountID
			WHERE	acc.UserName LIKE @username + N'%'
				AND	ass.LastAccessedDate >= @LimitedDate
			GROUP BY acc.AccountID, acc.UserName, acc.UserName2;
		END;
	END;


	SELECT	@TotalRows	= COUNT(1)
		,	@TotalPages	= CEILING(COUNT(1) * 1.0 / @PageSize)
	FROM	#accTmp WITH (NOLOCK);

	SELECT	tbl.RowNum, tbl.AccountID, tbl.UserName, tbl.UserName2, tbl.LastAccessedDate
	FROM	(
		SELECT	[AccountID]			= _tmp.AccountID
			,	[UserName]			= _tmp.UserName
			,	[UserName2]			= _tmp.UserName2
			,	[LastAccessedDate]	= _tmp.LastAccessedDate
			,	[RowNum]			= ROW_NUMBER() OVER (ORDER BY _tmp.LastAccessedDate DESC)
		FROM	#accTmp AS _tmp WITH (NOLOCK)
	) AS tbl
	WHERE	tbl.RowNum BETWEEN @RowStart AND @RowEnd
	ORDER BY tbl.RowNum;
END;
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName_xpre] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName_xpre] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName_xpre] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListAccountByUserName_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetListAccountByUserName_xtest]
(
	@username NVARCHAR (50), 
	@PageSize INT=50, 
	@PageIndex INT=1, 
	@TotalPages INT=0 OUTPUT, 
	@TotalRows INT=0 OUTPUT
)
AS
/*
Created: 20130124@Tom
Task: Retrieve List Account by UserName
  DB: FPS_SUB_2.
  
Revisions:
    
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;
	DECLARE @RowStart AS BIGINT, 
		@RowEnd AS BIGINT;

	SELECT @TotalRows = COUNT(DISTINCT (ac.AccountID))
	FROM dbo.Accounts AS ac WITH (NOLOCK)
	WHERE ac.UserName LIKE @username + '%'
		   OR ac.UserName2 LIKE @username + '%';
	IF (@TotalRows = 0)
		RETURN;
	IF (@TotalRows < @PageSize)
		SET @PageSize = @TotalRows;
	--Paging
	IF ISNULL(@TotalPages, 0) = 0
	BEGIN
		SELECT @TotalPages = @TotalRows / @PageSize 
		+ CASE 
			WHEN @TotalRows % @PageSize > 0 THEN 1 ELSE 0 
		END

		SELECT @PageIndex = @PageIndex - 1,
		   @RowStart = @PageSize * @PageIndex + 1,
		   @RowEnd = @RowStart + @PageSize - 1;

		IF (@TotalPages > @PageIndex)
		BEGIN
			SELECT   A.* FROM 
				(SELECT TOP (@RowEnd) ROW_NUMBER() OVER ( ORDER BY (max(ISNULL(a.LastAccessedDate, Getdate() - 365))) DESC) AS RowNum,
											 ac.AccountID,
											 ac.UserName,
											 ac.UserName2,
											 max(ISNULL(a.LastAccessedDate, Getdate() - 365)) AS LastAccessedDate
					  FROM dbo.Accounts AS ac WITH (NOLOCK)
							   LEFT OUTER JOIN dbo.Associations AS a WITH (NOLOCK)
							   ON (ac.AccountID = a.AccountID)
					  WHERE ac.UserName LIKE @username + '%'
							   OR ac.UserName2 LIKE @username + '%'
					  GROUP BY ac.AccountID, ac.UserName, ac.UserName2) AS A
			WHERE A.RowNum BETWEEN @RowStart AND @RowEnd
			ORDER BY A.RowNum;
		END
		RETURN
	END
END














GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountByUserName_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListAccountLevel2]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetListAccountLevel2]
(
	@accountId int
)
AS
/*
Created: 20130313@Bobby
Task: Get list account at level 2
  DB: FPS_SUB_2.
  
Revisions:
	-20130705@Bobby: Update schema rmt
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;
	DECLARE @subscriberID INT;

	SELECT TOP 1 @subscriberID=SubscriberID FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID=@accountId;

	IF(@accountId > 0 AND @subscriberID > 0)
	BEGIN
		-- select account id at level 2
		SELECT AccountID INTO #tempData 
		FROM (
			SELECT DISTINCT AccountID 
			FROM dbo.Associations WITH (NOLOCK)
			WHERE DeviceID IN 
			(
				SELECT DeviceID FROM dbo.Associations WITH (NOLOCK)
				WHERE AccountID = @accountId
			) 
			AND AccountID <> @accountId
		) Tmp;
	
		-- select account info
		SELECT Acc.AccountID, Acc.UserName, Acc.UserName2, Acc.SubscriberID,Sub.SubscriberName 
		FROM dbo.Accounts Acc WITH  (NOLOCK)
		INNER JOIN #tempData tmp ON Acc.AccountID=tmp.AccountID
		INNER JOIN rmt.Subscribers Sub WITH  (NOLOCK) ON Acc.SubscriberID = Sub.SubscriberID;
		
		-- select account evidence
		SELECT s.ItemID, m.EviID, m.EviGroupID, m.EviCode, m.SubscriberID, s.LevelID
		FROM rmt.EvidenceSub s WITH  (NOLOCK)
			INNER JOIN rmt.EvidenceMaster m WITH  (NOLOCK) ON (s.EviID = m.EviID)
		WHERE s.ItemID IN (
				SELECT AccountID FROM #tempData
			) 
			AND s.SubscriberID=@subscriberID
			AND s.ItemType = 0; -- account only
		
		-- drop temp table
		DROP TABLE #tempData;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetListAccountLevel2] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListAccountLevel2_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetListAccountLevel2_xtest]
(
	@accountId int
)
AS
/*
Created: 20130313@Bobby
Task: Get list account at level 2
  DB: FPS_SUB_2.
  
Revisions:
	-20130705@Bobby: Update schema rmt
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;
	DECLARE @subscriberID INT

	SELECT TOP 1 @subscriberID=SubscriberID FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID=@accountId

	IF(@accountId > 0 AND @subscriberID > 0)
	BEGIN
		-- select account id at level 2
		SELECT AccountID INTO #tempData 
		FROM (
			SELECT DISTINCT AccountID 
			FROM dbo.Associations WITH (NOLOCK)
			WHERE DeviceID IN 
			(
				SELECT DeviceID FROM dbo.Associations WITH (NOLOCK)
				WHERE AccountID = @accountId
			) 
			AND AccountID <> @accountId
		) Tmp
	
		-- select account info
		SELECT Acc.AccountID, Acc.UserName, Acc.UserName2, Acc.SubscriberID,Sub.SubscriberName 
		FROM dbo.Accounts Acc WITH  (NOLOCK)
		INNER JOIN #tempData tmp ON Acc.AccountID=tmp.AccountID
		INNER JOIN rmt.Subscribers Sub WITH  (NOLOCK) ON Acc.SubscriberID = Sub.SubscriberID
		
		-- select account evidence
		SELECT s.ItemID, m.EviID, m.EviGroupID, m.EviCode, m.SubscriberID, s.LevelID
		FROM rmt.EvidenceSub s WITH  (NOLOCK)
			INNER JOIN rmt.EvidenceMaster m WITH  (NOLOCK) ON (s.EviID = m.EviID)
		WHERE s.ItemID IN (
				SELECT AccountID FROM #tempData
			) 
			AND s.SubscriberID=@subscriberID
			AND s.ItemType = 0 -- account only
		
		-- drop temp table
		DROP TABLE #tempData
	END
END














GO
GRANT EXECUTE ON [dbo].[GetListAccountLevel2_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListAccountsFromId]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.GetListAccountsFromId    Script Date: 8/20/2018 3:22:06 PM ******/
CREATE PROCEDURE [dbo].[GetListAccountsFromId]
	@accountID int,
	@limit int
AS
/***
	Created: 20180815@thai.tran
	Task: get list of accounts greater than accountID
	  DB: FPS_SUB.
	  
	Revisions:	 
	Param's Explanation:
	EXEC [GetListAccountsFromId] 11, 30
***/
BEGIN
	
	SET NOCOUNT ON;

	SELECT TOP (@limit) AccountID, UserName, UserName2
	FROM dbo.Accounts WITH (NOLOCK)		
	WHERE AccountID >= @accountID
	ORDER BY AccountID

END
GO
GRANT EXECUTE ON [dbo].[GetListAccountsFromId] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetListAccountsFromId] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListDeviceLevel2]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetListDeviceLevel2]
(
	@deviceId bigint
)
AS
/*
Created: 20130313@Bobby
Task: Get list device no at level 2
  DB: FPS_SUB_2.
  
Revisions:
    -20130703:bobby: add remote server
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;
		
	SELECT A.DeviceID
	INTO #tmpDevices
	FROM (
		SELECT DISTINCT DeviceID FROM dbo.Associations (NOLOCK)
		WHERE AccountID IN (
				SELECT AccountID FROM dbo.Associations (NOLOCK)
				WHERE DeviceID = @deviceId
			) 
			AND DeviceID <> @deviceId
		) A; 
	IF(EXISTS(SELECT TOP 1 1 FROM #tmpDevices))
	BEGIN
		DECLARE @DeviceIds VARCHAR(MAX), @sqlUpdate NVARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tmpDevices;
		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50)
		);
		INSERT INTO #spResult  EXEC dbo.sp_DeviceInfoBylistDeviceID_withoutOS @DeviceIds=@DeviceIds;
				
		SELECT tmp.DeviceId, tblDevice.DeviceNo
		FROM #tmpDevices tmp 
		INNER JOIN #spResult AS tblDevice ON tmp.DeviceId = tblDevice.DeviceId;
		DROP TABLE #spResult;
		
	END;	
	DROP TABLE #tmpDevices;
END;
GO
GRANT EXECUTE ON [dbo].[GetListDeviceLevel2] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetListDeviceLevel2_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetListDeviceLevel2_xtest]
(
	@deviceId bigint
)
AS
/*
Created: 20130313@Bobby
Task: Get list device no at level 2
  DB: FPS_SUB_2.
  
Revisions:
    -20130703:bobby: add remote server
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;
		
	SELECT A.DeviceID
	INTO #tmpDevices
	FROM (
		SELECT DISTINCT DeviceID FROM dbo.Associations (NOLOCK)
		WHERE AccountID IN (
				SELECT AccountID FROM dbo.Associations (NOLOCK)
				WHERE DeviceID = @deviceId
			) 
			AND DeviceID <> @deviceId
		) A 
	IF(EXISTS(SELECT TOP 1 1 FROM #tmpDevices))
	BEGIN
		DECLARE @DeviceIds VARCHAR(5000), @sqlUpdate NVARCHAR(MAX)
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tmpDevices
		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50)
		);
		INSERT INTO #spResult                                                                EXEC [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS_xtest] @DeviceIds=@DeviceIds
				
		SELECT tmp.DeviceId, tblDevice.DeviceNo
		FROM #tmpDevices tmp 
		INNER JOIN #spResult AS tblDevice ON tmp.DeviceId = tblDevice.DeviceId
		DROP TABLE #spResult
		
	END	
	DROP TABLE #tmpDevices
END














GO
GRANT EXECUTE ON [dbo].[GetListDeviceLevel2_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetSharedDevicesBySubscriberAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSharedDevicesBySubscriberAndRangeTime]
	@DeviceNo nvarchar(50), 
	@subscriberId int,
	@fromDate datetime = NULL,
	@toDate datetime = NULL
AS

/*
Created: 20130125@Bobby
Task: Retrieve all transaction by account and range of time
  DB: FPS_SUB
  
Revisions:
    -20130703:bobby: add remote server
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceID bigint;

	EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output;

	IF(@deviceID > 0) 
	BEGIN
		SELECT DISTINCT @deviceID AS DeviceID
			, @DeviceNo AS DeviceNo
			, trans.SubscriberID
			, sub.SubscriberName 
		FROM dbo.Transactions trans WITH (NOLOCK)
			INNER JOIN rmt.Subscribers AS sub WITH (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.DeviceID = @deviceID
			AND trans.SubscriberID=@subscriberId;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetSharedDevicesBySubscriberAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSharedDevicesBySubscriberAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSharedDevicesBySubscriberAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetSharedDevicesBySubscriberAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSharedDevicesBySubscriberAndRangeTime_xtest]
	@DeviceNo nvarchar(50), 
	@subscriberId int,
	@fromDate datetime = NULL,
	@toDate datetime = NULL
AS

/*
Created: 20130125@Bobby
Task: Retrieve all transaction by account and range of time
  DB: FPS_SUB
  
Revisions:
    -20130703:bobby: add remote server
Param's Explanation:  
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @deviceID bigint

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output

	IF(@deviceID > 0) 
	BEGIN
		SELECT DISTINCT @deviceID AS DeviceID
			, @DeviceNo AS DeviceNo
			, trans.SubscriberID
			, sub.SubscriberName 
		FROM dbo.Transactions trans WITH (NOLOCK)
			INNER JOIN rmt.Subscribers AS sub WITH (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.DeviceID = @deviceID
			AND trans.SubscriberID=@subscriberId
	END
END














GO
GRANT EXECUTE ON [dbo].[GetSharedDevicesBySubscriberAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSharedDevicesBySubscriberAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSharedDevicesBySubscriberAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetShortAccountByUserName]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetShortAccountByUserName]
	@username nvarchar(100)
AS

/*
Created: 20130125@Bobby
Task: Retrieve short account information
  DB: FPS_SUB.
  
Revisions:
    -20130705@Bobby.Nguyen: Add rmt schema
Param's Explanation:  
*/

BEGIN

	SET NOCOUNT ON;

	SELECT TOP 1 AccountID, UserName, UserName2, acc.SubscriberID, sub.SubscriberName 
	FROM dbo.Accounts as acc WITH (NOLOCK) 
	INNER JOIN rmt.Subscribers as sub WITH (NOLOCK) 
		ON acc.SubscriberID = sub.SubscriberID
	WHERE acc.UserName = @username;

END;
GO
GRANT EXECUTE ON [dbo].[GetShortAccountByUserName] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetShortAccountByUserName] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetShortAccountByUserName] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetShortAccountByUserName_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetShortAccountByUserName_xtest]
	@username nvarchar(100)
AS

/*
Created: 20130125@Bobby
Task: Retrieve short account information
  DB: FPS_SUB.
  
Revisions:
    -20130705@Bobby.Nguyen: Add rmt schema
Param's Explanation:  
*/

BEGIN

	SET NOCOUNT ON

	SELECT TOP 1 AccountID, UserName, UserName2, acc.SubscriberID, sub.SubscriberName 
	FROM dbo.Accounts as acc WITH (NOLOCK) 
	INNER JOIN rmt.Subscribers as sub WITH (NOLOCK) 
		ON acc.SubscriberID = sub.SubscriberID
	WHERE acc.UserName = @username

END














GO
GRANT EXECUTE ON [dbo].[GetShortAccountByUserName_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetShortAccountByUserName_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetShortAccountByUserName_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetSingleAccountByUsername]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSingleAccountByUsername]
	@username NVARCHAR(50),
	@type TINYINT = 0
AS
/***
	Created: 20133101@kan.nguyen
	Task: Get Accounts information by Username
	  DB: FPS_SUB.
	Revisions:
		-20130705@Bobby.Nguyen: Add rmt schema and #tmpAccount
		-20180522@Thai.Tran: Get more Account's createddate
	Param's Explanation:
		EXEC [GetSingleAccountByUsername] 'fpsw_pgmthai', 0
***/
BEGIN
	SET NOCOUNT ON;

	IF (LEN(@username) > 1)
	BEGIN

		CREATE TABLE #tmpAccount (
			AccountID INT
			, UserName NVARCHAR(50)
			, UserName2 NVARCHAR(50)
			, CreatedDate DATETIME
			, SubscriberID INT
			, SubscriberName NVARCHAR(50)			
		);
		
		INSERT INTO #tmpAccount(AccountID, UserName, UserName2, CreatedDate, SubscriberID, SubscriberName)
		SELECT TOP (1) AccountID, UserName, UserName2, CreatedDate, acc.SubscriberID, s.SubscriberName
		FROM dbo.Accounts acc WITH (NOLOCK)
			INNER JOIN FPSADMIN.FPS_ADMIN.dbo.Subscribers s WITH (NOLOCK) ON (acc.SubscriberID = s.SubscriberID)
		WHERE acc.UserName = @username;

		DECLARE @accountID INT
			, @subscriberID INT;

		SELECT @accountID = AccountID, @subscriberID=SubscriberID  
		FROM #tmpAccount;

		IF(@accountID > 0  AND @subscriberID > 0)
		BEGIN
			SELECT AccountID
				  ,UserName
				  ,UserName2
				  ,CreatedDate
				  ,SubscriberID
				  ,SubscriberName				  
			FROM #tmpAccount WITH (NOLOCK);

			--get evidence information
			EXEC FPSADMIN.FPS_EVI.dbo.GetEvidenceByIDAndType @accountID, @type, @subscriberID;			
		END;

		DROP TABLE #tmpAccount;
	END;	
END;
GO
GRANT EXECUTE ON [dbo].[GetSingleAccountByUsername] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSingleAccountByUsername] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSingleAccountByUsername] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetSingleAccountByUsername_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetSingleAccountByUsername_xtest]
	@username nvarchar(50),
	@type tinyint = 0
AS
/***
	Created: 20133101@kan.nguyen
	Task: Get Accounts information by Username
	  DB: FPS_SUB.
	Revisions:
		-20130705@Bobby.Nguyen: Add rmt schema and #tmpAccount
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON

	IF (LEN(@username) > 1)
	BEGIN
		SELECT TOP 1 AccountID, UserName, UserName2, a.SubscriberID, b.SubscriberName
		INTO #tmpAccount
		FROM dbo.Accounts a WITH (NOLOCK)
			INNER JOIN rmt.Subscribers b WITH (NOLOCK) ON (a.SubscriberID = b.SubscriberID)
		WHERE a.UserName=@username

		DECLARE @accountID int
			, @subscriberID int

		SELECT @accountID = AccountID, @subscriberID=SubscriberID  
		FROM #tmpAccount

		IF(@accountID > 0  AND @subscriberID > 0)
		BEGIN
			SELECT * FROM #tmpAccount
			--get evidence information
			EXEC rmt.GetEvidenceByIDAndType @accountID, @type, @subscriberID
		END
		DROP TABLE #tmpAccount
	END
	RETURN
END














GO
GRANT EXECUTE ON [dbo].[GetSingleAccountByUsername_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSingleAccountByUsername_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetSingleAccountByUsername_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionByAccountAndFromDate]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransactionByAccountAndFromDate]
						@username			NVARCHAR(50)
					,	@fromDate			DATETIME
					,	@skip				INT				= 0
					,	@limit				INT				= 25
					,	@totalRows			INT				OUTPUT
AS
/*
	Creator:	20130125@Bobby
	Task:		Retrieve all transaction by account and range of time
	Database:	FPSLICALL.FPS_SUB_xxx

	Revisions:
		- 20130705@Bobby:	add rmt schema & OPENQUERY
		- 20160411@Bobby:	#55712 - Adding action result into some reports
		- 20190926@Billy:	Performance Tuning - [Redmine: #117671]
		- 20190927@Billy:	Hotfix - Remove NULL DeviceId - [Redmine: #117671]
		- 20200108@Thai:	Update the length of data type - [Redmine: #126654]
*/
BEGIN;
	SET NOCOUNT ON;

	DECLARE	@accountId		INT
		,	@username2		NVARCHAR(50)
		,	@subscriberId	INT
		;

	DECLARE	@DeviceIds		VARCHAR(MAX)
		;


	DECLARE	@RuleSettings AS TABLE (
				RuleSetID		INT
			,	RuleName		NVARCHAR(150)
			,	PRIMARY KEY CLUSTERED (RuleSetID)
			);

	CREATE TABLE	#tableTmp (
						RowNum			BIGINT
					,	TransID			BIGINT
					,	AccountID		INT
					,	UserName		NVARCHAR(50)
					,	UserName2		NVARCHAR(50)
					,	DeviceID		BIGINT
					,	SubscriberID	INT
					,	TransDate		DATETIME
					,	ActionName		NVARCHAR(50)
					,	IP				NVARCHAR(20)
					,	Country			NVARCHAR(64)
					,	CountryCode		NVARCHAR(20)
					,	Region			NVARCHAR(128)
					,	City			NVARCHAR(128)
					,	ServiceProvider	NVARCHAR(50)
					,	ISP				NVARCHAR(256)
					,	Browser			NVARCHAR(50)
					,	PluginID		BIGINT
					,	Flagged			TINYINT
					,	RuleSetID		INT
					,	ResultType		TINYINT
					,	RuleVersionID	NVARCHAR(150)
					,	URL				NVARCHAR(250)
					,	RuleName		NVARCHAR(150)
					,	ActionResult	NVARCHAR(100)
					,	PRIMARY KEY CLUSTERED (RowNum)
					);

	CREATE TABLE	#deviceIdTmp (
						DeviceId		BIGINT
					,	PRIMARY KEY CLUSTERED (DeviceId)
					);

	CREATE TABLE	#spResult (
						DeviceId		INT
					,	DeviceNo		NVARCHAR(50)
					,	OSName			NVARCHAR(50)
					,	PRIMARY KEY CLUSTERED (DeviceId)
					);



	INSERT INTO	@RuleSettings
		(	RuleSetID, RuleName)
	SELECT	RuleSetID, RuleName
	FROM	OPENQUERY(FPSADMIN, N'\
SELECT	RuleSetID, RuleName
FROM	FPS_ADMIN.dbo.RuleSettings WITH (NOLOCK);');

	SELECT	TOP(1)
			@accountId = acc.AccountID
		,	@username2 = acc.UserName2
		,	@subscriberId = acc.SubscriberID
	FROM	dbo.Accounts AS acc WITH (NOLOCK)
	WHERE	acc.UserName = @username;

	IF	@accountId > 0 AND @subscriberId > 0
	BEGIN;
		-- select count total
		SELECT	@totalRows = COUNT(1)
		FROM	dbo.Transactions AS trans WITH (NOLOCK)
		WHERE	trans.TransDate >= @fromDate
			AND	trans.AccountID = @accountId;

		IF	@totalRows > 0
		BEGIN;
			IF	@limit > @totalRows
			BEGIN;
				SET	@limit = @totalRows;
			END;

			INSERT INTO	#tableTmp
				(	RowNum, TransID, AccountID, UserName, UserName2, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID
				,	Flagged, RuleSetID, ResultType, RuleVersionID, URL, RuleName, ActionResult)
			SELECT	RowNum, TransID, AccountID, UserName, UserName2, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID
				,	Flagged, RuleSetID, ResultType, RuleVersionID, URL, RuleName, ActionResult
			FROM	(
				SELECT	TOP(@limit)
						[RowNum]			= ROW_NUMBER() OVER(ORDER BY tblTrans.TransDate DESC)
					,	[TransID]			= tblTrans.TransID
					,	[AccountID]			= tblTrans.AccountID
					,	[UserName]			= @username
					,	[UserName2]			= @username2
					,	[DeviceID]			= tblTrans.DeviceID
					,	[SubscriberID]		= tblTrans.SubscriberID
					,	[TransDate]			= tblTrans.TransDate
					,	[ActionName]		= tblTrans.ActionName
					,	[IP]				= tblTrans.IP
					,	[Country]			= tblTrans.Country
					,	[CountryCode]		= tblTrans.CountryCode
					,	[Region]			= tblTrans.Region
					,	[City]				= tblTrans.City
					,	[ServiceProvider]	= tblTrans.ServiceProvider
					,	[ISP]				= tblTrans.ISP
					,	[Browser]			= tblTrans.Browser
					,	[PluginID]			= tblTrans.PluginID
					,	[Flagged]			= tblTrans.Flagged
					,	[RuleSetID]			= tblTrans.RuleSetID
					,	[ResultType]		= tblTrans.ResultType
					,	[RuleVersionID]		= tblTrans.RuleVersionID
					,	[URL]				= tblTrans.URL
					,	[RuleName]			= tblRule.RuleName
					,	[ActionResult]		= tblTrans.ActionResult
				FROM		dbo.Transactions AS tblTrans WITH (NOLOCK)
				LEFT JOIN	@RuleSettings AS tblRule
						ON	tblTrans.RuleSetID = tblRule.RuleSetID
				WHERE	tblTrans.TransDate >= @fromDate
					AND	tblTrans.AccountID = @accountId
			) AS tbl
			WHERE	RowNum BETWEEN @skip AND @limit;

			INSERT INTO	#deviceIdTmp (DeviceId)
			SELECT	DISTINCT
					DeviceId
			FROM	#tableTmp WITH (NOLOCK)
			WHERE	DeviceId IS NOT NULL;

			SELECT	@DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS VARCHAR(50))
			FROM	#deviceIdTmp WITH (NOLOCK);

			INSERT INTO	#spResult (DeviceID, DeviceNo, OSName)
			EXECUTE	dbo.sp_DeviceInfoBylistDeviceID @DeviceIds = @DeviceIds, @subscriberId = @subscriberId;

			SELECT	[RowNum]			= tbl.RowNum
				,	[TransID]			= tbl.TransID
				,	[AccountID]			= tbl.AccountID
				,	[UserName]			= tbl.UserName
				,	[UserName2]			= tbl.UserName2
				,	[DeviceID]			= tbl.DeviceID
				,	[SubscriberID]		= tbl.SubscriberID
				,	[TransDate]			= tbl.TransDate
				,	[ActionName]		= tbl.ActionName
				,	[IP]				= tbl.IP
				,	[Country]			= tbl.Country
				,	[CountryCode]		= tbl.CountryCode
				,	[Region]			= tbl.Region
				,	[City]				= tbl.City
				,	[ServiceProvider]	= tbl.ServiceProvider
				,	[ISP]				= tbl.ISP
				,	[Browser]			= tbl.Browser
				,	[PluginID]			= tbl.PluginID
				,	[Flagged]			= tbl.Flagged
				,	[RuleSetID]			= tbl.RuleSetID
				,	[ResultType]		= tbl.ResultType
				,	[RuleVersionID]		= tbl.RuleVersionID
				,	[URL]				= tbl.URL
				,	[RuleName]			= tbl.RuleName
				,	[ActionResult]		= tbl.ActionResult
				,	[DeviceNo]			= ISNULL(tblDevice.DeviceNo, N'N/A')
				,	[OSName]			= ISNULL(tblDevice.OSName, N'N/A')
			FROM		#tableTmp AS tbl WITH (NOLOCK)
			LEFT JOIN	#spResult AS tblDevice WITH (NOLOCK)
					ON	tbl.DeviceId = tblDevice.DeviceId
			ORDER BY tbl.RowNum;
		END;
	END;
END;

GO
GRANT EXECUTE ON [dbo].[GetTransactionByAccountAndFromDate] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByAccountAndFromDate] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByAccountAndFromDate] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionByAccountAndFromDate_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransactionByAccountAndFromDate_xtest]
						@username			NVARCHAR(50)
					,	@fromDate			DATETIME
					,	@skip				INT				= 0
					,	@limit				INT				= 25
					,	@totalRows			INT				OUTPUT
AS
/*
	Creator:	20130125@Bobby
	Task:		Retrieve all transaction by account and range of time
	Database:	FPSLICALL.FPS_SUB_xxx

	Revisions:
		- 20130705@Bobby:	add rmt schema & OPENQUERY
		- 20160411@Bobby:	#55712 - Adding action result into some reports
		- 20190926@Billy:	Performance Tuning - [Redmine: #117671]
		- 20190927@Billy:	Hotfix - Remove NULL DeviceId - [Redmine: #117671]
		- 20200108@Thai:	Update the length of data type - [Redmine: #126654]
*/
BEGIN;
	SET NOCOUNT ON;

	DECLARE	@accountId		INT
		,	@username2		NVARCHAR(50)
		,	@subscriberId	INT
		;

	DECLARE	@DeviceIds		VARCHAR(MAX)
		;


	DECLARE	@RuleSettings AS TABLE (
				RuleSetID		INT
			,	RuleName		NVARCHAR(150)
			,	PRIMARY KEY CLUSTERED (RuleSetID)
			);

	CREATE TABLE	#tableTmp (
						RowNum			BIGINT
					,	TransID			BIGINT
					,	AccountID		INT
					,	UserName		NVARCHAR(50)
					,	UserName2		NVARCHAR(50)
					,	DeviceID		BIGINT
					,	SubscriberID	INT
					,	TransDate		DATETIME
					,	ActionName		NVARCHAR(50)
					,	IP				NVARCHAR(20)
					,	Country			NVARCHAR(64)
					,	CountryCode		NVARCHAR(20)
					,	Region			NVARCHAR(128)
					,	City			NVARCHAR(128)
					,	ServiceProvider	NVARCHAR(50)
					,	ISP				NVARCHAR(256)
					,	Browser			NVARCHAR(50)
					,	PluginID		BIGINT
					,	Flagged			TINYINT
					,	RuleSetID		INT
					,	ResultType		TINYINT
					,	RuleVersionID	NVARCHAR(150)
					,	URL				NVARCHAR(250)
					,	RuleName		NVARCHAR(150)
					,	ActionResult	NVARCHAR(100)
					,	PRIMARY KEY CLUSTERED (RowNum)
					);

	CREATE TABLE	#deviceIdTmp (
						DeviceId		BIGINT
					,	PRIMARY KEY CLUSTERED (DeviceId)
					);

	CREATE TABLE	#spResult (
						DeviceId		INT
					,	DeviceNo		NVARCHAR(50)
					,	OSName			NVARCHAR(50)
					,	PRIMARY KEY CLUSTERED (DeviceId)
					);



	INSERT INTO	@RuleSettings
		(	RuleSetID, RuleName)
	SELECT	RuleSetID, RuleName
	FROM	OPENQUERY(FPSADMIN, N'\
SELECT	RuleSetID, RuleName
FROM	FPS_ADMIN.dbo.RuleSettings WITH (NOLOCK);');

	SELECT	TOP(1)
			@accountId = acc.AccountID
		,	@username2 = acc.UserName2
		,	@subscriberId = acc.SubscriberID
	FROM	dbo.Accounts AS acc WITH (NOLOCK)
	WHERE	acc.UserName = @username;

	IF	@accountId > 0 AND @subscriberId > 0
	BEGIN;
		-- select count total
		SELECT	@totalRows = COUNT(1)
		FROM	dbo.Transactions AS trans WITH (NOLOCK)
		WHERE	trans.TransDate >= @fromDate
			AND	trans.AccountID = @accountId;

		IF	@totalRows > 0
		BEGIN;
			IF	@limit > @totalRows
			BEGIN;
				SET	@limit = @totalRows;
			END;

			INSERT INTO	#tableTmp
				(	RowNum, TransID, AccountID, UserName, UserName2, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID
				,	Flagged, RuleSetID, ResultType, RuleVersionID, URL, RuleName, ActionResult)
			SELECT	RowNum, TransID, AccountID, UserName, UserName2, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID
				,	Flagged, RuleSetID, ResultType, RuleVersionID, URL, RuleName, ActionResult
			FROM	(
				SELECT	TOP(@limit)
						[RowNum]			= ROW_NUMBER() OVER(ORDER BY tblTrans.TransDate DESC)
					,	[TransID]			= tblTrans.TransID
					,	[AccountID]			= tblTrans.AccountID
					,	[UserName]			= @username
					,	[UserName2]			= @username2
					,	[DeviceID]			= tblTrans.DeviceID
					,	[SubscriberID]		= tblTrans.SubscriberID
					,	[TransDate]			= tblTrans.TransDate
					,	[ActionName]		= tblTrans.ActionName
					,	[IP]				= tblTrans.IP
					,	[Country]			= tblTrans.Country
					,	[CountryCode]		= tblTrans.CountryCode
					,	[Region]			= tblTrans.Region
					,	[City]				= tblTrans.City
					,	[ServiceProvider]	= tblTrans.ServiceProvider
					,	[ISP]				= tblTrans.ISP
					,	[Browser]			= tblTrans.Browser
					,	[PluginID]			= tblTrans.PluginID
					,	[Flagged]			= tblTrans.Flagged
					,	[RuleSetID]			= tblTrans.RuleSetID
					,	[ResultType]		= tblTrans.ResultType
					,	[RuleVersionID]		= tblTrans.RuleVersionID
					,	[URL]				= tblTrans.URL
					,	[RuleName]			= tblRule.RuleName
					,	[ActionResult]		= tblTrans.ActionResult
				FROM		dbo.Transactions AS tblTrans WITH (NOLOCK)
				LEFT JOIN	@RuleSettings AS tblRule
						ON	tblTrans.RuleSetID = tblRule.RuleSetID
				WHERE	tblTrans.TransDate >= @fromDate
					AND	tblTrans.AccountID = @accountId
			) AS tbl
			WHERE	RowNum BETWEEN @skip AND @limit;

			INSERT INTO	#deviceIdTmp (DeviceId)
			SELECT	DISTINCT
					DeviceId
			FROM	#tableTmp WITH (NOLOCK)
			WHERE	DeviceId IS NOT NULL;

			SELECT	@DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS VARCHAR(50))
			FROM	#deviceIdTmp WITH (NOLOCK);

			INSERT INTO	#spResult (DeviceID, DeviceNo, OSName)
			EXECUTE	dbo.sp_DeviceInfoBylistDeviceID @DeviceIds = @DeviceIds, @subscriberId = @subscriberId;

			SELECT	[RowNum]			= tbl.RowNum
				,	[TransID]			= tbl.TransID
				,	[AccountID]			= tbl.AccountID
				,	[UserName]			= tbl.UserName
				,	[UserName2]			= tbl.UserName2
				,	[DeviceID]			= tbl.DeviceID
				,	[SubscriberID]		= tbl.SubscriberID
				,	[TransDate]			= tbl.TransDate
				,	[ActionName]		= tbl.ActionName
				,	[IP]				= tbl.IP
				,	[Country]			= tbl.Country
				,	[CountryCode]		= tbl.CountryCode
				,	[Region]			= tbl.Region
				,	[City]				= tbl.City
				,	[ServiceProvider]	= tbl.ServiceProvider
				,	[ISP]				= tbl.ISP
				,	[Browser]			= tbl.Browser
				,	[PluginID]			= tbl.PluginID
				,	[Flagged]			= tbl.Flagged
				,	[RuleSetID]			= tbl.RuleSetID
				,	[ResultType]		= tbl.ResultType
				,	[RuleVersionID]		= tbl.RuleVersionID
				,	[URL]				= tbl.URL
				,	[RuleName]			= tbl.RuleName
				,	[ActionResult]		= tbl.ActionResult
				,	[DeviceNo]			= ISNULL(tblDevice.DeviceNo, N'N/A')
				,	[OSName]			= ISNULL(tblDevice.OSName, N'N/A')
			FROM		#tableTmp AS tbl WITH (NOLOCK)
			LEFT JOIN	#spResult AS tblDevice WITH (NOLOCK)
					ON	tbl.DeviceId = tblDevice.DeviceId
			ORDER BY tbl.RowNum;
		END;
	END;
END;

GO
GRANT EXECUTE ON [dbo].[GetTransactionByAccountAndFromDate_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByAccountAndFromDate_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByAccountAndFromDate_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionByDeviceAndFromDate]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransactionByDeviceAndFromDate]
						@deviceNo			NVARCHAR(50)
					,	@fromDate			DATETIME		= NULL
					,	@skip				INT				= 0
					,	@limit				INT				= 25
					,	@totalRows			INT				= 0			OUTPUT
AS
/*
	Creator:	20130125@Bobby
	Task:		Retrieve all transactio by device and range of time
	Database:	FPSLICALL.FPS_SUB_xxx

	Revisions:
		- 20130426@Bobby:	add URL
		- 20160411@Bobby:	#55712 - Adding action result into some reports
		- 20190926@Billy:	Performance Tuning - [Redmine: #117671]
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE	@deviceID		INT				= 0
		,	@OSName			NVARCHAR(50)
		;


	DECLARE	@RuleSettings AS TABLE (
				RuleSetID		INT
			,	RuleName		NVARCHAR(150)
			,	PRIMARY KEY CLUSTERED (RuleSetID)
			);


	INSERT INTO	@RuleSettings
		(	RuleSetID, RuleName)
	SELECT	RuleSetID, RuleName
	FROM	OPENQUERY(FPSADMIN, N'\
SELECT	RuleSetID, RuleName
FROM	FPS_ADMIN.dbo.RuleSettings WITH (NOLOCK);');


	EXECUTE	dbo.sp_DeviceInfoByNo
				@deviceNo	= @deviceNo
			,	@deviceId	= @deviceId		OUTPUT
			,	@osName		= @OSName		OUTPUT
			;

	IF	@deviceID > 0
	BEGIN;
		-- select count
		SELECT	@totalRows = COUNT(1)
		FROM	dbo.Transactions AS trans WITH (NOLOCK)
		WHERE	trans.TransDate >= @fromDate
			AND	trans.DeviceID = @deviceId;

		IF	@totalRows > 0
		BEGIN;
			SELECT	RowNum, TransID, AccountID, UserName, UserName2, DeviceID, DeviceNo, OSName, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
				,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, RuleName, ActionResult
			FROM	(
				SELECT	[RowNum]			= ROW_NUMBER() OVER(ORDER BY tblTrans.TransDate DESC)
					,	[TransID]			= tblTrans.TransID
					,	[AccountID]			= tblTrans.AccountID
					,	[UserName]			= tblAccount.UserName
					,	[UserName2]			= tblAccount.UserName2
					,	[DeviceID]			= tblTrans.DeviceID
					,	[DeviceNo]			= @deviceNo
					,	[OSName]			= @OSName
					,	[SubscriberID]		= tblTrans.SubscriberID
					,	[TransDate]			= tblTrans.TransDate
					,	[ActionName]		= tblTrans.ActionName
					,	[IP]				= tblTrans.IP
					,	[Country]			= tblTrans.Country
					,	[CountryCode]		= tblTrans.CountryCode
					,	[Region]			= tblTrans.Region
					,	[City]				= tblTrans.City
					,	[ServiceProvider]	= tblTrans.ServiceProvider
					,	[ISP]				= tblTrans.ISP
					,	[Browser]			= tblTrans.Browser
					,	[PluginID]			= tblTrans.PluginID
					,	[Flagged]			= tblTrans.Flagged
					,	[RuleSetID]			= tblTrans.RuleSetID
					,	[ResultType]		= tblTrans.ResultType
					,	[RuleVersionID]		= tblTrans.RuleVersionID
					,	[URL]				= tblTrans.URL
					,	[RuleName]			= tblRule.RuleName
					,	[ActionResult]		= tblTrans.ActionResult
				FROM		dbo.Transactions AS tblTrans WITH (NOLOCK)
				LEFT JOIN	dbo.Accounts AS tblAccount WITH (NOLOCK)
						ON	tblTrans.AccountID = tblAccount.AccountID
				LEFT JOIN	@RuleSettings AS tblRule
						ON	tblTrans.RuleSetID = tblRule.RuleSetID
				WHERE	tblTrans.TransDate >= @fromDate
					AND	tblTrans.DeviceID = @deviceId
				) AS tbl
				WHERE	RowNum BETWEEN @skip AND @limit
				ORDER BY RowNum;
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionByDeviceAndFromDate] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByDeviceAndFromDate] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByDeviceAndFromDate] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionByDeviceAndFromDate_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransactionByDeviceAndFromDate_xtest]
						@deviceNo			NVARCHAR(50)
					,	@fromDate			DATETIME		= NULL
					,	@skip				INT				= 0
					,	@limit				INT				= 25
					,	@totalRows			INT				= 0			OUTPUT
AS
/*
	Creator:	20130125@Bobby
	Task:		Retrieve all transactio by device and range of time
	Database:	FPSLICALL.FPS_SUB_xxx

	Revisions:
		- 20130426@Bobby:	add URL
		- 20160411@Bobby:	#55712 - Adding action result into some reports
		- 20190926@Billy:	Performance Tuning - [Redmine: #117671]
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE	@deviceID		INT				= 0
		,	@OSName			NVARCHAR(50)
		;


	DECLARE	@RuleSettings AS TABLE (
				RuleSetID		INT
			,	RuleName		NVARCHAR(150)
			,	PRIMARY KEY CLUSTERED (RuleSetID)
			);


	INSERT INTO	@RuleSettings
		(	RuleSetID, RuleName)
	SELECT	RuleSetID, RuleName
	FROM	OPENQUERY(FPSADMIN, N'\
SELECT	RuleSetID, RuleName
FROM	FPS_ADMIN.dbo.RuleSettings WITH (NOLOCK);');


	EXECUTE	dbo.sp_DeviceInfoByNo
				@deviceNo	= @deviceNo
			,	@deviceId	= @deviceId		OUTPUT
			,	@osName		= @OSName		OUTPUT
			;

	IF	@deviceID > 0
	BEGIN;
		-- select count
		SELECT	@totalRows = COUNT(1)
		FROM	dbo.Transactions AS trans WITH (NOLOCK)
		WHERE	trans.TransDate >= @fromDate
			AND	trans.DeviceID = @deviceId;

		IF	@totalRows > 0
		BEGIN;
			SELECT	RowNum, TransID, AccountID, UserName, UserName2, DeviceID, DeviceNo, OSName, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
				,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, RuleName, ActionResult
			FROM	(
				SELECT	[RowNum]			= ROW_NUMBER() OVER(ORDER BY tblTrans.TransDate DESC)
					,	[TransID]			= tblTrans.TransID
					,	[AccountID]			= tblTrans.AccountID
					,	[UserName]			= tblAccount.UserName
					,	[UserName2]			= tblAccount.UserName2
					,	[DeviceID]			= tblTrans.DeviceID
					,	[DeviceNo]			= @deviceNo
					,	[OSName]			= @OSName
					,	[SubscriberID]		= tblTrans.SubscriberID
					,	[TransDate]			= tblTrans.TransDate
					,	[ActionName]		= tblTrans.ActionName
					,	[IP]				= tblTrans.IP
					,	[Country]			= tblTrans.Country
					,	[CountryCode]		= tblTrans.CountryCode
					,	[Region]			= tblTrans.Region
					,	[City]				= tblTrans.City
					,	[ServiceProvider]	= tblTrans.ServiceProvider
					,	[ISP]				= tblTrans.ISP
					,	[Browser]			= tblTrans.Browser
					,	[PluginID]			= tblTrans.PluginID
					,	[Flagged]			= tblTrans.Flagged
					,	[RuleSetID]			= tblTrans.RuleSetID
					,	[ResultType]		= tblTrans.ResultType
					,	[RuleVersionID]		= tblTrans.RuleVersionID
					,	[URL]				= tblTrans.URL
					,	[RuleName]			= tblRule.RuleName
					,	[ActionResult]		= tblTrans.ActionResult
				FROM		dbo.Transactions AS tblTrans WITH (NOLOCK)
				LEFT JOIN	dbo.Accounts AS tblAccount WITH (NOLOCK)
						ON	tblTrans.AccountID = tblAccount.AccountID
				LEFT JOIN	@RuleSettings AS tblRule
						ON	tblTrans.RuleSetID = tblRule.RuleSetID
				WHERE	tblTrans.TransDate >= @fromDate
					AND	tblTrans.DeviceID = @deviceId
				) AS tbl
				WHERE	RowNum BETWEEN @skip AND @limit
				ORDER BY RowNum;
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionByDeviceAndFromDate_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByDeviceAndFromDate_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionByDeviceAndFromDate_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionByID]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionByID]
	@id BIGINT
AS
/*
	Created: 20130123@kan.nguyen
	Task: Get transaction detail by its ID
	  DB: FPS_SUB
	Revisions:
	Param's Explanation:
	- @id: ID (primary key) of transaction
*/
	SET NOCOUNT ON;

	SELECT TOP 1 t.*,
				 a.UserName,
				 d.DeviceNo
	FROM   Transactions AS t WITH (NOLOCK)
		   LEFT OUTER JOIN
		   dbo.Accounts AS a WITH (NOLOCK)
		   ON (a.AccountID = t.AccountID)
		   LEFT OUTER JOIN
		   dbo.DevMaster AS d WITH (NOLOCK)
		   ON (d.DeviceID = t.DeviceID)
	WHERE  t.TransID = @id;
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountDeviceAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionsByAccountDeviceAndRangeTime]
	@deviceNo nvarchar(50), 
	@username nvarchar(50), 
	@fromDate datetime,
	@toDate datetime
AS

/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Get list trans by account,device and datetime
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceID int = 0
		, @accountID int = 0
		, @subscriberId int = 0;
	
	SELECT TOP 1 @accountID = AccountID
		, @subscriberId=SubscriberID 
	FROM dbo.Accounts WITH (NOLOCK) 
	WHERE UserName = @username;
	
	IF(@accountID > 0 AND @subscriberId > 0)
	BEGIN
		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceID output;

		IF(@deviceID > 0) 
		BEGIN
			SELECT trans.*, @deviceNo as DeviceNo, acc.UserName, acc.UserName2, sub.SubscriberName 
			FROM dbo.Transactions trans WITH (NOLOCK)
				INNER JOIN dbo.Accounts AS acc WITH (NOLOCK) ON trans.AccountID = acc.AccountID
				INNER JOIN rmt.Subscribers AS sub WITH (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
			WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
				AND trans.DeviceID = @deviceID 
				AND trans.AccountID = @accountID;
		END;
	END;	
	RETURN;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountDeviceAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountDeviceAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountDeviceAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountDeviceAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTransactionsByAccountDeviceAndRangeTime_xtest]
	@deviceNo nvarchar(50), 
	@username nvarchar(50), 
	@fromDate datetime,
	@toDate datetime
AS

/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Get list trans by account,device and datetime
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @deviceID int = 0
		, @accountID int = 0
		, @subscriberId int = 0
	
	SELECT TOP 1 @accountID = AccountID
		, @subscriberId=SubscriberID 
	FROM dbo.Accounts WITH (NOLOCK) 
	WHERE UserName = @username
	
	IF(@accountID > 0 AND @subscriberId > 0)
	BEGIN
																																																																																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceID output

		IF(@deviceID > 0) 
		BEGIN
			SELECT trans.*, @deviceNo as DeviceNo, acc.UserName, acc.UserName2, sub.SubscriberName 
			FROM dbo.Transactions trans WITH (NOLOCK)
				INNER JOIN dbo.Accounts AS acc WITH (NOLOCK) ON trans.AccountID = acc.AccountID
				INNER JOIN rmt.Subscribers AS sub WITH (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
			WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
				AND trans.DeviceID = @deviceID 
				AND trans.AccountID = @accountID
		END
	END	
	RETURN
END














GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountDeviceAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountDeviceAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountDeviceAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountIdsAndRange]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionsByAccountIdsAndRange]
	@accountIds VARCHAR(max)
	,@size INT = 15
	,@fromDate datetime = null
	,@toDate datetime = null
AS
/*
	Created: 20170622@Harvey.Nguyen
	Task: Retrieve data for detect Robot (AI)
	  DB: FPS_SUB_.
  
	Revisions:

	Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;

    DECLARE @sql NVARCHAR(max);

	IF(@fromDate IS NULL)
		SET @fromDate  = CAST(GETDATE() as date);

	IF(@toDate IS NULL)
		SET @toDate = GETDATE();

	SET @sql = 'SELECT tmp.TransID, tmp.AccountID, tmp.DeviceID, tmp.Flagged, tmp.IP, tmp.TransDate, tmp.UserAgent
		FROM (
			SELECT ROW_NUMBER() OVER (
					PARTITION BY t.AccountID ORDER BY t.TransID DESC
					) AS RowNumber
				,*
				FROM Transactions t WITH (NOLOCK)
				WHERE t.AccountID IN ('+ @accountIds +') AND t.TransDate BETWEEN '''+ CONVERT(NVARCHAR(MAX),@fromDate)+''' AND '''+CONVERT(NVARCHAR(MAX),@toDate)+'''
				) tmp
		WHERE tmp.RowNumber <= ' + CONVERT(NVARCHAR(MAX),@size);
	PRINT @sql;
	EXEC sp_executesql @sql;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountIdsAndRange] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountIdsAndRange_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.GetTransactionsByAccountIdsAndRange_xtest    Script Date: 30/06/2017 3:48:46 PM ******/
CREATE PROCEDURE [dbo].[GetTransactionsByAccountIdsAndRange_xtest]

	@accountIds VARCHAR(max)

	,@size INT = 15

	,@fromDate datetime = null

	,@toDate datetime = null

AS

/*

	Created: 20170622@Harvey.Nguyen

	Task: Retrieve data for detect Robot (AI)

	  DB: FPS_SUB_.

  

	Revisions:

    

	Param's Explanation:



*/

BEGIN

	SET NOCOUNT ON;



    DECLARE @sql NVARCHAR(max)

	IF(@fromDate IS NULL)
		SET @fromDate  = CAST(GETDATE() as date)

	IF(@toDate IS NULL)
		SET @toDate = GETDATE()

	SET @sql = 'SELECT tmp.TransID, tmp.AccountID, tmp.DeviceID, tmp.Flagged, tmp.IP, tmp.TransDate, tmp.UserAgent

		FROM (

			SELECT ROW_NUMBER() OVER (

					PARTITION BY t.AccountID ORDER BY t.TransID DESC

					) AS RowNumber

				,*

				FROM Transactions t WITH (NOLOCK)

				WHERE t.AccountID IN ('+ @accountIds +') AND t.TransDate BETWEEN '''+ CONVERT(NVARCHAR(MAX),@fromDate)+''' AND '''+CONVERT(NVARCHAR(MAX),@toDate)+'''

				) tmp

		WHERE tmp.RowNumber <= ' + CONVERT(NVARCHAR(MAX),@size)

	PRINT @sql

	EXEC sp_executesql @sql

END



GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountIdsAndRange_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountsDeviceAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionsByAccountsDeviceAndRangeTime] 
	 @accountIds	VARCHAR(max)
	,@deviceId		INT
	,@fromDate		DATETIME
	,@toDate		DATETIME
	,@subName		VARCHAR(50)
AS
/*
	Created: 20190619@Harvey
	Task: Get transaction by account list and device
	  DB: FPS_SUB_FPS
  
	Revisions:
		- 20190619@Harvey: init SPs  (#114371)
	Param's Explanation:  
	
	exec [GetTransactionsByAccountsDeviceAndRangeTime] '3637,3637,37143',65743858,'12/25/2018 12:00:00 AM','07/06/2019 12:00:00 AM','FPS_SUB_FPS'
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceNo	NVARCHAR(50)
	CREATE TABLE #accountIdTable (val VARCHAR(50))

	IF (@accountIds <> '')
	BEGIN
		INSERT INTO #accountIdTable
		SELECT Item
		FROM dbo.SplitString(@accountIds, ',')
	END


	SELECT @deviceNo = DeviceNo
	FROM [FPSDEV].FPS_DEV.[dbo].[DevMaster] devMaster WITH (NOLOCK)
	WHERE DeviceId = @deviceId

	SELECT [TransID]
		,trans.[AccountID]
		,acc.UserName
		,acc.UserName2
		,trans.[DeviceID]
		,@deviceNo 'DeviceNo'
		,trans.[SubscriberID]
		,@subName 'SubscriberName'
		,[TransDate]
		,[ActionName]
		,[IP]
		,[Country]
		,[CountryCode]
		,[Region]
		,[City]
		,[ServiceProvider]
		,[ISP]
		,[Browser]
		,[PluginID]
		,[Flagged]
		,[RuleSetID]
		,[ResultType]
		,[RuleVersionID]
		,[URL]
		,[ActionResult]
		,[UserAgent]
	FROM Transactions trans WITH (NOLOCK)
	INNER JOIN #accountIdTable tempAcc WITH (NOLOCK) ON trans.AccountID = tempAcc.val
	INNER JOIN Accounts acc WITH (NOLOCK) ON tempAcc.val = acc.AccountID
	WHERE trans.DeviceID = @deviceId
		AND trans.TransDate BETWEEN @fromDate
			AND @toDate

	DROP TABLE #accountIdTable
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountsDeviceAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountsDeviceAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountsDeviceAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByAccountsDeviceAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionsByAccountsDeviceAndRangeTime_xtest] 
	 @accountIds	VARCHAR(max)
	,@deviceId		INT
	,@fromDate		DATETIME
	,@toDate		DATETIME
	,@subName		VARCHAR(50)
AS
/*
	Created: 20190619@Harvey
	Task: Get transaction by account list and device
	  DB: FPS_SUB_FPS
  
	Revisions:
		- 20190619@Harvey: init SPs  (#114371)
	Param's Explanation:  
	
	exec [GetTransactionsByAccountsDeviceAndRangeTime_xtest] '3637,3637,37143',65743858,'12/25/2018 12:00:00 AM','07/06/2019 12:00:00 AM','FPS_SUB_FPS'
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceNo	NVARCHAR(50)
	CREATE TABLE #accountIdTable (val VARCHAR(50))

	IF (@accountIds <> '')
	BEGIN
		INSERT INTO #accountIdTable
		SELECT Item
		FROM dbo.SplitString(@accountIds, ',')
	END


	SELECT @deviceNo = DeviceNo
	FROM [FPSDEV].FPS_DEV.[dbo].[DevMaster] devMaster WITH (NOLOCK)
	WHERE DeviceId = @deviceId

	SELECT [TransID]
		,trans.[AccountID]
		,acc.UserName
		,acc.UserName2
		,trans.[DeviceID]
		,@deviceNo 'DeviceNo'
		,trans.[SubscriberID]
		,@subName 'SubscriberName'
		,[TransDate]
		,[ActionName]
		,[IP]
		,[Country]
		,[CountryCode]
		,[Region]
		,[City]
		,[ServiceProvider]
		,[ISP]
		,[Browser]
		,[PluginID]
		,[Flagged]
		,[RuleSetID]
		,[ResultType]
		,[RuleVersionID]
		,[URL]
		,[ActionResult]
		,[UserAgent]
	FROM Transactions trans WITH (NOLOCK)
	INNER JOIN #accountIdTable tempAcc WITH (NOLOCK) ON trans.AccountID = tempAcc.val
	INNER JOIN Accounts acc WITH (NOLOCK) ON tempAcc.val = acc.AccountID
	WHERE trans.DeviceID = @deviceId
		AND trans.TransDate BETWEEN @fromDate
			AND @toDate

	DROP TABLE #accountIdTable
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountsDeviceAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountsDeviceAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByAccountsDeviceAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByDeviceAndRangeTime]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionsByDeviceAndRangeTime]
	@deviceNo nvarchar(50), 
	@fromDate datetime,
	@toDate datetime
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Get list trans by device and datetime
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/

BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceID bigint = 0, @DbName nvarchar(128);
	

	EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output;

	IF(@deviceID > 0) 
	BEGIN
		SELECT trans.*, @deviceNo AS DeviceNo, acc.UserName, acc.UserName2, sub.SubscriberName 
		FROM dbo.Transactions trans WITH (NOLOCK)
			LEFT JOIN dbo.Accounts acc WITH (NOLOCK) ON trans.AccountID = acc.AccountID
			INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.DeviceID = @deviceID;

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByDeviceAndRangeTime] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByDeviceAndRangeTime] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByDeviceAndRangeTime] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsByDeviceAndRangeTime_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTransactionsByDeviceAndRangeTime_xtest]
	@deviceNo nvarchar(50), 
	@fromDate datetime,
	@toDate datetime
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Get list trans by device and datetime
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/

BEGIN
	SET NOCOUNT ON

	DECLARE @deviceID bigint = 0, @DbName nvarchar(128)
	

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output

	IF(@deviceID > 0) 
	BEGIN
		SELECT trans.*, @deviceNo AS DeviceNo, acc.UserName, acc.UserName2, sub.SubscriberName 
		FROM dbo.Transactions trans WITH (NOLOCK)
			LEFT JOIN dbo.Accounts acc WITH (NOLOCK) ON trans.AccountID = acc.AccountID
			INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON trans.SubscriberID = sub.SubscriberID
		WHERE (trans.TransDate >= @fromDate AND trans.TransDate <= @toDate)
			AND trans.DeviceID = @deviceID

		RETURN
	END
END














GO
GRANT EXECUTE ON [dbo].[GetTransactionsByDeviceAndRangeTime_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByDeviceAndRangeTime_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsByDeviceAndRangeTime_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsHaveNullIPByDate]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTransactionsHaveNullIPByDate]
	@Date DATETIME
AS
/*
Created:20150907@Jacob
Task: Recover missing IP information
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
EXEC [GetTransactionsHaveNullIPByDate] '2015-08-03'
*/

BEGIN
	SET NOCOUNT ON;
	DECLARE @EndDate DATETIME;
	SET @EndDate = DATEADD(dd, 1, @Date);

	SELECT DISTINCT IP 
	FROM Transactions (NOLOCK)
	WHERE Country = '-' 
		AND CountryCode= '-'  
		AND Region= '-'  
		AND City= '-' 
		AND ISP= '-' 
		AND TransDate BETWEEN @Date AND @EndDate;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransactionsHaveNullIPByDate] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransactionsHaveNullIPByDate] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsHaveNullIPByDate_xpre]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTransactionsHaveNullIPByDate_xpre]
	@Date DATETIME
AS
/*
Created:20150907@Jacob
Task: Recover missing IP information
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
EXEC [GetTransactionsHaveNullIPByDate_xpre] '2015-08-03'
*/

BEGIN
	SET NOCOUNT ON
	DECLARE @EndDate DATETIME
	SET @EndDate = DATEADD(dd, 1, @Date)

	SELECT DISTINCT IP 
	FROM Transactions (NOLOCK)
	WHERE Country = '-' 
		AND CountryCode= '-'  
		AND Region= '-'  
		AND City= '-' 
		AND ISP= '-' 
		AND TransDate BETWEEN @Date AND @EndDate
END














GO
GRANT EXECUTE ON [dbo].[GetTransactionsHaveNullIPByDate_xpre] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransactionsHaveNullIPByDate_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetTransactionsHaveNullIPByDate_xtest]
	@Date DATETIME
AS
/*
Created:20150907@Jacob
Task: Recover missing IP information
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
EXEC [GetTransactionsHaveNullIPByDate_xtest] '2015-08-03'
*/

BEGIN
	SET NOCOUNT ON
	DECLARE @EndDate DATETIME
	SET @EndDate = DATEADD(dd, 1, @Date)

	SELECT DISTINCT IP 
	FROM Transactions (NOLOCK)
	WHERE Country = '-' 
		AND CountryCode= '-'  
		AND Region= '-'  
		AND City= '-' 
		AND ISP= '-' 
		AND TransDate BETWEEN @Date AND @EndDate
END














GO
GRANT EXECUTE ON [dbo].[GetTransactionsHaveNullIPByDate_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransDetailById]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransDetailById]
						@TransId		BIGINT
AS
/*
	Creator:	20130120@Bobby
	Task:		Get transaction detail by ID - [Redmine: #000000]
	Database:	FPSLICALL.FPS_SUB_FPS

	Revisions:
		- 20130120@Bobby:	Initial - [Redmine: #000000]
		- 20130306@Bobby:	Get ruleset result - [Redmine: #000000]
		- 20130705@Bobby:	Update rmt schema & OPENQUERY - [Redmine: #000000]
		- 20190729@Billy:	Refactor & Performance Tuning - [Redmine: #117671]
		- 20200108@Thai:	Update the length of data type - [Redmine: #126654]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;

	DECLARE	@SubscriberDB	NVARCHAR(128)
		,	@SubscriberId	INT
		,	@SubscriberName	NVARCHAR(50)
		,	@DeviceSvr		NVARCHAR(128)
		,	@DeviceDB		NVARCHAR(128)
		,	@DeviceId		INT
		,	@DeviceNo		NVARCHAR(50)
		,	@OSName			NVARCHAR(50)
		;

	DECLARE	@GetDeviceSP	NVARCHAR(256)
		;

	DECLARE	@Transactions AS TABLE (
				TransID			BIGINT			NOT NULL
			,	AccountID		INT				NULL
			,	DeviceID		BIGINT			NULL
			,	SubscriberID	INT				NULL
			,	TransDate		DATETIME		NULL
			,	ActionName		NVARCHAR(50)	NULL
			,	IP				NVARCHAR(20)	NULL
			,	Country			NVARCHAR(64)	NULL
			,	CountryCode		NVARCHAR(20)	NULL
			,	Region			NVARCHAR(128)	NULL
			,	City			NVARCHAR(128)	NULL
			,	ServiceProvider	NVARCHAR(50)	NULL
			,	ISP				NVARCHAR(256)	NULL
			,	Browser			NVARCHAR(50)	NULL
			,	PluginID		BIGINT			NULL
			,	Flagged			TINYINT			NULL
			,	RuleSetID		INT				NULL
			,	ResultType		TINYINT			NULL
			,	RuleVersionID	NVARCHAR(150)	NULL
			,	URL				NVARCHAR(250)	NULL
			,	ActionResult	NVARCHAR(100)	NULL
			,	UserAgent		NVARCHAR(200)	NULL
			,	UserName		NVARCHAR(50)	NULL
			,	UserName2		NVARCHAR(50)	NULL
			,	SubscriberName	NVARCHAR(50)	NULL
			,	DeviceNo		NVARCHAR(50)	NULL
			,	OSName			NVARCHAR(50)	NULL
			);


	-- Get metadata of Subscriber --
	SELECT	@SubscriberDB = DB_NAME();

	EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo
				@SubscriberId	= @SubscriberId		OUTPUT
			,	@SubscriberName	= @SubscriberName	OUTPUT
			,	@SubscriberDB	= @SubscriberDB
			,	@DeviceSvr		= @DeviceSvr		OUTPUT
			,	@DeviceDB		= @DeviceDB			OUTPUT
			;


	-- Build device procedure name --
	SELECT	@GetDeviceSP = QUOTENAME(@DeviceSvr) + N'.' + QUOTENAME(@DeviceDB) + N'.dbo.Device_GetDeviceInfo'
		;


	-- Get transaction info --
	INSERT INTO	@Transactions
		(	TransID, AccountID, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
		,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, ActionResult, UserAgent, UserName, UserName2, SubscriberName)
	SELECT	TOP(1)
			trn.TransID, trn.AccountID, trn.DeviceID, trn.SubscriberID, trn.TransDate, trn.ActionName, trn.IP, trn.Country, trn.CountryCode, trn.Region, trn.City, trn.ServiceProvider, trn.ISP
		,	trn.Browser, trn.PluginID, trn.Flagged, trn.RuleSetID, trn.ResultType, trn.RuleVersionID, trn.URL, trn.ActionResult, trn.UserAgent, acc.UserName, acc.UserName2, @SubscriberName
	FROM		dbo.Transactions AS trn WITH (NOLOCK)
	LEFT JOIN	dbo.Accounts AS acc WITH (NOLOCK)
			ON	trn.AccountID = acc.AccountID
	WHERE	trn.TransID = @TransId;


	-- Get device info --
	SELECT	@DeviceId = DeviceID
	FROM	@Transactions;

	EXECUTE	@GetDeviceSP
				@DeviceId		= @DeviceId
			,	@DeviceNo		= @DeviceNo			OUTPUT
			,	@OSName			= @OSName			OUTPUT
			;

	UPDATE	@Transactions
	SET		DeviceNo	= ISNULL(@DeviceNo, N'N/A')
		,	OSName		= ISNULL(@OSName, N'N/A')
	WHERE	TransID = @TransId;


	-- Return result --
	SELECT	TransID, AccountID, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
		,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, ActionResult, UserAgent, UserName, UserName2, SubscriberName, DeviceNo, OSName
	FROM	@Transactions;

	SELECT	RuleSetDetailID
	FROM	dbo.TransRuleSets WITH (NOLOCK)
	WHERE	TransID = @TransId;
END;

GO
GRANT EXECUTE ON [dbo].[GetTransDetailById] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransDetailById_xpre]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransDetailById_xpre]
						@TransId		BIGINT
AS
/*
	Creator:	20130120@Bobby
	Task:		Get transaction detail by ID - [Redmine: #000000]
	Database:	FPSLICALL.FPS_SUB_FPS

	Revisions:
		- 20130120@Bobby:	Initial - [Redmine: #000000]
		- 20130306@Bobby:	Get ruleset result - [Redmine: #000000]
		- 20130705@Bobby:	Update rmt schema & OPENQUERY - [Redmine: #000000]
		- 20190729@Billy:	Refactor & Performance Tuning - [Redmine: #117671]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;

	DECLARE	@SubscriberDB	NVARCHAR(128)
		,	@SubscriberId	INT
		,	@SubscriberName	NVARCHAR(50)
		,	@DeviceSvr		NVARCHAR(128)
		,	@DeviceDB		NVARCHAR(128)
		,	@DeviceId		INT
		,	@DeviceNo		NVARCHAR(50)
		,	@OSName			NVARCHAR(50)
		;

	DECLARE	@GetDeviceSP	NVARCHAR(256)
		;

	DECLARE	@Transactions AS TABLE (
				TransID			BIGINT			NOT NULL
			,	AccountID		INT				NULL
			,	DeviceID		BIGINT			NULL
			,	SubscriberID	INT				NULL
			,	TransDate		DATETIME		NULL
			,	ActionName		NVARCHAR(50)	NULL
			,	IP				NVARCHAR(20)	NULL
			,	Country			NVARCHAR(50)	NULL
			,	CountryCode		NVARCHAR(20)	NULL
			,	Region			NVARCHAR(50)	NULL
			,	City			NVARCHAR(50)	NULL
			,	ServiceProvider	NVARCHAR(50)	NULL
			,	ISP				NVARCHAR(250)	NULL
			,	Browser			NVARCHAR(50)	NULL
			,	PluginID		BIGINT			NULL
			,	Flagged			TINYINT			NULL
			,	RuleSetID		INT				NULL
			,	ResultType		TINYINT			NULL
			,	RuleVersionID	NVARCHAR(150)	NULL
			,	URL				NVARCHAR(250)	NULL
			,	ActionResult	NVARCHAR(100)	NULL
			,	UserAgent		NVARCHAR(200)	NULL
			,	UserName		NVARCHAR(50)	NULL
			,	UserName2		NVARCHAR(50)	NULL
			,	SubscriberName	NVARCHAR(50)	NULL
			,	DeviceNo		NVARCHAR(50)	NULL
			,	OSName			NVARCHAR(50)	NULL
			);


	-- Get metadata of Subscriber --
	SELECT	@SubscriberDB = DB_NAME();

	EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo_xpre
				@SubscriberId	= @SubscriberId		OUTPUT
			,	@SubscriberName	= @SubscriberName	OUTPUT
			,	@SubscriberDB	= @SubscriberDB
			,	@DeviceSvr		= @DeviceSvr		OUTPUT
			,	@DeviceDB		= @DeviceDB			OUTPUT
			;


	-- Build device procedure name --
	SELECT	@GetDeviceSP = QUOTENAME(@DeviceSvr) + N'.' + QUOTENAME(@DeviceDB) + N'.dbo.Device_GetDeviceInfo'
		;


	-- Get transaction info --
	INSERT INTO	@Transactions
		(	TransID, AccountID, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
		,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, ActionResult, UserAgent, UserName, UserName2, SubscriberName)
	SELECT	TOP(1)
			trn.TransID, trn.AccountID, trn.DeviceID, trn.SubscriberID, trn.TransDate, trn.ActionName, trn.IP, trn.Country, trn.CountryCode, trn.Region, trn.City, trn.ServiceProvider, trn.ISP
		,	trn.Browser, trn.PluginID, trn.Flagged, trn.RuleSetID, trn.ResultType, trn.RuleVersionID, trn.URL, trn.ActionResult, trn.UserAgent, acc.UserName, acc.UserName2, @SubscriberName
	FROM		dbo.Transactions AS trn WITH (NOLOCK)
	LEFT JOIN	dbo.Accounts AS acc WITH (NOLOCK)
			ON	trn.AccountID = acc.AccountID
	WHERE	trn.TransID = @TransId;


	-- Get device info --
	SELECT	@DeviceId = DeviceID
	FROM	@Transactions;

	EXECUTE	@GetDeviceSP
				@DeviceId		= @DeviceId
			,	@DeviceNo		= @DeviceNo			OUTPUT
			,	@OSName			= @OSName			OUTPUT
			;

	UPDATE	@Transactions
	SET		DeviceNo	= ISNULL(@DeviceNo, N'N/A')
		,	OSName		= ISNULL(@OSName, N'N/A')
	WHERE	TransID = @TransId;


	-- Return result --
	SELECT	TransID, AccountID, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
		,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, ActionResult, UserAgent, UserName, UserName2, SubscriberName, DeviceNo, OSName
	FROM	@Transactions;

	SELECT	RuleSetDetailID
	FROM	dbo.TransRuleSets WITH (NOLOCK)
	WHERE	TransID = @TransId;
END;
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById_xpre] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById_xpre] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById_xpre] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[GetTransDetailById_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[GetTransDetailById_xtest]
						@TransId		BIGINT
AS
/*
	Creator:	20130120@Bobby
	Task:		Get transaction detail by ID - [Redmine: #000000]
	Database:	FPSLICALL.FPS_SUB_FPS

	Revisions:
		- 20130120@Bobby:	Initial - [Redmine: #000000]
		- 20130306@Bobby:	Get ruleset result - [Redmine: #000000]
		- 20130705@Bobby:	Update rmt schema & OPENQUERY - [Redmine: #000000]
		- 20190729@Billy:	Refactor & Performance Tuning - [Redmine: #117671]
		- 20200108@Thai:	Update the length of data type - [Redmine: #126654]

	Developer's Notes:
		- @Example:			NULL		- Explaination [DEFAULT]

*/
BEGIN;
	SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	SET NOCOUNT ON;

	DECLARE	@SubscriberDB	NVARCHAR(128)
		,	@SubscriberId	INT
		,	@SubscriberName	NVARCHAR(50)
		,	@DeviceSvr		NVARCHAR(128)
		,	@DeviceDB		NVARCHAR(128)
		,	@DeviceId		INT
		,	@DeviceNo		NVARCHAR(50)
		,	@OSName			NVARCHAR(50)
		;

	DECLARE	@GetDeviceSP	NVARCHAR(256)
		;

	DECLARE	@Transactions AS TABLE (
				TransID			BIGINT			NOT NULL
			,	AccountID		INT				NULL
			,	DeviceID		BIGINT			NULL
			,	SubscriberID	INT				NULL
			,	TransDate		DATETIME		NULL
			,	ActionName		NVARCHAR(50)	NULL
			,	IP				NVARCHAR(20)	NULL
			,	Country			NVARCHAR(64)	NULL
			,	CountryCode		NVARCHAR(20)	NULL
			,	Region			NVARCHAR(128)	NULL
			,	City			NVARCHAR(128)	NULL
			,	ServiceProvider	NVARCHAR(50)	NULL
			,	ISP				NVARCHAR(256)	NULL
			,	Browser			NVARCHAR(50)	NULL
			,	PluginID		BIGINT			NULL
			,	Flagged			TINYINT			NULL
			,	RuleSetID		INT				NULL
			,	ResultType		TINYINT			NULL
			,	RuleVersionID	NVARCHAR(150)	NULL
			,	URL				NVARCHAR(250)	NULL
			,	ActionResult	NVARCHAR(100)	NULL
			,	UserAgent		NVARCHAR(200)	NULL
			,	UserName		NVARCHAR(50)	NULL
			,	UserName2		NVARCHAR(50)	NULL
			,	SubscriberName	NVARCHAR(50)	NULL
			,	DeviceNo		NVARCHAR(50)	NULL
			,	OSName			NVARCHAR(50)	NULL
			);


	-- Get metadata of Subscriber --
	SELECT	@SubscriberDB = DB_NAME();

	EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo
				@SubscriberId	= @SubscriberId		OUTPUT
			,	@SubscriberName	= @SubscriberName	OUTPUT
			,	@SubscriberDB	= @SubscriberDB
			,	@DeviceSvr		= @DeviceSvr		OUTPUT
			,	@DeviceDB		= @DeviceDB			OUTPUT
			;


	-- Build device procedure name --
	SELECT	@GetDeviceSP = QUOTENAME(@DeviceSvr) + N'.' + QUOTENAME(@DeviceDB) + N'.dbo.Device_GetDeviceInfo'
		;


	-- Get transaction info --
	INSERT INTO	@Transactions
		(	TransID, AccountID, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
		,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, ActionResult, UserAgent, UserName, UserName2, SubscriberName)
	SELECT	TOP(1)
			trn.TransID, trn.AccountID, trn.DeviceID, trn.SubscriberID, trn.TransDate, trn.ActionName, trn.IP, trn.Country, trn.CountryCode, trn.Region, trn.City, trn.ServiceProvider, trn.ISP
		,	trn.Browser, trn.PluginID, trn.Flagged, trn.RuleSetID, trn.ResultType, trn.RuleVersionID, trn.URL, trn.ActionResult, trn.UserAgent, acc.UserName, acc.UserName2, @SubscriberName
	FROM		dbo.Transactions AS trn WITH (NOLOCK)
	LEFT JOIN	dbo.Accounts AS acc WITH (NOLOCK)
			ON	trn.AccountID = acc.AccountID
	WHERE	trn.TransID = @TransId;


	-- Get device info --
	SELECT	@DeviceId = DeviceID
	FROM	@Transactions;

	EXECUTE	@GetDeviceSP
				@DeviceId		= @DeviceId
			,	@DeviceNo		= @DeviceNo			OUTPUT
			,	@OSName			= @OSName			OUTPUT
			;

	UPDATE	@Transactions
	SET		DeviceNo	= ISNULL(@DeviceNo, N'N/A')
		,	OSName		= ISNULL(@OSName, N'N/A')
	WHERE	TransID = @TransId;


	-- Return result --
	SELECT	TransID, AccountID, DeviceID, SubscriberID, TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP
		,	Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL, ActionResult, UserAgent, UserName, UserName2, SubscriberName, DeviceNo, OSName
	FROM	@Transactions;

	SELECT	RuleSetDetailID
	FROM	dbo.TransRuleSets WITH (NOLOCK)
	WHERE	TransID = @TransId;
END;

GO
GRANT EXECUTE ON [dbo].[GetTransDetailById_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[GetTransDetailById_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsAccountDetail]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsAccountDetail]
	@username nvarchar(50), 
	@username2 nvarchar(50),
	@subscriberId int,
	@createdDate datetime = NULL,
	@accountId int = 0 OUTPUT
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Ins an a new account info
DB: FPS_SUB
  
Revisions:
	- bobby@20130523: adding created date param
	- bobby@20140604: Check UserName is NULL to support filer index IX_UserName2
Param's Explanation:
*/

BEGIN
	SET NOCOUNT ON;
	SET @accountId = 0;

	IF (
			LEN(@username) > 1
			AND @subscriberId > 0
			)
	BEGIN
		IF (@createdDate IS NULL)
			SET @createdDate = GETDATE();
		SET @username2 = CASE 
				WHEN LEN(@username2) = 0 THEN NULL
				ELSE @username2
				END;
		IF (
				NOT EXISTS (
					SELECT TOP 1 1
					FROM dbo.Accounts WITH (NOLOCK)
					WHERE UserName = @username
					)
				AND
				(@username2 IS NULL
					OR
					NOT EXISTS (
						SELECT TOP 1 1
						FROM dbo.Accounts WITH (NOLOCK)
						WHERE UserName2 = @username2
						)
					)
				)
		BEGIN
			INSERT INTO dbo.Accounts (
				UserName
				,UserName2
				,SubscriberID
				,CreatedDate
				)
			VALUES (
				@username
				,@username2
				,@subscriberId
				,@createdDate
				);

			SET @accountId = SCOPE_IDENTITY();
		END;
	END;
	RETURN 0;
END;
GO
GRANT EXECUTE ON [dbo].[InsAccountDetail] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsAccountDetail] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsAccountDetail] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsAccountDetail_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsAccountDetail_xtest]
	@username nvarchar(50), 
	@username2 nvarchar(50),
	@subscriberId int,
	@createdDate datetime = NULL,
	@accountId int = 0 OUTPUT
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Ins an a new account info
DB: FPS_SUB
  
Revisions:
- bobby@20130523: adding created date param
Param's Explanation:
*/

BEGIN

	SET NOCOUNT ON

	IF(LEN(@username) > 1 AND @subscriberId > 0 )
	BEGIN

		IF(@createdDate IS NULL)
			SET @createdDate = GETDATE()

		INSERT INTO dbo.Accounts(
			UserName,UserName2,SubscriberID,CreatedDate
		)
		VALUES(
			@username,@username2,@subscriberId,@createdDate
		)

		SET @accountId=@@IDENTITY

		RETURN
	END
END














GO
GRANT EXECUTE ON [dbo].[InsAccountDetail_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsAccountDetail_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsAccountDetail_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertTransactionUserAgent]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTransactionUserAgent]    
    @transid int,
    @userAgent varchar(max)
AS

/*
Created:20150731@razor.nguyen
Task: Calcalute the rate from mobile
DB: FPS_SUB
  
Revisions:    
    
Param's Explanation:
    
*/
BEGIN
    SET NOCOUNT ON;

    -- insert into trans table
    INSERT INTO dbo.TransactionUserAgent ( TransID, UserAgent)
    VALUES (@transid,@userAgent);
    
END;
GO
GRANT EXECUTE ON [dbo].[InsertTransactionUserAgent] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsertTransactionUserAgent] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsertTransactionUserAgent] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsNewAssociation]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsNewAssociation]
	@DeviceID INT, 
	@AccountID INT,
	@CreatedDate DATETIME = NULL,
	@LastAccessedDate DATETIME = NULL,
	@FpsAssId INT = 0 OUT
AS
/*
	Created:20130120@Bobby
	Task: Migrate fps site to SQL
	- Ins a new association
	DB: FPS_SUB
  
	Revisions:
		- 20191127@Thai: Return fpsAssId param (#124222)
		- 20200605@Thai: Work around for inserting new association (#124738)

	Param's Explanation:
	
	Exec InsNewAssociation 11,224,'2019-11-27 16:31:41.000','2019-11-27 16:31:41.000'
*/
BEGIN

	SET NOCOUNT ON;
		
	IF NOT EXISTS (SELECT TOP 1 1 
					FROM dbo.Associations WITH (NOLOCK) 
					WHERE DeviceID = @DeviceID AND AccountID = @AccountID)
	BEGIN		
		INSERT INTO dbo.Associations (
			DeviceID,
			AccountID,
			CreatedDate,
			LastAccessedDate
		)
		VALUES (
			@DeviceID,
			@AccountID,
			@CreatedDate,
			@LastAccessedDate);

		SET @FpsAssId = SCOPE_IDENTITY();

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[InsNewAssociation] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewAssociation] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewAssociation] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsNewAssociation_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsNewAssociation_xtest]
	@DeviceID INT, 
	@AccountID INT,
	@CreatedDate DATETIME = NULL,
	@LastAccessedDate DATETIME = NULL,
	@FpsAssId INT = 0 OUT
AS
/*
	Created:20130120@Bobby
	Task: Migrate fps site to SQL
	- Ins a new association
	DB: FPS_SUB
  
	Revisions:
		- 20191127@Thai: Return fpsAssId param (#124222)
		- 20200605@Thai: Work around for inserting new association (#124738)

	Param's Explanation:
	
	Exec InsNewAssociation_xtest 11,224,'2019-11-27 16:31:41.000','2019-11-27 16:31:41.000'
*/
BEGIN

	SET NOCOUNT ON;
		
	IF NOT EXISTS (SELECT TOP 1 1 
					FROM dbo.Associations WITH (NOLOCK) 
					WHERE DeviceID = @DeviceID AND AccountID = @AccountID)
	BEGIN		
		INSERT INTO dbo.Associations (
			DeviceID,
			AccountID,
			CreatedDate,
			LastAccessedDate
		)
		VALUES (
			@DeviceID,
			@AccountID,
			@CreatedDate,
			@LastAccessedDate);

		SET @FpsAssId = SCOPE_IDENTITY();

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[InsNewAssociation_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewAssociation_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewAssociation_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsNewTrans]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsNewTrans]
	@AccountID int, 
	@DeviceID int, 
	@SubscriberID int, 
	@TransDate datetime, 
	@ActionName nvarchar(50), 
	@ActionResult nvarchar(100),
	@IP nvarchar(50), 
	@Country nvarchar(50), 
	@CountryCode nvarchar(50),
	@Region nvarchar(100), 
	@City nvarchar(100)='', 
	@Browser nvarchar(50), 
	@PluginID bigint = 0, 
	@Flagged int = 0, 
	@RuleSetID int = NULL, 
	@ResultType int = 0,
	@RuleVersionID nvarchar(150) = NULL,
	@RuleIds nvarchar(250) = '',
	@URL nvarchar(250) = NULL,
	@ISP nvarchar(250) = NULL,
	@UserAgent NVARCHAR(200) = NULL,
	@transid int OUTPUT
AS

/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Ins a new trans
DB: FPS_SUB
  
Revisions:
	- 20130305: add RuleSet
	- 20130426: @bobby add URL
	-20130705@Bobby.Nguyen: Update rmt schema
	- 20150622@razor.nguyen: insert action result
	- 20160328@bobby.nguyen: #54919 - add more UserAgent info
Param's Explanation:
	- @ResultType: 0:NONE | 1:ALLOW | 2:REVIEW | 3:DENY
*/
BEGIN
	SET NOCOUNT ON;


	-- insert into trans table
	INSERT INTO dbo.Transactions (
		AccountID,ActionName,ActionResult, Browser,Country,CountryCode,DeviceID,Flagged,
		IP,PluginID,Region,City,ResultType,RuleSetID,RuleVersionID,SubscriberID,TransDate,URL,ISP,UserAgent
	)
	VALUES (
		@AccountID,@ActionName,@ActionResult, @Browser,@Country,@CountryCode,@DeviceID,@Flagged,
		@IP,@PluginID,@Region,@City,@ResultType,@RuleSetID,@RuleVersionID,@SubscriberID,@TransDate,@URL,@ISP,@UserAgent
	);

	SET @transid = SCOPE_IDENTITY();
	IF(@transid > 0 AND @ResultType > 0) 
	BEGIN
		INSERT INTO dbo.TransRuleSets(TransID, RuleSetDetailID)
		SELECT @transid, * FROM dbo.Split(@ruleIds, ',');
	END;
END;
GO
GRANT EXECUTE ON [dbo].[InsNewTrans] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewTrans] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewTrans] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsNewTrans_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsNewTrans_xtest]
	@AccountID int, 
	@DeviceID int, 
	@SubscriberID int, 
	@TransDate datetime, 
	@ActionName nvarchar(50), 
	@ActionResult nvarchar(100),
	@IP nvarchar(50), 
	@Country nvarchar(50), 
	@CountryCode nvarchar(50),
	@Region nvarchar(100), 
	@City nvarchar(100)='', 
	@Browser nvarchar(50), 
	@PluginID bigint = 0, 
	@Flagged int = 0, 
	@RuleSetID int = NULL, 
	@ResultType int = 0,
	@RuleVersionID nvarchar(150) = NULL,
	@RuleIds nvarchar(250) = '',
	@URL nvarchar(250) = NULL,
	@ISP nvarchar(250) = NULL,
	@UserAgent NVARCHAR(200) = NULL,
	@transid int OUTPUT
AS

/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Ins a new trans
DB: FPS_SUB
  
Revisions:
	- 20130305: add RuleSet
	- 20130426: @bobby add URL
	-20130705@Bobby.Nguyen: Update rmt schema
	- 20150622@razor.nguyen: insert action result
	- 20160328@bobby.nguyen: #54919 - add more UserAgent info
Param's Explanation:
	- @ResultType: 0:NONE | 1:ALLOW | 2:REVIEW | 3:DENY
*/
BEGIN
	SET NOCOUNT ON;


	-- insert into trans table
	INSERT INTO dbo.Transactions (
		AccountID,ActionName,ActionResult, Browser,Country,CountryCode,DeviceID,Flagged,
		IP,PluginID,Region,City,ResultType,RuleSetID,RuleVersionID,SubscriberID,TransDate,URL,ISP,UserAgent
	)
	VALUES (
		@AccountID,@ActionName,@ActionResult, @Browser,@Country,@CountryCode,@DeviceID,@Flagged,
		@IP,@PluginID,@Region,@City,@ResultType,@RuleSetID,@RuleVersionID,@SubscriberID,@TransDate,@URL,@ISP,@UserAgent
	);

	SET @transid = SCOPE_IDENTITY();
	IF(@transid > 0 AND @ResultType > 0) 
	BEGIN
		INSERT INTO dbo.TransRuleSets(TransID, RuleSetDetailID)
		SELECT @transid, * FROM dbo.Split(@ruleIds, ',');
	END;
END;
GO
GRANT EXECUTE ON [dbo].[InsNewTrans_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewTrans_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewTrans_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsNewTransByBatch]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsNewTransByBatch] @transDoc NVARCHAR(MAX)
AS
/***
	Created: 20180725@harvey.nguyen
	Task: insert transaction by batch
	  DB: FPS_SUB.xxx
	  
	Revisions:
	 - 20181203@Thai.Tran : add revision (#98135)
	 - 20181226@Billy : enhance performance (#98135)
	 - 20190115@Thai.Tran : change data type NVARCHAR for @transDoc (#98135)
	 - 20200108@Thai: Update the length of data type - [Redmine: #126654]
	Param's Explanation:

	exec InsNewTransByBatch '<?xml version="1.0"?><ArrayOfTransaction xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.263" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="49d8730ad5426d11e4433ad814fb2987" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.259" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="61eb0e31d1a34e12d46ba0deca73ca74" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.258" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="70b0ab849fd7cc195484ffd226bafce7" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.256" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="4804cee52066b796b562ac37e3fadea3" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.254" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="489eb6a6e77cd12720dac35da0b65ad1" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.252" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="f732b1d001e69cdaa613519285906a02" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.250" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="f93d6b16a08c48a7c13cb180226e11ca" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.248" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="68d41a455d212d907911b0f8876f3bf3" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.245" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="4cac26e9d6dfdf71a8ff46932b185db5" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.242" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="fd974413242dcb02c53220b6c9ed2127" /></ArrayOfTransaction>'
***/
BEGIN
	SET NOCOUNT ON

	DECLARE	@idoc	INT
		,	@fromID	INT
		,	@toID	INT
		;

	DECLARE	@output AS TABLE (
				TransId		INT
			,	HashId		VARCHAR(200)
			);

	CREATE TABLE	#Transactions (
						AccountId			INT
					,	DeviceId			BIGINT
					,	SubscriberId		INT
					,	TransDate			VARCHAR(30)
					,	ActionName			NVARCHAR(50)
					,	[IP]				NVARCHAR(20)
					,	Country				NVARCHAR(64)
					,	CountryCode			NVARCHAR(20)
					,	Region				NVARCHAR(128)
					,	City				NVARCHAR(128)
					,	ServiceProvider		NVARCHAR(50)
					,	ISP					NVARCHAR(256)
					,	Browser				NVARCHAR(50)
					,	PluginID			BIGINT
					,	Flagged				TINYINT
					,	RuleSetID			INT
					,	ResultType			TINYINT
					,	RuleVersionID		NVARCHAR(150)
					,	[URL]				NVARCHAR(250)
					,	ActionResult		NVARCHAR(100)
					,	UserAgent			NVARCHAR(200)
					,	RulesID				NVARCHAR(MAX)
					);

	EXECUTE sys.sp_xml_preparedocument @idoc OUTPUT, @transDoc;

	INSERT INTO	#Transactions
		(	AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent)
	SELECT	AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent
	FROM	OPENXML(@idoc, '/ArrayOfTransaction/Transaction', 1)
			WITH (
				AccountId			INT
			,	DeviceId			BIGINT
			,	SubscriberId		INT
			,	TransDate			VARCHAR(30)
			,	ActionName			NVARCHAR(50)
			,	[IP]				NVARCHAR(20)
			,	Country				NVARCHAR(64)
			,	CountryCode			NVARCHAR(20)
			,	Region				NVARCHAR(128)
			,	City				NVARCHAR(128)
			,	ServiceProvider		NVARCHAR(50)
			,	ISP					NVARCHAR(256)
			,	Browser				NVARCHAR(50)
			,	PluginID			BIGINT
			,	Flagged				TINYINT
			,	RuleSetID			INT
			,	ResultType			TINYINT
			,	RuleVersionID		NVARCHAR(150)
			,	[URL]				NVARCHAR(250)
			,	ActionResult		NVARCHAR(100)
			,	UserAgent			NVARCHAR(200)
			,	RulesID				NVARCHAR(MAX)
			);

	MERGE INTO	dbo.Transactions WITH (ROWLOCK) AS src
	USING		#Transactions AS tmp
			ON	0 = 1
	WHEN NOT MATCHED THEN
		INSERT	(AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent)
		VALUES	(AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent)
	OUTPUT	inserted.TransID
		,	CONVERT(VARCHAR(200), HASHBYTES('MD5', CONVERT(VARCHAR(MAX), CONCAT(inserted.AccountId, inserted.DeviceID, inserted.SubscriberID, FORMAT(inserted.TransDate, N'yyyy-MM-dd HH\:mm\:ss'), inserted.URL, inserted.UserAgent))), 2)
	INTO	@output (TransId, HashId);

	SELECT	TransId, HashId
	FROM	@output;
END
GO
GRANT EXECUTE ON [dbo].[InsNewTransByBatch] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewTransByBatch] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsNewTransByBatch_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsNewTransByBatch_xtest] @transDoc NVARCHAR(MAX)
AS
/***
	Created: 20180725@harvey.nguyen
	Task: insert transaction by batch
	  DB: FPS_SUB.xxx
	  
	Revisions:
	 - 20181203@Thai.Tran : add revision (#98135)
	 - 20181226@Billy : enhance performance (#98135)
	 - 20190115@Thai.Tran : change data type NVARCHAR for @transDoc (#98135)
	 - 20200108@Thai: Update the length of data type - [Redmine: #126654]
	Param's Explanation:

	exec InsNewTransByBatch_xtest '<?xml version="1.0"?><ArrayOfTransaction xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.263" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="49d8730ad5426d11e4433ad814fb2987" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.259" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="61eb0e31d1a34e12d46ba0deca73ca74" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.258" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="70b0ab849fd7cc195484ffd226bafce7" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.256" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="4804cee52066b796b562ac37e3fadea3" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.254" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="489eb6a6e77cd12720dac35da0b65ad1" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.252" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="f732b1d001e69cdaa613519285906a02" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.250" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="f93d6b16a08c48a7c13cb180226e11ca" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.248" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="68d41a455d212d907911b0f8876f3bf3" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.245" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="4cac26e9d6dfdf71a8ff46932b185db5" /><Transaction AccountId="6309" DeviceId="6309" SubscriberId="99" TransDate="2018-08-01 03:53:50.242" ActionName="login" Browser="" PluginID="0" Flagged="7" RuleSetID="0" ResultType="0" ActionResult="successfull" UserAgent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:61.0) Gecko/20100101 Firefox/61.0" HashId="fd974413242dcb02c53220b6c9ed2127" /></ArrayOfTransaction>'
***/
BEGIN
	SET NOCOUNT ON

	DECLARE	@idoc	INT
		,	@fromID	INT
		,	@toID	INT
		;

	DECLARE	@output AS TABLE (
				TransId		INT
			,	HashId		VARCHAR(200)
			);

	CREATE TABLE	#Transactions (
						AccountId			INT
					,	DeviceId			BIGINT
					,	SubscriberId		INT
					,	TransDate			VARCHAR(30)
					,	ActionName			NVARCHAR(50)
					,	[IP]				NVARCHAR(20)
					,	Country				NVARCHAR(64)
					,	CountryCode			NVARCHAR(20)
					,	Region				NVARCHAR(128)
					,	City				NVARCHAR(128)
					,	ServiceProvider		NVARCHAR(50)
					,	ISP					NVARCHAR(256)
					,	Browser				NVARCHAR(50)
					,	PluginID			BIGINT
					,	Flagged				TINYINT
					,	RuleSetID			INT
					,	ResultType			TINYINT
					,	RuleVersionID		NVARCHAR(150)
					,	[URL]				NVARCHAR(250)
					,	ActionResult		NVARCHAR(100)
					,	UserAgent			NVARCHAR(200)
					,	RulesID				NVARCHAR(MAX)
					);

	EXECUTE sys.sp_xml_preparedocument @idoc OUTPUT, @transDoc;

	INSERT INTO	#Transactions
		(	AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent)
	SELECT	AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent
	FROM	OPENXML(@idoc, '/ArrayOfTransaction/Transaction', 1)
			WITH (
				AccountId			INT
			,	DeviceId			BIGINT
			,	SubscriberId		INT
			,	TransDate			VARCHAR(30)
			,	ActionName			NVARCHAR(50)
			,	[IP]				NVARCHAR(20)
			,	Country				NVARCHAR(64)
			,	CountryCode			NVARCHAR(20)
			,	Region				NVARCHAR(128)
			,	City				NVARCHAR(128)
			,	ServiceProvider		NVARCHAR(50)
			,	ISP					NVARCHAR(256)
			,	Browser				NVARCHAR(50)
			,	PluginID			BIGINT
			,	Flagged				TINYINT
			,	RuleSetID			INT
			,	ResultType			TINYINT
			,	RuleVersionID		NVARCHAR(150)
			,	[URL]				NVARCHAR(250)
			,	ActionResult		NVARCHAR(100)
			,	UserAgent			NVARCHAR(200)
			,	RulesID				NVARCHAR(MAX)
			);

	MERGE INTO	dbo.Transactions WITH (ROWLOCK) AS src
	USING		#Transactions AS tmp
			ON	0 = 1
	WHEN NOT MATCHED THEN
		INSERT	(AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent)
		VALUES	(AccountID, DeviceID, SubscriberID, TransDate, ActionName, [IP], Country, CountryCode, Region, City, ServiceProvider, ISP, Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, [URL], ActionResult, UserAgent)
	OUTPUT	inserted.TransID
		,	CONVERT(VARCHAR(200), HASHBYTES('MD5', CONVERT(VARCHAR(MAX), CONCAT(inserted.AccountId, inserted.DeviceID, inserted.SubscriberID, FORMAT(inserted.TransDate, N'yyyy-MM-dd HH\:mm\:ss'), inserted.URL, inserted.UserAgent))), 2)
	INTO	@output (TransId, HashId);

	SELECT	TransId, HashId
	FROM	@output;
END
GO
GRANT EXECUTE ON [dbo].[InsNewTransByBatch_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsNewTransByBatch_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsRptAccDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsRptAccDevice]
	@DataDate SMALLDATETIME = NULL
AS

/*
Created:20130315@TOM
Task: Insert a total Account/Device on transactions into FPS_RPT.dbo.rptActions
DB: FPS_SUB_N
  
Revisions:
    -20141107@bobby: Update DataDate to datetime
	
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @date_from DATETIME
		,@date_to DATETIME
		,@subscriberID INT = 0
		,@totalAccount INT = 0
		,@totalDevice INT = 0;

	SELECT TOP  1 @subscriberID=SubscriberID 
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID > 0;

	IF(@subscriberID <= 0) RETURN;
	
	SELECT @DataDate 	= CAST(ISNULL(@DataDate, GETDATE()) AS DATE)
		,@date_from 	= @DataDate
		,@date_to 		= DATEADD(DD, 1, @date_from);
		
	SELECT @totalAccount = COUNT(DISTINCT trans.AccountID)
		, @totalDevice = COUNT(DISTINCT trans.DeviceID)
	FROM dbo.Transactions trans WITH (NOLOCK)
	WHERE TransDate >= @date_from
		AND TransDate < @date_to
		AND DeviceID > 0
		AND AccountID > 0;

	IF(EXISTS(SELECT TOP 1 1 
		FROM rmt.rptAccountDevice rpt WITH (NOLOCK) 
		WHERE rpt.SubscriberID=@subscriberID
		AND rpt.DataDate = @DataDate))
	BEGIN
		UPDATE rmt.rptAccountDevice WITH (UPDLOCK) 
		SET TotalAccount=@totalAccount
			,TotalDevice=@totalDevice
		WHERE SubscriberID=@subscriberID
			AND DataDate = @DataDate;
	END;
	ELSE
	BEGIN
		INSERT INTO rmt.rptAccountDevice (TotalAccount, TotalDevice, DataDate, SubscriberID)
		VALUES(@totalAccount, @totalDevice, @DataDate, @subscriberID);
	END;	
END;
GO
/****** Object:  StoredProcedure [dbo].[InsRptActions]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsRptActions] 
	@DataDate SMALLDATETIME = NULL
AS
/*
Created:20130315@TOM
Task: Ins a total Action on transactions into FPS_RPT.dbo.rptActions
DB: FPS_SUB_2
  
Revisions:
	-20140616@bobby: mofify deleting from remote server
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @date_from DATETIME
		,@date_to DATETIME
		,@subscriberID INT = 0;

	SELECT TOP 1 @subscriberID = SubscriberID
	FROM Accounts WITH (NOLOCK)
	WHERE AccountID > 0;

	IF (@subscriberID <= 0) RETURN;

	SET @DataDate = CAST(ISNULL(@DataDate, GETDATE()) AS DATE);

	SELECT @date_from = @DataDate
		,@date_to = DATEADD(DD, 1, @date_from);

	DECLARE @rptActions TABLE (
		ActionName NVARCHAR(50)
		,TotalAction INT
		);

	INSERT INTO @rptActions (
		ActionName
		,TotalAction
		)
	SELECT ActionName
		,COUNT(1) AS TotalAction
	FROM dbo.Transactions WITH (NOLOCK)
	WHERE TransDate >= @date_from
		AND TransDate < @date_to
		AND DeviceID > 0
		AND AccountID > 0
	GROUP BY ActionName;

	DELETE rpt
	FROM rmt.rptActions AS rpt WITH (ROWLOCK)
	WHERE rpt.SubscriberID = @subscriberID
		AND rpt.DataDate = @DataDate;

	INSERT INTO rmt.rptActions (
		ActionName
		,TotalAction
		,DataDate
		,SubscriberID
		)
	SELECT ActionName
		,TotalAction
		,@DataDate
		,@subscriberID
	FROM @rptActions tblTemp;
END;
GO
/****** Object:  StoredProcedure [dbo].[InsRptStats]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsRptStats]

AS
/*
	Created:20130802@Bobby.Nguyen
	Task: Collect stats data of all FPS DB
	DB: FPS_SUB_N

	Revisions:
	Param's Explanation:
		- 20160707@Bobby: update row_count for archiving Transactions
*/
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @DateNow DATE = GETDATE()
		,@StatsDbName VARCHAR(100)
		,@SubscriberID INT = NULL;
	
	SET @StatsDbName=DB_NAME();
	
	SELECT TOP 1 @SubscriberID=SubscriberID 
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID > 0;
		
	CREATE TABLE #tempStatRaws
	(
		table_name sysname,
		row_count INT,
		reserved_size VARCHAR(50),
		data_size VARCHAR(50),
		index_size VARCHAR(50),
		unused_size VARCHAR(50)
	);
	
	INSERT INTO #tempStatRaws(table_name, row_count, reserved_size, data_size, index_size, unused_size)
	EXEC sp_msforeachtable '[sys].[sp_spaceused] ''?''';	
	
	--update for archiving Transactions
	update st
	SET row_count = IDENT_CURRENT('Transactions')
	FROM #tempStatRaws st
	WHERE table_name = 'Transactions';
	
	IF(EXISTS(SELECT TOP 1 1 FROM #tempStatRaws))
	BEGIN
		CREATE TABLE #tempStats
		(
			table_name sysname,
			row_count INT,
			row_inc INT DEFAULT 0,
			data_size INT,
			data_inc INT DEFAULT 0,
			rpt_date DATE
		);
		
		INSERT #tempStats (table_name, row_count, data_size, rpt_date)
		SELECT stra.table_name
			,stra.row_count
			,CAST(REPLACE(stra.data_size,' KB','') AS INT) AS data_size
			,@DateNow
		FROM #tempStatRaws stra;
	
		
		--update increment info
		UPDATE st
			SET row_inc= st.row_count - ISNULL(rpt.RowInCount, st.row_count)
			, data_inc = st.data_size - ISNULL(rpt.SpaceInUse, st.data_size)
		FROM #tempStats st
		LEFT JOIN rmt.rptDBStats rpt 
			ON ( st.table_name = rpt.TableName )
		WHERE rpt.StatsDbName=@StatsDbName
			AND (rpt.ReportDate IS NULL
					OR rpt.ReportDate = ( SELECT MAX(ReportDate) ReportDate 
									FROM rmt.rptDBStats WITH (NOLOCK)
									WHERE ReportDate < @DateNow ));
		
		--delete current date
		DELETE rpt
		FROM rmt.rptDBStats AS rpt
		WHERE rpt.SubscriberID=@SubscriberID
			AND rpt.ReportDate=@DateNow;
			
		--insert new stats
		INSERT INTO rmt.rptDBStats (StatsDbName, TableName
			, RowInCount, RowIncrement
			, SpaceInUse, SpaceIncrement
			, ReportDate
			, SubscriberID)
		SELECT @StatsDbName, table_name
			, row_count, row_inc
			, data_size, data_inc
			, @DateNow
			, @SubscriberID
		FROM #tempStats st;
		
		DROP TABLE #tempStats;
	END;
	
	--drop table temp
	DROP TABLE #tempStatRaws;	
	RETURN;	
END;
GO
/****** Object:  StoredProcedure [dbo].[RetractInternalException]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RetractInternalException]
	@username varchar(50),
	@deviceNo varchar(50),
	@subscriber nvarchar(50),
	@createdBy varchar(50),
	@comment nvarchar(500),
	@actionName varchar(50),
	@statusID tinyint
AS
/*
	Created: 20130123@kan.nguyen
	Task: retract internal exception
	  DB: FPS_SUB

	Revisions:
		-20130705@Bobby.Nguyen: Update rmt schema & OPENQUERY
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
	-- get association
		DECLARE @associationID int,
				@accountID int,
				@deviceID int,
				@exceptionID int,
				@subscriberID int;

	SELECT TOP 1 @subscriberID = a.SubscriberID
		, @accountID= AccountID
	FROM dbo.Accounts a WITH (NOLOCK)
	WHERE UserName = @username;

	IF (@accountID > 0 AND @subscriberID > 0)
	BEGIN
		EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceId output;

		IF(@deviceID > 0)
		BEGIN
			SELECT TOP 1 @associationID = s.Ass_ID, @exceptionID = s.ExceptionID
			FROM dbo.Associations s (NOLOCK)
				INNER JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			WHERE s.AccountID = @accountID
				AND s.DeviceID=@deviceID
				AND s.ExceptionID > 0
				AND e.StatusID <> @statusID;

			IF (@associationID > 0 AND @exceptionID > 0)
			BEGIN
				-- get UserID
				DECLARE @createdUserId int;
				SELECT TOP 1 @createdUserId = UserID
				FROM rmt.Users WITH (NOLOCK)
				WHERE UserName = @createdBy AND SiteName = 'FPS';

				-- retract (only update status)
				EXEC rmt.RetractException @createdUserId, @comment, @actionName, @deviceID, @accountID,
					@subscriberID, NULL, @statusID, @exceptionID;
			END;
		END;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[RetractInternalException] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[RetractInternalException] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[RetractInternalException] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[RetractInternalException_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RetractInternalException_xtest]
	@username varchar(50),
	@deviceNo varchar(50),
	@subscriber nvarchar(50),
	@createdBy varchar(50),
	@comment nvarchar(500),
	@actionName varchar(50),
	@statusID tinyint
AS
/*
	Created: 20130123@kan.nguyen
	Task: retract internal exception
	  DB: FPS_SUB

	Revisions:
		-20130705@Bobby.Nguyen: Update rmt schema & OPENQUERY
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON
	-- get association
		DECLARE @associationID int,
				@accountID int,
				@deviceID int,
				@exceptionID int,
				@subscriberID int

	SELECT TOP 1 @subscriberID = a.SubscriberID
		, @accountID= AccountID
	FROM dbo.Accounts a WITH (NOLOCK)
	WHERE UserName = @username

	IF (@accountID > 0 AND @subscriberID > 0)
	BEGIN
																																																																																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@subscriberId=@subscriberId, 
		@deviceId=@deviceId output

		IF(@deviceID > 0)
		BEGIN
			SELECT TOP 1 @associationID = s.Ass_ID, @exceptionID = s.ExceptionID
			FROM dbo.Associations s (NOLOCK)
				INNER JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
			WHERE s.AccountID = @accountID
				AND s.DeviceID=@deviceID
				AND s.ExceptionID > 0
				AND e.StatusID <> @statusID

			IF (@associationID > 0 AND @exceptionID > 0)
			BEGIN
				-- get UserID
				DECLARE @createdUserId int
				SELECT TOP 1 @createdUserId = UserID
				FROM rmt.Users WITH (NOLOCK)
				WHERE UserName = @createdBy AND SiteName = 'FPS'

				-- retract (only update status)
				EXEC rmt.RetractException @createdUserId, @comment, @actionName, @deviceID, @accountID,
					@subscriberID, NULL, @statusID, @exceptionID
			END
		END
	END
END














GO
GRANT EXECUTE ON [dbo].[RetractInternalException_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[RetractInternalException_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[RetractInternalException_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_AbnormalTransByTimeRange]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_AbnormalTransByTimeRange] 
	@FromDate			DATETIME
	,@ToDate			DATETIME
	,@AbnormalCase		TINYINT = 0
	,@NumIPAndNADev		INT = 3
	,@NumIPAndNewDev	INT = 3
	,@NumOldAccNewDev	INT = 10
	,@TimeUnit			TINYINT = 1
	,@NumOfTrans		INT = 3
	,@CurPage			INT = 1
	,@PageSize			INT = 25
	,@NRows				INT = 0 OUTPUT
	,@duration			INT = 0 OUTPUT
AS
/*
	Created:20140408@Bobby.Nguyen
	Task: Collect abnormal transaction base on certies
	DB: FPS_SUB_X

	Revisions:
		- 20140429@Bobby.Nguyen: 
			+ Apply paging
			+ Check contraint of time range in case 4 & 5 - max in 24 hours
			+ @NumOfTrans is used in case 6
		- 20160411@bobby: #55712 - Adding action result into some reports
		- 20170620@Thai.Tran: #78595 - show more username2
		- 20200108@Thai:	Update the length of data type - [Redmine: #126654]
		
	Param's Explanation:
		@AbnormalCase:	
			1.Query trans whose IP has more than 3 transactions but all are N/A device in a range time.
			2.Query trans whose IP has more than 3 new devices in  a range time.
			3.Query trans whose old accounts that have most number of new devices in a range time.
			4.Query which account has more than X transaction per second/minute/hour ... in range time
			5.Query which device has more than X transaction per second/minute/hour ... in range time
			6.Query which account has all NA devices in range time
		@NumIPAndNADev: used when [@AbnormalCase=1] => Number of trans which IP has at least X trans that has all N/A device
		@NumIPAndNewDev: used when [@AbnormalCase=2] => Number of trans which IP has at least X trans that has all new device
		@NumOldAccNewDev: used when [@AbnormalCase=3] => Top number of account who is old account that are using all new device
		@TimeUnit: used when [@AbnormalCase=4|5] => 1-second|2-minute|3-hour
		@NumOfTrans: used when [@AbnormalCase=4|5] => num of trans need to filter or [@AbnormalCase=6] Has at least X trans which NA device
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @startTime DATETIME
		,@IsSubTest BIT
		,@OffsetNo INT
		,@NHours INT;

	DECLARE @tblDevice TABLE (
		DeviceId INT PRIMARY KEY
		,DeviceNo VARCHAR(50)
		,OSName VARCHAR(50)
	);

	CREATE TABLE #tmpTrans (
			TransID BIGINT
			,TransDate	DATETIME
			,ActionName VARCHAR(50)
			,AccountId	INT
			,IP			VARCHAR(50)
			,Region		VARCHAR(128)
			,Country	VARCHAR(64)
			,Browser	VARCHAR(50)
			,DeviceID	INT
			,Flagged	TINYINT
			,ActionResult NVARCHAR(100)
			,NRow		INT IDENTITY(1,1)
	);

	SET @startTime = GETDATE();
	SET @OffsetNo = @PageSize * (@CurPage - 1);

	--check device of subscriber
	SELECT TOP (1) @IsSubTest = IsTest
	FROM rmt.Subscribers s WITH (NOLOCK)
	WHERE SubscriberID = (
			SELECT TOP 1 SubscriberID
			FROM dbo.Accounts a WITH (NOLOCK)
			WHERE AccountID > 0
				AND SubscriberID > 0
			);
	/** 1.Query trans whose IP has more than 3 transactions but all are N/A device in a range time. **/
	IF (@AbnormalCase = 1)
	BEGIN
		SELECT TransID
			,IP
		INTO #AbnormalTrans1
		FROM dbo.Transactions WITH (NOLOCK)
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND (
				DeviceID IS NULL
				OR DeviceID = 0
				)
			AND IP IS NOT NULL;
		SELECT IP
			,COUNT(1) NumCount
		INTO #AbnormalIP1
		FROM #AbnormalTrans1
		GROUP BY IP
		HAVING COUNT(1) >= @NumIPAndNADev;
		--fetch row count
		SELECT @NRows = COUNT(1) 
		FROM dbo.Transactions t WITH (NOLOCK) 
		INNER JOIN #AbnormalTrans1 ab
			ON t.TransID = ab.TransID
			INNER JOIN #AbnormalIP1 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate;
		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,t.TransDate
			,t.ActionName
			,t.AccountID
			,t.IP
			,t.Region
			,t.Country
			,t.Browser
			,t.DeviceID
			,t.Flagged
			,t.ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalTrans1 ab
			ON t.TransID = ab.TransID
			INNER JOIN #AbnormalIP1 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
		ORDER BY t.IP, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalTrans1;
		DROP TABLE #AbnormalIP1;
	END;
	/** 2.Query trans whose IP has more than 3 new devices in  a range time. **/
	ELSE IF (@AbnormalCase = 2)
	BEGIN
		SELECT DeviceID
			,IP
		INTO #AbnormalTrans2
		FROM dbo.Transactions WITH (NOLOCK)
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND IP IS NOT NULL
			AND Flagged = 0; -- is new device

		SELECT IP
			,COUNT(1) NumCount
		INTO #AbnormalIP2
		FROM #AbnormalTrans2
		GROUP BY IP
		HAVING COUNT(1) >= @NumIPAndNewDev;
		
		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalTrans2 ab
			ON t.DeviceID = ab.DeviceID
			INNER JOIN #AbnormalIP2 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.Flagged = 0;
		
		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,t.TransDate
			,t.ActionName
			,t.AccountID
			,t.IP
			,t.Region
			,t.Country
			,t.Browser
			,t.DeviceID
			,t.Flagged
			,t.ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalTrans2 ab
			ON t.DeviceID = ab.DeviceID
			INNER JOIN #AbnormalIP2 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.Flagged = 0
		ORDER BY t.IP, t.DeviceID, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalTrans2;
		DROP TABLE #AbnormalIP2;
	END;
	/** 3.Query trans whose old accounts that have most number of new devices in a range time.. **/
	ELSE IF (@AbnormalCase = 3)
	BEGIN
		SELECT DeviceID
			,t.AccountID
		INTO #AbnormalTrans3
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN dbo.Accounts a WITH (NOLOCK)
			ON t.AccountID = a.AccountID
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND a.CreatedDate < t.TransDate --new account
			AND t.AccountID > 0
			AND Flagged = 0; --is new device
		
		SELECT TOP (@NumOldAccNewDev) WITH TIES
			t.AccountID
			,t.NumCount
		INTO #AbnormalAcc3
		FROM (
			SELECT AccountID
				, COUNT(1) NumCount
			FROM #AbnormalTrans3
			GROUP BY AccountID
		) t
		ORDER BY NumCount DESC;

		--fetch row count
		SELECT @NRows=COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc3 a
			ON t.AccountID = a.AccountID
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND Flagged = 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,t.TransDate
			,t.ActionName
			,t.AccountID
			,t.IP
			,t.Region
			,t.Country
			,t.Browser
			,t.DeviceID
			,t.Flagged
			,t.ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc3 a
			ON t.AccountID = a.AccountID
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND Flagged = 0
		ORDER BY t.AccountID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalTrans3;
		DROP TABLE #AbnormalAcc3;
	END;
	/** 4.Query which account has more than X transaction per second/minute/hour ... **/
	ELSE IF (@AbnormalCase = 4)
	BEGIN
		
		SET @NHours = DATEDIFF(HH, @FromDate, @ToDate);
		IF(@NHours > 24)
			SET @FromDate = DATEADD(HH, -24, @toDate);

		SELECT AccountID
			,TransTime
			,COUNT(1) NumCount
		INTO #AbnormalAcc4
		FROM (
			SELECT TransID
				,AccountID
				,CAST(FORMAT(TransDate,	CASE WHEN @TimeUnit=1 THEN 'yyyy-MM-dd hh:mm:ss' 
											WHEN @TimeUnit=2 THEN 'yyyy-MM-dd hh:mm:00' 
											WHEN @TimeUnit=3 THEN 'yyyy-MM-dd hh:00:00' 
										END) AS DATETIME
				) AS TransTime
			FROM dbo.Transactions WITH (NOLOCK)
			WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND AccountID > 0
		) t
		GROUP BY AccountID
			, TransTime
		HAVING COUNT(1) >= @NumOfTrans;

		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc4 a
			ON t.AccountID = a.AccountID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND t.AccountID > 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,TransDate
			,ActionName
			,t.AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc4 a
			ON t.AccountID = a.AccountID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND t.AccountID > 0
		ORDER BY t.AccountID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalAcc4;
	END;
	/** 5.Query which device has more than X transaction per second/minute/hour ... **/
	ELSE IF (@AbnormalCase = 5)
	BEGIN
		SET @NHours = DATEDIFF(HH, @FromDate, @ToDate);
		IF(@NHours > 24)
			SET @FromDate = DATEADD(HH, -24, @toDate);

		SELECT DeviceID
			,TransTime
			,COUNT(1) NumCount
		INTO #AbnormalAcc5
		FROM (
			SELECT TransID
				,DeviceID
				,CAST(FORMAT(TransDate,	CASE WHEN @TimeUnit=1 THEN 'yyyy-MM-dd hh:mm:ss' 
											WHEN @TimeUnit=2 THEN 'yyyy-MM-dd hh:mm:00' 
											WHEN @TimeUnit=3 THEN 'yyyy-MM-dd hh:00:00' 
										END) AS DATETIME
				) AS TransTime
			FROM dbo.Transactions WITH (NOLOCK)
			WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND DeviceID > 0
		) t
		GROUP BY DeviceID
			, TransTime
		HAVING COUNT(1) >= @NumOfTrans;

		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc5 a
			ON t.DeviceID = a.DeviceID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.DeviceID > 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,t.DeviceID
			,Flagged
			,ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc5 a
			ON t.DeviceID = a.DeviceID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.DeviceID > 0
		ORDER BY t.DeviceID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalAcc5;
	END;
	/** 6.Query which account has all NA devices **/
	ELSE IF (@AbnormalCase = 6)
	BEGIN
		SELECT t.AccountID
			, COUNT(1) NumCount
		INTO #AbnormalAcc6
		FROM dbo.Transactions t WITH (NOLOCK)
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.AccountID NOT IN (
				SELECT AccountID 
				FROM dbo.Transactions WITH (NOLOCK)
				WHERE TransDate >= @FromDate
					AND TransDate <= @ToDate
					AND DeviceID > 0
				GROUP BY AccountID
			)
		GROUP BY t.AccountID
		HAVING COUNT(1) >= @NumOfTrans; -- has at least X trans

		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc6 a
			ON t.AccountID = a.AccountID 
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND ISNULL(DeviceID, 0) = 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,TransDate
			,ActionName
			,t.AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc6 a
			ON t.AccountID = a.AccountID 
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND ISNULL(DeviceID, 0) = 0
		ORDER BY t.AccountID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp table 
		DROP TABLE #AbnormalAcc6;
	END;

	--check existing device information
	IF(EXISTS(SELECT TOP 1 1 FROM #tmpTrans WHERE DeviceID > 0)) 
	BEGIN	
		--get device information
		IF (@IsSubTest = 1)
		BEGIN
			INSERT INTO @tblDevice (
				DeviceId
				,DeviceNo
				,OSName
				)
			SELECT DeviceId
				,DeviceNo
				,OSName
			FROM FPSDEV.FPS_DEV_TEST.dbo.DevMaster WITH (NOLOCK)
			WHERE DeviceID IN (
					SELECT DISTINCT DeviceID
					FROM #tmpTrans
					);
		END;
		ELSE IF (@IsSubTest = 0)
		BEGIN
			INSERT INTO @tblDevice (
				DeviceId
				,DeviceNo
				,OSName
				)
			SELECT DeviceId
				,DeviceNo
				,OSName
			FROM FPSDEV.FPS_DEV.dbo.DevMaster WITH (NOLOCK)
			WHERE DeviceID IN (
					SELECT DISTINCT DeviceID
					FROM #tmpTrans
					);
		END;
	END;

	--megre trans/devices and accounts information
	SELECT t.TransID
		,t.TransDate
		,t.ActionName
		,t.IP
		,t.Region
		,t.Country
		,t.Browser
		,t.Flagged
		,t.ActionResult
		,a.UserName
		,a.UserName2
		,ISNULL(d.DeviceNo, 'N/A') DeviceNo
		,ISNULL(d.OSName, 'N/A') OSName
	FROM #tmpTrans t
		LEFT JOIN dbo.Accounts a WITH(NOLOCK)
		ON t.AccountId = a.AccountID
		LEFT JOIN @tblDevice d
		ON t.DeviceID = d.DeviceID
	ORDER BY t.NRow;


	DROP TABLE #tmpTrans;

	SET @duration = DATEDIFF(MS, @startTime, GETDATE());
	RETURN 0;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_AbnormalTransByTimeRange] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_AbnormalTransByTimeRange] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_AbnormalTransByTimeRange_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_AbnormalTransByTimeRange_xtest] 
	@FromDate			DATETIME
	,@ToDate			DATETIME
	,@AbnormalCase		TINYINT = 0
	,@NumIPAndNADev		INT = 3
	,@NumIPAndNewDev	INT = 3
	,@NumOldAccNewDev	INT = 10
	,@TimeUnit			TINYINT = 1
	,@NumOfTrans		INT = 3
	,@CurPage			INT = 1
	,@PageSize			INT = 25
	,@NRows				INT = 0 OUTPUT
	,@duration			INT = 0 OUTPUT
AS
/*
	Created:20140408@Bobby.Nguyen
	Task: Collect abnormal transaction base on certies
	DB: FPS_SUB_X

	Revisions:
		- 20140429@Bobby.Nguyen: 
			+ Apply paging
			+ Check contraint of time range in case 4 & 5 - max in 24 hours
			+ @NumOfTrans is used in case 6
		- 20160411@bobby: #55712 - Adding action result into some reports
		- 20170620@Thai.Tran: #78595 - show more username2
		- 20200108@Thai:	Update the length of data type - [Redmine: #126654]
		
	Param's Explanation:
		@AbnormalCase:	
			1.Query trans whose IP has more than 3 transactions but all are N/A device in a range time.
			2.Query trans whose IP has more than 3 new devices in  a range time.
			3.Query trans whose old accounts that have most number of new devices in a range time.
			4.Query which account has more than X transaction per second/minute/hour ... in range time
			5.Query which device has more than X transaction per second/minute/hour ... in range time
			6.Query which account has all NA devices in range time
		@NumIPAndNADev: used when [@AbnormalCase=1] => Number of trans which IP has at least X trans that has all N/A device
		@NumIPAndNewDev: used when [@AbnormalCase=2] => Number of trans which IP has at least X trans that has all new device
		@NumOldAccNewDev: used when [@AbnormalCase=3] => Top number of account who is old account that are using all new device
		@TimeUnit: used when [@AbnormalCase=4|5] => 1-second|2-minute|3-hour
		@NumOfTrans: used when [@AbnormalCase=4|5] => num of trans need to filter or [@AbnormalCase=6] Has at least X trans which NA device
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @startTime DATETIME
		,@IsSubTest BIT
		,@OffsetNo INT
		,@NHours INT;

	DECLARE @tblDevice TABLE (
		DeviceId INT PRIMARY KEY
		,DeviceNo VARCHAR(50)
		,OSName VARCHAR(50)
	);

	CREATE TABLE #tmpTrans (
			TransID BIGINT
			,TransDate	DATETIME
			,ActionName VARCHAR(50)
			,AccountId	INT
			,IP			VARCHAR(50)
			,Region		VARCHAR(128)
			,Country	VARCHAR(64)
			,Browser	VARCHAR(50)
			,DeviceID	INT
			,Flagged	TINYINT
			,ActionResult NVARCHAR(100)
			,NRow		INT IDENTITY(1,1)
	);

	SET @startTime = GETDATE();
	SET @OffsetNo = @PageSize * (@CurPage - 1);

	--check device of subscriber
	SELECT TOP (1) @IsSubTest = IsTest
	FROM rmt.Subscribers s WITH (NOLOCK)
	WHERE SubscriberID = (
			SELECT TOP 1 SubscriberID
			FROM dbo.Accounts a WITH (NOLOCK)
			WHERE AccountID > 0
				AND SubscriberID > 0
			);
	/** 1.Query trans whose IP has more than 3 transactions but all are N/A device in a range time. **/
	IF (@AbnormalCase = 1)
	BEGIN
		SELECT TransID
			,IP
		INTO #AbnormalTrans1
		FROM dbo.Transactions WITH (NOLOCK)
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND (
				DeviceID IS NULL
				OR DeviceID = 0
				)
			AND IP IS NOT NULL;
		SELECT IP
			,COUNT(1) NumCount
		INTO #AbnormalIP1
		FROM #AbnormalTrans1
		GROUP BY IP
		HAVING COUNT(1) >= @NumIPAndNADev;
		--fetch row count
		SELECT @NRows = COUNT(1) 
		FROM dbo.Transactions t WITH (NOLOCK) 
		INNER JOIN #AbnormalTrans1 ab
			ON t.TransID = ab.TransID
			INNER JOIN #AbnormalIP1 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate;
		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,t.TransDate
			,t.ActionName
			,t.AccountID
			,t.IP
			,t.Region
			,t.Country
			,t.Browser
			,t.DeviceID
			,t.Flagged
			,t.ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalTrans1 ab
			ON t.TransID = ab.TransID
			INNER JOIN #AbnormalIP1 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
		ORDER BY t.IP, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalTrans1;
		DROP TABLE #AbnormalIP1;
	END;
	/** 2.Query trans whose IP has more than 3 new devices in  a range time. **/
	ELSE IF (@AbnormalCase = 2)
	BEGIN
		SELECT DeviceID
			,IP
		INTO #AbnormalTrans2
		FROM dbo.Transactions WITH (NOLOCK)
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND IP IS NOT NULL
			AND Flagged = 0; -- is new device

		SELECT IP
			,COUNT(1) NumCount
		INTO #AbnormalIP2
		FROM #AbnormalTrans2
		GROUP BY IP
		HAVING COUNT(1) >= @NumIPAndNewDev;
		
		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalTrans2 ab
			ON t.DeviceID = ab.DeviceID
			INNER JOIN #AbnormalIP2 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.Flagged = 0;
		
		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,t.TransDate
			,t.ActionName
			,t.AccountID
			,t.IP
			,t.Region
			,t.Country
			,t.Browser
			,t.DeviceID
			,t.Flagged
			,t.ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalTrans2 ab
			ON t.DeviceID = ab.DeviceID
			INNER JOIN #AbnormalIP2 ip
			ON t.IP = ip.IP
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.Flagged = 0
		ORDER BY t.IP, t.DeviceID, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalTrans2;
		DROP TABLE #AbnormalIP2;
	END;
	/** 3.Query trans whose old accounts that have most number of new devices in a range time.. **/
	ELSE IF (@AbnormalCase = 3)
	BEGIN
		SELECT DeviceID
			,t.AccountID
		INTO #AbnormalTrans3
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN dbo.Accounts a WITH (NOLOCK)
			ON t.AccountID = a.AccountID
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND a.CreatedDate < t.TransDate --new account
			AND t.AccountID > 0
			AND Flagged = 0; --is new device
		
		SELECT TOP (@NumOldAccNewDev) WITH TIES
			t.AccountID
			,t.NumCount
		INTO #AbnormalAcc3
		FROM (
			SELECT AccountID
				, COUNT(1) NumCount
			FROM #AbnormalTrans3
			GROUP BY AccountID
		) t
		ORDER BY NumCount DESC;

		--fetch row count
		SELECT @NRows=COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc3 a
			ON t.AccountID = a.AccountID
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND Flagged = 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,t.TransDate
			,t.ActionName
			,t.AccountID
			,t.IP
			,t.Region
			,t.Country
			,t.Browser
			,t.DeviceID
			,t.Flagged
			,t.ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc3 a
			ON t.AccountID = a.AccountID
		WHERE t.TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND Flagged = 0
		ORDER BY t.AccountID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalTrans3;
		DROP TABLE #AbnormalAcc3;
	END;
	/** 4.Query which account has more than X transaction per second/minute/hour ... **/
	ELSE IF (@AbnormalCase = 4)
	BEGIN
		
		SET @NHours = DATEDIFF(HH, @FromDate, @ToDate);
		IF(@NHours > 24)
			SET @FromDate = DATEADD(HH, -24, @toDate);

		SELECT AccountID
			,TransTime
			,COUNT(1) NumCount
		INTO #AbnormalAcc4
		FROM (
			SELECT TransID
				,AccountID
				,CAST(FORMAT(TransDate,	CASE WHEN @TimeUnit=1 THEN 'yyyy-MM-dd hh:mm:ss' 
											WHEN @TimeUnit=2 THEN 'yyyy-MM-dd hh:mm:00' 
											WHEN @TimeUnit=3 THEN 'yyyy-MM-dd hh:00:00' 
										END) AS DATETIME
				) AS TransTime
			FROM dbo.Transactions WITH (NOLOCK)
			WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND AccountID > 0
		) t
		GROUP BY AccountID
			, TransTime
		HAVING COUNT(1) >= @NumOfTrans;

		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc4 a
			ON t.AccountID = a.AccountID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND t.AccountID > 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,TransDate
			,ActionName
			,t.AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc4 a
			ON t.AccountID = a.AccountID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND t.AccountID > 0
		ORDER BY t.AccountID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalAcc4;
	END;
	/** 5.Query which device has more than X transaction per second/minute/hour ... **/
	ELSE IF (@AbnormalCase = 5)
	BEGIN
		SET @NHours = DATEDIFF(HH, @FromDate, @ToDate);
		IF(@NHours > 24)
			SET @FromDate = DATEADD(HH, -24, @toDate);

		SELECT DeviceID
			,TransTime
			,COUNT(1) NumCount
		INTO #AbnormalAcc5
		FROM (
			SELECT TransID
				,DeviceID
				,CAST(FORMAT(TransDate,	CASE WHEN @TimeUnit=1 THEN 'yyyy-MM-dd hh:mm:ss' 
											WHEN @TimeUnit=2 THEN 'yyyy-MM-dd hh:mm:00' 
											WHEN @TimeUnit=3 THEN 'yyyy-MM-dd hh:00:00' 
										END) AS DATETIME
				) AS TransTime
			FROM dbo.Transactions WITH (NOLOCK)
			WHERE TransDate >= @FromDate
				AND TransDate <= @ToDate
				AND DeviceID > 0
		) t
		GROUP BY DeviceID
			, TransTime
		HAVING COUNT(1) >= @NumOfTrans;

		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc5 a
			ON t.DeviceID = a.DeviceID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.DeviceID > 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,t.DeviceID
			,Flagged
			,ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc5 a
			ON t.DeviceID = a.DeviceID 
				AND CASE 
						WHEN @TimeUnit=1 AND DATEDIFF(SS, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=2 AND DATEDIFF(MI, t.TransDate, a.TransTime) = 0 THEN 1
						WHEN @TimeUnit=3 AND DATEDIFF(HH, t.TransDate, a.TransTime) = 0 THEN 1
						ELSE 0
					END = 1
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.DeviceID > 0
		ORDER BY t.DeviceID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp tables
		DROP TABLE #AbnormalAcc5;
	END;
	/** 6.Query which account has all NA devices **/
	ELSE IF (@AbnormalCase = 6)
	BEGIN
		SELECT t.AccountID
			, COUNT(1) NumCount
		INTO #AbnormalAcc6
		FROM dbo.Transactions t WITH (NOLOCK)
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND t.AccountID NOT IN (
				SELECT AccountID 
				FROM dbo.Transactions WITH (NOLOCK)
				WHERE TransDate >= @FromDate
					AND TransDate <= @ToDate
					AND DeviceID > 0
				GROUP BY AccountID
			)
		GROUP BY t.AccountID
		HAVING COUNT(1) >= @NumOfTrans; -- has at least X trans

		--fetch row count
		SELECT @NRows = COUNT(1)
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc6 a
			ON t.AccountID = a.AccountID 
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND ISNULL(DeviceID, 0) = 0;

		--fetch rows
		INSERT INTO #tmpTrans(TransID
			,TransDate
			,ActionName
			,AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult)
		SELECT t.TransID
			,TransDate
			,ActionName
			,t.AccountId
			,IP
			,Region
			,Country
			,Browser
			,DeviceID
			,Flagged
			,ActionResult
		FROM dbo.Transactions t WITH (NOLOCK)
			INNER JOIN #AbnormalAcc6 a
			ON t.AccountID = a.AccountID 
		WHERE TransDate >= @FromDate
			AND TransDate <= @ToDate
			AND ISNULL(DeviceID, 0) = 0
		ORDER BY t.AccountID DESC, t.TransDate DESC
		OFFSET @OffsetNo ROWS
		FETCH NEXT @PageSize ROWS ONLY;

		--drop tmp table 
		DROP TABLE #AbnormalAcc6;
	END;

	--check existing device information
	IF(EXISTS(SELECT TOP 1 1 FROM #tmpTrans WHERE DeviceID > 0)) 
	BEGIN	
		--get device information
		IF (@IsSubTest = 1)
		BEGIN
			INSERT INTO @tblDevice (
				DeviceId
				,DeviceNo
				,OSName
				)
			SELECT DeviceId
				,DeviceNo
				,OSName
			FROM FPSDEV.FPS_DEV_TEST.dbo.DevMaster WITH (NOLOCK)
			WHERE DeviceID IN (
					SELECT DISTINCT DeviceID
					FROM #tmpTrans
					);
		END;
		ELSE IF (@IsSubTest = 0)
		BEGIN
			INSERT INTO @tblDevice (
				DeviceId
				,DeviceNo
				,OSName
				)
			SELECT DeviceId
				,DeviceNo
				,OSName
			FROM FPSDEV.FPS_DEV.dbo.DevMaster WITH (NOLOCK)
			WHERE DeviceID IN (
					SELECT DISTINCT DeviceID
					FROM #tmpTrans
					);
		END;
	END;

	--megre trans/devices and accounts information
	SELECT t.TransID
		,t.TransDate
		,t.ActionName
		,t.IP
		,t.Region
		,t.Country
		,t.Browser
		,t.Flagged
		,t.ActionResult
		,a.UserName
		,a.UserName2
		,ISNULL(d.DeviceNo, 'N/A') DeviceNo
		,ISNULL(d.OSName, 'N/A') OSName
	FROM #tmpTrans t
		LEFT JOIN dbo.Accounts a WITH(NOLOCK)
		ON t.AccountId = a.AccountID
		LEFT JOIN @tblDevice d
		ON t.DeviceID = d.DeviceID
	ORDER BY t.NRow;


	DROP TABLE #tmpTrans;

	SET @duration = DATEDIFF(MS, @startTime, GETDATE());
	RETURN 0;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_AbnormalTransByTimeRange_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_AbnormalTransByTimeRange_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_APD]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_APD]
	@NoOfAccount int = 5,
	@LastDay int = 1,
	@PageSize int=50 ,
	@PageIndex int=1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
AS
/*
Created: 20130117@Tom
Task: Retrieve Accounts Per Device report
	DB: Agency.
  
Revisions:
	-20130719@bobby.nguyen: add remote device information
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @RowStart int, @RowEnd int;  

	DECLARE @Rpt_APD AS TABLE(
		DeviceID int,
		NoOfAccount int
	);

	INSERT INTO @Rpt_APD (DeviceID, NoOfAccount)
	SELECT DeviceID
		,COUNT(AccountID) AS NoOfAccount
	FROM dbo.Associations WITH (NOLOCK)
	WHERE LastAccessedDate > (GETDATE()-@LastDay)
	GROUP BY DeviceID
	HAVING COUNT(AccountID) >= @NoOfAccount;

	SELECT @TotalRows=COUNT(1) FROM @Rpt_APD;

	IF (@TotalRows = 0 )
		RETURN;	

	--Paging
	SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END;

	SELECT @RowStart = (@PageIndex-1)*@PageSize, 
	@RowEnd = (@RowStart+@PageSize);

	SELECT TBLA.RowNum, TBLA.DeviceID, TBLA.NoOfAccount
	INTO #tmpAPDRpt
	FROM
	(
		SELECT
			ROW_NUMBER() over(ORDER BY NoOfAccount DESC) AS RowNum
				,DeviceID
				,NoOfAccount
		FROM @Rpt_APD
		) TBLA 
		WHERE TBLA.RowNum BETWEEN @RowStart AND @RowEnd
		ORDER BY TBLA.RowNum; 

	IF(EXISTS(SELECT TOP 1 1 FROM #tmpAPDRpt))
	BEGIN

		DECLARE @tmpDeviceIds TABLE(DeviceID bigint);
		DECLARE @tmpDevices TABLE(DeviceID bigint, DeviceNo nvarchar(50), OSName nvarchar(50));

		INSERT INTO @tmpDeviceIds(DeviceId)
		SELECT DISTINCT DeviceID FROM #tmpAPDRpt;	
		

		DECLARE @DeviceIds NVARCHAR(max);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS nvarchar(50))
		FROM @tmpDeviceIds;

		INSERT INTO @tmpDevices(DeviceID, DeviceNo, OSName)
		EXEC dbo.sp_DeviceInfoBylistDeviceID 
			@DeviceIds = @DeviceIds;

		--select device information
		SELECT rpt.*, ISNULL(d.DeviceNo, 'N/A') DeviceNo  
		FROM #tmpAPDRpt rpt WITH (NOLOCK)
		LEFT JOIN @tmpDevices d ON rpt.DeviceID=d.DeviceID
		ORDER BY rpt.RowNum; 
	END;

	DROP TABLE #tmpAPDRpt;

	SELECT @PageSize AS PageSize,
		@PageIndex AS PageIndex,
		@TotalPages AS TotalPages,
		@TotalRows AS TotalRows;

END;
GO
GRANT EXECUTE ON [dbo].[Rpt_APD] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_APD] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_APD] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_APD_Export]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_APD_Export]
	@NoOfAccount int = 5,
	@LastDay int = 1,
	@FromRow int=1,
	@ToRow int=1000
AS
/*
Created: 20130808@Bobby.nguyen
Task: Export Accounts Per Device report
	DB: Agency.
  
Revisions:
	-20130808@bobby.nguyen: add remote device information
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @TotalRows INT;

	DECLARE @Rpt_APD AS TABLE(
		DeviceID int,
		NoOfAccount int
	);

	INSERT INTO @Rpt_APD (DeviceID, NoOfAccount)
	SELECT DeviceID
		,COUNT(AccountID) AS NoOfAccount
	FROM dbo.Associations WITH (NOLOCK)
	WHERE LastAccessedDate > (GETDATE()-@LastDay)
	GROUP BY DeviceID
	HAVING COUNT(AccountID) >= @NoOfAccount;

	SELECT @TotalRows=COUNT(1) FROM @Rpt_APD;

	IF (@TotalRows = 0 )
		RETURN;

	IF(@FromRow > @TotalRows)
		RETURN;

	IF(@ToRow > @TotalRows)
		SET @ToRow=@TotalRows;

	SELECT TBLA.RowNum, TBLA.DeviceID, TBLA.NoOfAccount
	INTO #tmpAPDRpt
	FROM
	(
		SELECT
			ROW_NUMBER() over(ORDER BY NoOfAccount DESC) AS RowNum
				,DeviceID
				,NoOfAccount
		FROM @Rpt_APD
		) TBLA 
		WHERE TBLA.RowNum BETWEEN @FromRow AND  @ToRow
		ORDER BY TBLA.RowNum; 

	IF(EXISTS(SELECT TOP 1 1 FROM #tmpAPDRpt))
	BEGIN

		DECLARE @tmpDeviceIds TABLE(DeviceID bigint);
		DECLARE @tmpDevices TABLE(DeviceID bigint, DeviceNo nvarchar(50), OSName nvarchar(50));

		INSERT INTO @tmpDeviceIds(DeviceId)
		SELECT DISTINCT DeviceID FROM #tmpAPDRpt;	
		

		DECLARE @DeviceIds NVARCHAR(max);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS nvarchar(50))
		FROM @tmpDeviceIds;

		INSERT INTO @tmpDevices(DeviceID, DeviceNo, OSName)
		EXEC dbo.sp_DeviceInfoBylistDeviceID 
			@DeviceIds = @DeviceIds;

		--select device information
		SELECT rpt.*, ISNULL(d.DeviceNo, 'N/A') DeviceNo  
		FROM #tmpAPDRpt rpt WITH (NOLOCK)
		LEFT JOIN @tmpDevices d ON rpt.DeviceID=d.DeviceID
		ORDER BY rpt.RowNum; 

	END;

	DROP TABLE #tmpAPDRpt;

END;
GO
GRANT EXECUTE ON [dbo].[Rpt_APD_Export] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_APD_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_APD_xtest]
	@NoOfAccount int = 5,
	@LastDay int = 1,
	@PageSize int=50 ,
	@PageIndex int=1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
AS
/*
Created: 20130117@Tom
Task: Retrieve Accounts Per Device report
	DB: Agency.
  
Revisions:
	-20130719@bobby.nguyen: add remote device information
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @RowStart int, @RowEnd int  

	DECLARE @Rpt_APD AS TABLE(
		DeviceID int,
		NoOfAccount int
	)

	INSERT INTO @Rpt_APD (DeviceID, NoOfAccount)
	SELECT [DeviceID]
		,COUNT([AccountID]) AS NoOfAccount
	FROM [dbo].[Associations] WITH (NOLOCK)
	WHERE [LastAccessedDate] > (GETDATE()-@LastDay)
	GROUP BY [DeviceID]
	HAVING COUNT([AccountID]) >= @NoOfAccount

	SET @TotalRows = @@ROWCOUNT;

	IF (@TotalRows = 0 )
		RETURN	
	
	IF (@TotalRows < @PageSize) 
		SET @PageSize = @TotalRows;

	--Paging
	IF ISNULL(@TotalPages,0) = 0
		SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END

	SELECT @PageIndex = @PageIndex - 1, 
		@RowStart = @PageSize * @PageIndex + 1, 
		@RowEnd = CASE WHEN ((@RowStart+@PageSize)> @TotalRows) THEN @TotalRows ELSE (@RowStart+@PageSize) END - 1

	IF (@TotalPages > @PageIndex) 
	BEGIN
		SELECT TBLA.RowNum, TBLA.DeviceID, TBLA.NoOfAccount
		INTO #tmpAPDRpt
		FROM
		(
			SELECT
				ROW_NUMBER() over(ORDER BY [NoOfAccount] DESC) AS RowNum
				  ,[DeviceID]
				  ,[NoOfAccount]
			FROM @Rpt_APD
		  ) TBLA 
		  WHERE TBLA .RowNum BETWEEN @RowStart AND @RowEnd
		  ORDER BY TBLA.RowNum 

		IF(EXISTS(SELECT TOP 1 1 FROM #tmpAPDRpt))
		BEGIN

			DECLARE @tmpDeviceIds TABLE(DeviceID bigint)
			DECLARE @tmpDevices TABLE(DeviceID bigint, DeviceNo nvarchar(50), OSName nvarchar(50))

			INSERT INTO @tmpDeviceIds(DeviceId)
			SELECT DISTINCT DeviceID FROM #tmpAPDRpt	
		

			DECLARE @DeviceIds VARCHAR(5000)
			SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS nvarchar(50))
			FROM @tmpDeviceIds

			INSERT INTO @tmpDevices(DeviceID, DeviceNo, OSName)
																																																																																																																																																																																																EXEC [dbo].[sp_DeviceInfoBylistDeviceID_xtest] 
				@DeviceIds = @DeviceIds

			--select device information
			SELECT rpt.*, d.DeviceNo FROM #tmpAPDRpt rpt WITH (NOLOCK)
			LEFT JOIN @tmpDevices d ON rpt.DeviceID=d.DeviceID

		END

		DROP TABLE #tmpAPDRpt
	END

	SELECT @PageSize AS PageSize,
		(@PageIndex + 1) AS PageIndex,
		@TotalPages AS TotalPages,
		@TotalRows AS TotalRows

END














GO
GRANT EXECUTE ON [dbo].[Rpt_APD_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_APD_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_APD_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_DPA]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_DPA]
	@NoOfDevice int = 5,
	@LastDay int = 1,
	@PageSize int=50 ,
	@PageIndex int=1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
AS
/*
Created: 20130117@Tom
Task: Retrieve Device Per Accounts report
  DB: Agency.
  
Revisions:
    
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @RowStart int, @RowEnd int;  

	DECLARE @Rpt_DPA AS TABLE(
		AccountID int,
		NoOfDevice int
	);

	INSERT INTO @Rpt_DPA (AccountID,NoOfDevice)
	SELECT ass.AccountID
		  ,COUNT(DeviceID) AS NoOfDevice
	  FROM dbo.Associations ass WITH (NOLOCK)
	  INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON ass.AccountID=acc.AccountID
	  WHERE LastAccessedDate > (GETDATE()-@LastDay)
	  GROUP BY ass.AccountID
	  HAVING COUNT(DeviceID) >= @NoOfDevice;

	SET @TotalRows = @@ROWCOUNT;

	IF (@TotalRows = 0 )
		RETURN;	
	
	IF (@TotalRows < @PageSize) 
	BEGIN
		SET @PageSize = @TotalRows;
	END;

	--Paging
	IF ISNULL(@TotalPages,0) = 0
	BEGIN
		SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END;
	END;

	SELECT @RowStart = (@PageIndex-1)*@PageSize, 
		@RowEnd = (@RowStart+@PageSize);

	SELECT TBLA.RowNum , TBLA.AccountID , tblAccount.UserName, TBLA.NoOfDevice
	FROM
	(
		SELECT
			ROW_NUMBER() over(ORDER BY NoOfDevice DESC) AS RowNum
				,AccountID
				,NoOfDevice
		FROM @Rpt_DPA
		) TBLA 
		INNER JOIN dbo.Accounts tblAccount 
		ON tblAccount.AccountID = TBLA.AccountID
		WHERE TBLA.RowNum BETWEEN @RowStart AND @RowEnd
		ORDER BY TBLA.RowNum; 

	SELECT @PageSize AS PageSize,
			@PageIndex AS PageIndex,
			@TotalPages AS TotalPages,
			@TotalRows AS TotalRows;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_DPA] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_DPA] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_DPA] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_DPA_Export]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_DPA_Export]
	@NoOfDevice int = 5,
	@LastDay int = 1,
	@FromRow int=1,
	@ToRow int=1000
AS
/*
Created: 20130808@Bobby.nguyen
Task: Export Device Per Accounts report
  DB: Agency.
  
Revisions:
    
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @TotalRows INT;

	DECLARE @Rpt_DPA AS TABLE(
		AccountID int,
		NoOfDevice int
	);

	INSERT INTO @Rpt_DPA (AccountID,NoOfDevice)
	SELECT ass.AccountID
		  ,COUNT(DeviceID) AS NoOfDevice
	  FROM dbo.Associations ass WITH (NOLOCK)
	  INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON ass.AccountID=acc.AccountID
	  WHERE LastAccessedDate > (GETDATE()-@LastDay)
	  GROUP BY ass.AccountID
	  HAVING COUNT(DeviceID) >= @NoOfDevice;

	SET @TotalRows = @@ROWCOUNT;

	IF (@TotalRows = 0 )
		RETURN;
	
	IF (@FromRow > @TotalRows) 
		RETURN;

	IF (@ToRow > @TotalRows) 
		SET @ToRow = @TotalRows;

	SELECT TBLA.RowNum , TBLA.AccountID , tblAccount.UserName, TBLA.NoOfDevice
	FROM
	(
		SELECT
			ROW_NUMBER() over(ORDER BY NoOfDevice DESC) AS RowNum
				,AccountID
				,NoOfDevice
		FROM @Rpt_DPA
		) TBLA 
		INNER JOIN dbo.Accounts tblAccount 
		ON tblAccount.AccountID = TBLA.AccountID
		WHERE TBLA.RowNum BETWEEN @FromRow AND  @ToRow
		ORDER BY TBLA.RowNum; 

END;
GO
GRANT EXECUTE ON [dbo].[Rpt_DPA_Export] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_DPA_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_DPA_xtest]
	@NoOfDevice int = 5,
	@LastDay int = 1,
	@PageSize int=50 ,
	@PageIndex int=1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
AS
/*
Created: 20130117@Tom
Task: Retrieve Device Per Accounts report
  DB: Agency.
  
Revisions:
    
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON

	DECLARE @RowStart int, @RowEnd int  

	DECLARE @Rpt_DPA AS TABLE(
		AccountID int,
		NoOfDevice int
	)

	INSERT INTO @Rpt_DPA (AccountID,NoOfDevice)
	SELECT [AccountID]
		  ,COUNT([DeviceID]) AS NoOfDevice
	  FROM [dbo].[Associations] WITH (NOLOCK)
	  WHERE [LastAccessedDate] > (GETDATE()-@LastDay)
	  GROUP BY [AccountID]
	  HAVING COUNT([DeviceID]) >= @NoOfDevice

	SET @TotalRows = @@ROWCOUNT;

	IF (@TotalRows = 0 )
		RETURN	
	
	IF (@TotalRows < @PageSize) 
	BEGIN
		SET @PageSize = @TotalRows;
	END

	--Paging
	IF ISNULL(@TotalPages,0) = 0
	BEGIN
		SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END
	END

	SELECT @PageIndex = @PageIndex - 1, 
		@RowStart = @PageSize * @PageIndex + 1, 
		@RowEnd = CASE WHEN ((@RowStart+@PageSize)> @TotalRows) THEN @TotalRows ELSE (@RowStart+@PageSize) END - 1

	IF (@TotalPages > @PageIndex) 
	BEGIN
		SELECT TBLA.RowNum , TBLA.AccountID , tblAccount.UserName, TBLA.NoOfDevice
		FROM
		(
			SELECT
				ROW_NUMBER() over(ORDER BY [NoOfDevice] DESC) AS RowNum
				  ,[AccountID]
				  ,[NoOfDevice]
			FROM @Rpt_DPA
		  ) TBLA 
		  INNER JOIN dbo.Accounts tblAccount 
			ON tblAccount.AccountID = TBLA.AccountID
		  WHERE TBLA .RowNum BETWEEN @RowStart AND @RowEnd
		  ORDER BY TBLA.RowNum 
	END
	SELECT @PageSize AS PageSize,
			(@PageIndex + 1) AS PageIndex,
			@TotalPages AS TotalPages,
			@TotalRows AS TotalRows
END














GO
GRANT EXECUTE ON [dbo].[Rpt_DPA_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_DPA_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_DPA_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAccountAssociationInfo]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAccountAssociationInfo] @accountId INT
AS
/*
	Created: 20130404@kan.nguyen
	Task: Get associated account
	  DB: FPS_SUB
	  
	Revisions:
		-20130705@Bobby.Nguyen: Update rmt schema & OPENQUERY
		-20161205@Harvey.Nguyen: Update first login + AssociatedAccount (via Tool)
		-20170407@Harvey.Nguyen: Remove associated account via Tool
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
    DECLARE @deviceId INT = 0
        ,@subscriberId INT = 0;

    SELECT TOP 1 @subscriberId = SubscriberID
    FROM dbo.Accounts WITH (NOLOCK)
    WHERE AccountID = @accountId;

    IF (@subscriberId > 0)
    BEGIN
        DECLARE @associatedDevices INT = 0
            ,@associatedAccounts INT = 0
            ,@exceptions INT = 0
            ,@firstLogin DATETIME
            ,@firstSeen NVARCHAR(50) = 'N/A';

        -- get Device L1
        CREATE TABLE #tmpDevL1 (
            DeviceID INT
            ,StatusID INT
            ,CreatedDate DATETIME
            );

        INSERT INTO #tmpDevL1
        SELECT s.DeviceID
            ,ISNULL(e.StatusID, 1) StatusID
            ,s.CreatedDate
        FROM dbo.Associations s(NOLOCK)
            LEFT OUTER JOIN rmt.Exceptions e(NOLOCK) ON (s.ExceptionID = e.ExceptionID)
        WHERE s.AccountID = @accountID;

        -- AssociatedDevices
        SELECT @associatedDevices = COUNT(1)
        FROM #tmpDevL1;

        -- Exceptions
        SELECT @exceptions = COUNT(1)
        FROM #tmpDevL1
        WHERE StatusID = 0;

        -- FirstLogin & FirstSeen    
        SELECT @firstLogin = a.CreatedDate
        FROM dbo.Accounts a
        WHERE a.AccountID = @accountId;
        
        SELECT TOP 1 @deviceId = t.DeviceID
		FROM #tmpDevL1 t
		GROUP BY DeviceID;

        IF (@deviceId > 0)
        BEGIN
            EXEC dbo.sp_DeviceInfoById 
				@deviceId = @deviceId
                ,@subscriberId = @subscriberId
                ,@deviceNo = @firstSeen OUTPUT;
        END;

        -- AssociatedAccounts
        --SELECT ToolId
        --INTO #tmpToolLv1
        --FROM rmt.ToolAccounts ta WITH (NOLOCK)
        --WHERE ta.AccountId = @accountId

        SELECT @associatedAccounts = COUNT(1)
        FROM (
            SELECT DISTINCT s.AccountID
            FROM #tmpDevL1 t
                INNER JOIN dbo.Associations s(NOLOCK) ON (t.DeviceID = s.DeviceID)
            WHERE s.AccountID <> @accountId
            
            --UNION -- with Tool Account
            --SELECT ta.AccountID
            --FROM rmt.ToolAccounts ta WITH (NOLOCK)
            --    INNER JOIN #tmpToolLv1 ttl ON ta.ToolID = ttl.ToolId
            --WHERE ta.AccountID <> @accountId
            ) tmpList;

        SELECT @associatedDevices AS AssociatedDevices
            ,@associatedAccounts AS AssociatedAccounts
            ,@exceptions AS Exceptions
            ,@firstLogin AS FirstLogin
            ,@firstSeen AS FirstDevice;

        DROP TABLE #tmpDevL1;
        --DROP TABLE #tmpToolLv1
	END;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAccountAssociationInfo] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAccountAssociationInfo_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_GetAccountAssociationInfo_xtest]
	@accountId INT
AS
/*
	Created: 20130404@kan.nguyen
	Task: Get associated account
	  DB: FPS_SUB
	  
	Revisions:
		-20130705@Bobby.Nguyen: Update rmt schema & OPENQUERY
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
	DECLARE @deviceId INT = 0,
			@subscriberId INT = 0
	SELECT TOP 1 @subscriberId=SubscriberID FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID=@accountId

	IF(@subscriberId > 0)
	BEGIN
		DECLARE @associatedDevices INT = 0,
				@associatedAccounts INT = 0,
				@exceptions INT = 0,
				@firstLogin DATETIME,
				@firstSeen NVARCHAR(50) = 'N/A'
		
		-- get Device L1
		CREATE TABLE #tmpDevL1(DeviceID INT, StatusID INT, CreatedDate DATETIME)
		INSERT INTO #tmpDevL1
		SELECT s.DeviceID, ISNULL(e.StatusID, 1) StatusID, s.CreatedDate
		FROM dbo.Associations s (NOLOCK)
			LEFT OUTER JOIN rmt.Exceptions e (NOLOCK) ON (s.ExceptionID = e.ExceptionID)
		WHERE s.AccountID = @accountID
		
		-- AssociatedDevices
		SELECT @associatedDevices = COUNT(1) FROM #tmpDevL1

		-- Exceptions
		SELECT @exceptions = COUNT(1) FROM #tmpDevL1 WHERE StatusID = 0

		-- FirstLogin & FirstSeen
		SELECT TOP 1 @firstLogin = MIN(t.CreatedDate), @deviceId = t.DeviceID
		FROM #tmpDevL1 t
		GROUP BY DeviceID
		IF(@deviceId > 0)
		BEGIN			
																																																																																																																																																																																																EXEC [dbo].[sp_DeviceInfoById_xtest] 
			@deviceId=@deviceId,
			@subscriberId=@subscriberId, 
			@deviceNo=@firstSeen output
		END
		-- AssociatedAccounts
		SELECT @associatedAccounts = COUNT(DISTINCT s.AccountID)
		FROM #tmpDevL1 t
			INNER JOIN dbo.Associations s (NOLOCK) ON (t.DeviceID = s.DeviceID)
		WHERE s.AccountID <> @accountId
		
		SELECT @associatedDevices AS AssociatedDevices,
				@associatedAccounts AS AssociatedAccounts,
				@exceptions AS Exceptions,
				@firstLogin AS FirstLogin,
				@firstSeen AS FirstDevice;

		DROP TABLE #tmpDevL1;
	END
END














GO
GRANT EXECUTE ON [dbo].[Rpt_GetAccountAssociationInfo_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccount]
@accountId INT
AS
/*
Created: 20130313@Bobby
Task: Get associated account
  DB: FPS_SUB_111.
  
Revisions:
    
Param's Explanation:

*/
SET NOCOUNT ON;

IF(@accountId > 0)
BEGIN
	DECLARE @devicesINCommon INT=0,@otherDevices INT=0,@associatedAccounts INT=0,@deviceExceptions INT=0;
	
	--SELECT device level 1
	SELECT DeviceID INTO #tblDeviveIds 
	FROM dbo.Associations (NOLOCK)
		WHERE AccountID=@accountId;
	
	-- SELECT all devices IN Common
	SELECT @devicesINCommon = COUNT(DISTINCT DeviceID) FROM dbo.Associations (NOLOCK)
	WHERE DeviceID IN
		(
			SELECT DeviceID FROM #tblDeviveIds 
		)
		AND AccountID<>@accountId;
		 
	-- count @otherDevices
	SELECT @otherDevices = COUNT(*) FROM (
		SELECT DeviceID, COUNT(DeviceID) as NumCount FROM Associations (NOLOCK) 
		WHERE DeviceID IN (
			SELECT DeviceID FROM #tblDeviveIds 
		) 
	GROUP BY DeviceID
	HAVING COUNT(DeviceID)=1) A;
	
	-- count @associatedAccounts
	SELECT @associatedAccounts = COUNT(DISTINCT AccountID) 
	FROM dbo.Associations (NOLOCK) 
		WHERE DeviceID IN (
			SELECT DeviceID FROM #tblDeviveIds 
		) 
		AND AccountID <> @accountId;
	
	-- count @associatedAccounts
	SELECT @deviceExceptions=COUNT(DISTINCT A.DeviceID) 
	FROM dbo.Associations A (NOLOCK) 
	INNER JOIN rmt.Exceptions E (NOLOCK) ON A.ExceptionID=E.ExceptionID
	WHERE A.AccountID=@accountId 
	AND (A.ExceptionID > 0 AND E.StatusID=0);
	
	SELECT @accountId AS AccountID,
			@devicesINCommon AS DevicesINCommon,
			@otherDevices AS OtherDevices,
			@associatedAccounts AS AssociatedAccounts,
			@deviceExceptions AS DeviceExceptions;

	DROP TABLE #tblDeviveIds;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccount_xtest]
@accountId INT
AS
/*
Created: 20130313@Bobby
Task: Get associated account
  DB: FPS_SUB_111.
  
Revisions:
    
Param's Explanation:

*/
SET NOCOUNT ON;

IF(@accountId > 0)
BEGIN
	DECLARE @devicesINCommon INT=0,@otherDevices INT=0,@associatedAccounts INT=0,@deviceExceptions INT=0;
	
	--SELECT device level 1
	SELECT DeviceID INTO #tblDeviveIds 
	FROM dbo.Associations (NOLOCK)
		WHERE AccountID=@accountId
	
	-- SELECT all devices IN Common
	SELECT @devicesINCommon = COUNT(DISTINCT DeviceID) FROM dbo.Associations (NOLOCK)
	WHERE DeviceID IN
		(
			SELECT DeviceID FROM #tblDeviveIds 
		)
		AND AccountID<>@accountId
		 
	-- count @otherDevices
	SELECT @otherDevices = COUNT(*) FROM (
		SELECT DeviceID, COUNT(DeviceID) as NumCount FROM Associations (NOLOCK) 
		WHERE DeviceID IN (
			SELECT DeviceID FROM #tblDeviveIds 
		) 
	GROUP BY DeviceID
	HAVING COUNT(DeviceID)=1) A
	
	-- count @associatedAccounts
	SELECT @associatedAccounts = COUNT(DISTINCT AccountID) 
	FROM dbo.Associations (NOLOCK) 
		WHERE DeviceID IN (
			SELECT DeviceID FROM #tblDeviveIds 
		) 
		AND AccountID <> @accountId
	
	-- count @associatedAccounts
	SELECT @deviceExceptions=COUNT(DISTINCT A.DeviceID) 
	FROM dbo.Associations A (NOLOCK) 
	INNER JOIN rmt.Exceptions E (NOLOCK) ON A.ExceptionID=E.ExceptionID
	WHERE A.AccountID=@accountId 
	AND (A.ExceptionID > 0 AND E.StatusID=0)
	
	SELECT @accountId AS AccountID,
			@devicesINCommon AS DevicesINCommon,
			@otherDevices AS OtherDevices,
			@associatedAccounts AS AssociatedAccounts,
			@deviceExceptions AS DeviceExceptions;

	DROP TABLE #tblDeviveIds;
END














GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccountByAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccountByAccount] 
	@userName NVARCHAR(50)
	,@page INT = 1
	,@pageSize INT = 10
	,@total INT = 0 OUTPUT
AS
/***
	Created: 20130319@Bobby
	Task: get associated accounts reports by account
	  DB: FPS_SUB
	  
	Revisions:
		- 20161219@Harvey: Enhance paging & including Associated Account via tool
		- 20170330@Harvey: Remove Associated Account via tool
	Param's Explanation:
***/
BEGIN
	SET NOCOUNT ON;

	DECLARE @accountId INT = 0
        ,@subscriberId INT;

    SELECT TOP 1 @accountId = AccountId
        ,@subscriberId = SubscriberID
    FROM dbo.Accounts(NOLOCK)
    WHERE UserName = @userName;

    IF (ISNULL(@accountId, 0) = 0) RETURN;

    --SELECT DISTINCT ToolId
    --INTO #tmpToolLv1
    --FROM rmt.ToolAccounts ta WITH (NOLOCK)
    --WHERE ta.AccountId = @accountId

    SELECT *
    INTO #tmpAssociatedAccount
    FROM (
        SELECT AccountID
            ,MAX(LastAccessedDate) LastAccessedDate
        FROM dbo.Associations(NOLOCK)
        WHERE DeviceID IN (
                SELECT DeviceID
                FROM dbo.Associations(NOLOCK)
                WHERE AccountID = @accountId
                )
            AND AccountID <> @accountId
        GROUP BY AccountID
        
        --UNION
        --SELECT ta.AccountID
        --    ,MAX(ta.LastAccessedDate) LastAccessedDate
        --FROM rmt.ToolAccounts ta WITH (NOLOCK)
        --    INNER JOIN #tmpToolLv1 ttl ON ta.ToolID = ttl.ToolId
        --WHERE ta.AccountID <> @accountId
        --GROUP BY ta.AccountID
        ) tmp;

    SELECT COUNT(*) OVER () totalrow_count
        ,AccountID
        ,MAX(LastAccessedDate) LastAccessedDate
        ,Level = 2
    INTO #accL2
    FROM #tmpAssociatedAccount WITH (NOLOCK)
    GROUP BY AccountID
    ORDER BY LastAccessedDate DESC OFFSET @pageSize * (@page - 1) ROWS

    FETCH NEXT @pageSize ROWS ONLY;

    --DROP TABLE #tmpToolLv1

    DROP TABLE #tmpAssociatedAccount;

    SELECT @total = ac.totalrow_count
    FROM #accL2(NOLOCK) ac;

    DECLARE @itemType INT = 0;--- hardcode for account

    -- implement paging
    CREATE TABLE #tblPaging (
        AccountID INT
        ,UserName NVARCHAR(50)
        ,UserName2 NVARCHAR(50)
        ,SubscriberId INT
        ,LastAccessedDate DATETIME
        ,Level INT
        );

    INSERT INTO #tblPaging
    SELECT AccountID
        ,UserName
        ,UserName2
        ,SubscriberId
        ,LastAccessedDate
        ,Level
    FROM (
        SELECT accL2.AccountID
            ,acc.UserName
            ,acc.UserName2
            ,acc.SubscriberId
            ,accL2.LastAccessedDate
            ,accL2.Level
        FROM (
            SELECT l2.AccountID
                ,l2.LastAccessedDate
                ,l2.Level
            FROM #accL2(NOLOCK) l2
            
            UNION
            (
                SELECT ass.AccountID
                    ,MAX(LastAccessedDate) LastAccessedDate
                    ,0 AS Level
                FROM dbo.Associations ass(NOLOCK)
                WHERE AccountID = @accountId
                GROUP BY ass.AccountID -- central point
                )
            ) accL2
            INNER JOIN dbo.Accounts acc WITH (NOLOCK) ON accL2.AccountID = acc.AccountID
        ) tmp;

    DROP TABLE #accL2;

    -- account info
    SELECT acc.AccountID
        ,acc.UserName
        ,acc.UserName2
        ,acc.SubscriberID
        ,sub.SubscriberName
    FROM #tblPaging acc(NOLOCK)
        INNER JOIN rmt.Subscribers sub(NOLOCK) ON (acc.SubscriberId = sub.SubscriberID)
    ORDER BY acc.Level
        ,acc.LastAccessedDate DESC;

    -- evidence
    SELECT s.ItemID
        ,s.ItemValue
        ,m.EviID
        ,m.EviGroupID
        ,m.EviCode
        ,m.SubscriberID
        ,s.LevelID
        ,m.StatusID
        ,s.ItemType
        ,t.EviGroupID AS EviGroup
        ,m.SubscriberID AS TrustyID
        ,CASE 
            WHEN m.SubscriberID <> @subscriberId THEN 1
            WHEN m.SubscriberID = @subscriberId THEN 0
            END Trusty
    INTO #tblEvi
    FROM #tblPaging tblTemp(NOLOCK)
        INNER JOIN rmt.EvidenceSub s(NOLOCK) ON (
            tblTemp.AccountID = s.ItemID
            AND tblTemp.UserName = s.ItemValue
            )
        INNER JOIN rmt.EvidenceMaster m(NOLOCK) ON (s.EviID = m.EviID)
        INNER JOIN rmt.EvidenceTypes t(NOLOCK) ON (m.EviCode = t.EviCode)
    WHERE s.SubscriberId = @subscriberId
        AND s.ItemType = @itemType
        AND m.StatusId = 0;

    -- delete duplicate item with high prority
    DELETE #tblEvi
    FROM #tblEvi tblA
        INNER JOIN (
        SELECT ItemID
            ,ItemType
            ,Trusty
        FROM #tblEvi tblB
        WHERE tblB.Trusty = 0
        ) tblB ON (
            tblA.ItemID = tblB.ItemID
            AND tblA.ItemType = tblB.ItemType
            )
    WHERE tblA.Trusty = 1;

    -- check valid trusty evidence
    IF (
            EXISTS (
                SELECT TOP 1 1
                FROM #tblEvi
                WHERE Trusty = 1
                )
            )
    BEGIN
        CREATE TABLE #TrustyInfo (
            TrustyId INT
            ,TrustValue VARCHAR(50)
            ,TrustType VARCHAR(50)
            );

        INSERT INTO #TrustyInfo (
            TrustyId
            ,TrustValue
            ,TrustType
            )
        EXEC dbo.admin_get_subtrusty @SubscriberId = @subscriberId;

        SELECT evi.*
        FROM #tblEvi evi
            INNER JOIN #TrustyInfo t ON t.TrustyId = evi.TrustyID
            AND t.TrustValue = evi.EviGroup
        WHERE evi.Trusty = 1
            AND t.TrustType = 'G'
        
        UNION
        SELECT evi.*
        FROM #tblEvi evi
            INNER JOIN #TrustyInfo t ON t.TrustyId = evi.TrustyID
            AND t.TrustValue = evi.EviCode
        WHERE evi.Trusty = 1
            AND t.TrustType = 'C'
        
        UNION
        SELECT evi.*
        FROM #tblEvi evi
        WHERE evi.Trusty = 0;
    END;
    ELSE
        SELECT *
        FROM #tblEvi;

    --- accounts L1
    SELECT AccountID
        ,DevCom = 0
        ,DevOther = 0
        ,AssAcc = 0
        ,DevEx = 0
    INTO #assL1
    FROM #tblPaging;

    DROP TABLE #tblPaging;

    --- device association L2
    SELECT DISTINCT DeviceID
        ,AccountID
        ,ISNULL(ExceptionID, 0) AS ExceptionID
    INTO #assL2
    FROM dbo.Associations(NOLOCK)
    WHERE AccountID IN (
            SELECT AccountID
            FROM #assL1
            );

    --- association L3
    SELECT DeviceID
        ,AccountID
    INTO #assL3
    FROM dbo.Associations(NOLOCK)
    WHERE DeviceID IN (
            SELECT DeviceID
            FROM #assL2
            );

    -- update associated accounts
    UPDATE #assL1
    SET AssAcc = x1.numAcc
    FROM #assL1 AS l1
        INNER JOIN (
        SELECT tmpAss.AccountID
            ,COUNT(tmpAss.AssAcc) numAcc
        FROM (
            SELECT DISTINCT l2.accountid
                ,l3.accountid 'AssAcc'
            FROM #assL3 l3
                INNER JOIN #assL2 l2 ON l3.deviceId = l2.deviceId
            WHERE l2.accountid <> l3.accountid
            
            --UNION
            --SELECT DISTINCT ta.AccountId
            --    ,ta2.AccountID
            --FROM rmt.ToolAccounts ta WITH (NOLOCK)
            --    INNER JOIN rmt.ToolAccounts ta2 WITH (NOLOCK) ON ta.ToolId = ta2.ToolId
            --WHERE ta.AccountId <> ta2.AccountId
            ) tmpAss
        GROUP BY tmpAss.AccountID
        ) x1 ON l1.accountid = x1.accountid;

    -- update exception devices
    UPDATE #assL1
    SET DevEx = x1.numEx
    FROM #assL1 AS l1
        INNER JOIN (
        SELECT l2.accountid
            ,SUM(CASE 
                    WHEN l2.ExceptionID > 0 THEN 1
                    ELSE 0
                    END) numEx
        FROM #assL2 l2
            INNER JOIN rmt.Exceptions ex ON l2.ExceptionID = ex.ExceptionID
        WHERE ex.StatusId = 0
        GROUP BY l2.accountid
        ) x1 ON l1.accountid = x1.accountid;

    -- select device in common/others
    SELECT l1.AccountID
        ,DevCom = x3.DevCom
        ,DevOther = x3.DevOther
        ,AssAcc
        ,DevEx
    FROM #assL1 l1
        LEFT JOIN (
        SELECT AccountID
            ,SUM(CASE 
                    WHEN ISNULL(x2.numAss, 0) > 1 THEN 1
                    ELSE 0
                    END) DevCom
            ,SUM(CASE 
                    WHEN ISNULL(x2.numAss, 0) = 1 THEN 1
                    ELSE 0
                    END) DevOther
        FROM (
            SELECT t2.AccountID
                ,t2.DeviceID
                ,x1.numAss
            FROM #assL2 t2
                INNER JOIN (
                SELECT l2.DeviceID
                    ,COUNT(DISTINCT ass.AccountID) numAss
                FROM #assL3 ass
                    INNER JOIN #assL2 l2 ON ass.DeviceID = l2.deviceid
                GROUP BY l2.DeviceID
                ) x1 ON t2.DeviceID = x1.DeviceID
            ) x2
        GROUP BY AccountID
        ) x3 ON l1.AccountID = x3.AccountID;

    DROP TABLE #assL1;
    DROP TABLE #assL2;
    DROP TABLE #assL3;
    DROP TABLE #tblEvi;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccountByAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccountByAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccountByAccount_xtest] 
    @userName NVARCHAR(50)
    ,@page INT = 1
    ,@pageSize INT = 10
    ,@total INT = 0 OUTPUT
AS
/***
    Created: 20130319@Bobby
    Task: get associated accounts reports by account
      DB: FPS_SUB
      
    Revisions:
    20161219@Harvey: Enhance paging & including Associated Account via tool    
    Param's Explanation:
***/
BEGIN
    SET NOCOUNT ON

    DECLARE @accountId INT = 0
        ,@subscriberId INT;

    SELECT TOP 1 @accountId = AccountId
        ,@subscriberId = SubscriberID
    FROM dbo.Accounts(NOLOCK)
    WHERE UserName = @userName

    IF (ISNULL(@accountId, 0) = 0) RETURN;

    SELECT DISTINCT ToolId
    INTO #tmpToolLv1
    FROM rmt.ToolAccounts ta WITH (NOLOCK)
    WHERE ta.AccountId = @accountId

    SELECT *
    INTO #tmpAssociatedAccount
    FROM (
        SELECT AccountID
            ,MAX(LastAccessedDate) LastAccessedDate
        FROM dbo.Associations(NOLOCK)
        WHERE DeviceID IN (
                SELECT DeviceID
                FROM dbo.Associations(NOLOCK)
                WHERE AccountID = @accountId
                )
            AND AccountID <> @accountId
        GROUP BY AccountID
        
        UNION
        SELECT ta.AccountID
            ,MAX(ta.LastAccessedDate) LastAccessedDate
        FROM rmt.ToolAccounts ta WITH (NOLOCK)
            INNER JOIN #tmpToolLv1 ttl ON ta.ToolID = ttl.ToolId
        WHERE ta.AccountID <> @accountId
        GROUP BY ta.AccountID
        ) tmp

    SELECT COUNT(*) OVER () totalrow_count
        ,AccountID
        ,MAX(LastAccessedDate) LastAccessedDate
        ,[Level] = 2
    INTO #accL2
    FROM #tmpAssociatedAccount WITH (NOLOCK)
    GROUP BY AccountID
    ORDER BY LastAccessedDate DESC OFFSET @pageSize * (@page - 1) ROWS

    FETCH NEXT @pageSize ROWS ONLY;

    DROP TABLE #tmpToolLv1

    DROP TABLE #tmpAssociatedAccount

    SELECT @total = ac.totalrow_count
    FROM #accL2(NOLOCK) ac;

    DECLARE @itemType INT = 0;--- hardcode for account

    -- implement paging
    CREATE TABLE #tblPaging (
        AccountID INT
        ,UserName NVARCHAR(50)
        ,UserName2 NVARCHAR(50)
        ,SubscriberId INT
        ,LastAccessedDate DATETIME
        ,[Level] INT
        );

    INSERT INTO #tblPaging
    SELECT AccountID
        ,UserName
        ,UserName2
        ,SubscriberId
        ,LastAccessedDate
        ,[Level]
    FROM (
        SELECT accL2.AccountID
            ,acc.UserName
            ,acc.UserName2
            ,acc.SubscriberId
            ,accL2.LastAccessedDate
            ,accL2.[Level]
        FROM (
            SELECT l2.AccountID
                ,l2.LastAccessedDate
                ,l2.[Level]
            FROM #accL2(NOLOCK) l2
            
            UNION
            (
                SELECT ass.AccountID
                    ,MAX(LastAccessedDate) LastAccessedDate
                    ,0 AS [Level]
                FROM dbo.Associations ass(NOLOCK)
                WHERE AccountID = @accountId
                GROUP BY ass.AccountID -- central point
                )
            ) accL2
            INNER JOIN [dbo].[Accounts] acc WITH (NOLOCK) ON accL2.AccountID = acc.AccountID
        ) tmp

    DROP TABLE #accL2;

    -- account info
    SELECT acc.AccountID
        ,acc.UserName
        ,acc.UserName2
        ,acc.SubscriberID
        ,sub.SubscriberName
    FROM #tblPaging acc(NOLOCK)
        INNER JOIN rmt.Subscribers sub(NOLOCK) ON (acc.SubscriberId = sub.SubscriberID)
    ORDER BY acc.[Level]
        ,acc.LastAccessedDate DESC

    -- evidence
    SELECT s.ItemID
        ,s.ItemValue
        ,m.EviID
        ,m.EviGroupID
        ,m.EviCode
        ,m.SubscriberID
        ,s.LevelID
        ,m.StatusID
        ,s.ItemType
        ,t.EviGroupID AS EviGroup
        ,m.SubscriberID AS TrustyID
        ,CASE 
            WHEN m.SubscriberID <> @subscriberId THEN 1
            WHEN m.SubscriberID = @subscriberId THEN 0
            END Trusty
    INTO #tblEvi
    FROM #tblPaging tblTemp(NOLOCK)
        INNER JOIN rmt.EvidenceSub s(NOLOCK) ON (
            tblTemp.AccountID = s.ItemID
            AND tblTemp.UserName = s.ItemValue
            )
        INNER JOIN rmt.EvidenceMaster m(NOLOCK) ON (s.EviID = m.EviID)
        INNER JOIN rmt.EvidenceTypes t(NOLOCK) ON (m.EviCode = t.EviCode)
    WHERE s.SubscriberId = @subscriberId
        AND s.ItemType = @itemType
        AND m.StatusId = 0

    -- delete duplicate item with with high prority
    DELETE #tblEvi
    FROM #tblEvi tblA
        INNER JOIN (
        SELECT ItemID
            ,ItemType
            ,Trusty
        FROM #tblEvi tblB
        WHERE tblB.Trusty = 0
        ) tblB ON (
            tblA.ItemID = tblB.ItemID
            AND tblA.ItemType = tblB.ItemType
            )
    WHERE tblA.Trusty = 1

    -- check valid trusty evidence
    IF (
            EXISTS (
                SELECT TOP 1 1
                FROM #tblEvi
                WHERE Trusty = 1
                )
            )
    BEGIN
        CREATE TABLE #TrustyInfo (
            TrustyId INT
            ,TrustValue VARCHAR(50)
            ,TrustType VARCHAR(50)
            )

        INSERT INTO #TrustyInfo (
            TrustyId
            ,TrustValue
            ,TrustType
            )
        EXEC [dbo].[admin_get_subtrusty] @SubscriberId = @subscriberId

        SELECT evi.*
        FROM #tblEvi evi
            INNER JOIN #TrustyInfo t ON t.TrustyId = evi.TrustyID
            AND t.TrustValue = evi.EviGroup
        WHERE evi.Trusty = 1
            AND t.TrustType = 'G'
        
        UNION
        SELECT evi.*
        FROM #tblEvi evi
            INNER JOIN #TrustyInfo t ON t.TrustyId = evi.TrustyID
            AND t.TrustValue = evi.EviCode
        WHERE evi.Trusty = 1
            AND t.TrustType = 'C'
        
        UNION
        SELECT evi.*
        FROM #tblEvi evi
        WHERE evi.Trusty = 0
    END
    ELSE
        SELECT *
        FROM #tblEvi

    --- accounts L1
    SELECT AccountID
        ,DevCom = 0
        ,DevOther = 0
        ,AssAcc = 0
        ,DevEx = 0
    INTO #assL1
    FROM #tblPaging

    DROP TABLE #tblPaging;

    --- device association L2
    SELECT DISTINCT DeviceID
        ,AccountID
        ,ISNULL(ExceptionID, 0) AS ExceptionID
    INTO #assL2
    FROM dbo.Associations(NOLOCK)
    WHERE AccountID IN (
            SELECT AccountID
            FROM #assL1
            )

    --- association L3
    SELECT DeviceID
        ,AccountID
    INTO #assL3
    FROM dbo.Associations(NOLOCK)
    WHERE DeviceID IN (
            SELECT DeviceID
            FROM #assL2
            )

    -- update associated accounts
    UPDATE #assL1
    SET AssAcc = x1.numAcc
    FROM #assL1 AS l1
        INNER JOIN (
        SELECT tmpAss.AccountID
            ,COUNT(tmpAss.AssAcc) numAcc
        FROM (
            SELECT l2.accountid
                ,l3.accountid 'AssAcc'
            FROM #assL3 l3
                INNER JOIN #assL2 l2 ON l3.deviceId = l2.deviceId
            WHERE l2.accountid <> l3.accountid
            
            UNION
            SELECT DISTINCT ta.AccountId
                ,ta2.AccountID
            FROM rmt.ToolAccounts ta WITH (NOLOCK)
                INNER JOIN rmt.ToolAccounts ta2 WITH (NOLOCK) ON ta.ToolId = ta2.ToolId
            WHERE ta.AccountId <> ta2.AccountId
            ) tmpAss
        GROUP BY tmpAss.AccountID
        ) x1 ON l1.accountid = x1.accountid

    -- update exception devices
    UPDATE #assL1
    SET DevEx = x1.numEx
    FROM #assL1 AS l1
        INNER JOIN (
        SELECT l2.accountid
            ,SUM(CASE 
                    WHEN l2.ExceptionID > 0 THEN 1
                    ELSE 0
                    END) numEx
        FROM #assL2 l2
            INNER JOIN rmt.Exceptions ex ON l2.ExceptionID = ex.ExceptionID
        WHERE ex.StatusId = 0
        GROUP BY l2.accountid
        ) x1 ON l1.accountid = x1.accountid

    -- select device in common/others
    SELECT l1.AccountID
        ,DevCom = x3.DevCom
        ,DevOther = x3.DevOther
        ,AssAcc
        ,DevEx
    FROM #assL1 l1
        LEFT JOIN (
        SELECT AccountID
            ,SUM(CASE 
                    WHEN ISNULL(x2.numAss, 0) > 1 THEN 1
                    ELSE 0
                    END) DevCom
            ,SUM(CASE 
                    WHEN ISNULL(x2.numAss, 0) = 1 THEN 1
                    ELSE 0
                    END) DevOther
        FROM (
            SELECT t2.AccountID
                ,t2.DeviceID
                ,x1.numAss
            FROM #assL2 t2
                INNER JOIN (
                SELECT l2.DeviceID
                    ,COUNT(DISTINCT ass.AccountID) numAss
                FROM #assL3 ass
                    INNER JOIN #assL2 l2 ON ass.DeviceID = l2.deviceid
                GROUP BY l2.DeviceID
                ) x1 ON t2.DeviceID = x1.DeviceID
            ) x2
        GROUP BY AccountID
        ) x3 ON l1.AccountID = x3.AccountID

    DROP TABLE #assL1;
    DROP TABLE #assL2;
    DROP TABLE #assL3;
    DROP TABLE #tblEvi;
END

















GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccountByAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccountByDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccountByDevice]
	@deviceNo NVARCHAR(50),
	@page INT = 1,
	@pageSize INT = 10,
	@total INT = 0 OUTPUT
AS
/***
	Created: 20130319@Bobby
	Task: get associated accounts reports by device Id
	  DB: FPS_SUB
	  
	Revisions:
		-20130705@Bobby.Nguyen: Add remote sql & fix bug trusty evidence
	Param's Explanation:
***/
SET NOCOUNT ON;

DECLARE @deviceId INT, @subscriberId INT;

SELECT TOP 1 @subscriberId=subscriberId 
FROM dbo.Accounts WITH (NOLOCK)
WHERE AccountID > 0;

EXEC dbo.sp_DeviceInfoByNo 
	@deviceNo=@deviceNo, 
	@subscriberId=@subscriberId, 
	@deviceId=@deviceId output;

IF(ISNULL(@deviceId, 0) = 0) RETURN;

SELECT @total = COUNT(DISTINCT AccountId)
FROM dbo.Associations WITH (NOLOCK) 
WHERE DeviceID=@deviceId;

IF(ISNULL(@total, 0) > 0)
BEGIN
	DECLARE @itemType INT = 0;--- hardcode for account
	DECLARE @skip INT = 0, @limit INT = 0;
	SET @skip = (@page-1) * @pageSize;
	SET @limit = @skip + @pageSize;
	IF(@page > 1)
		SET @skip += 1;
		
	-- implement paging
	CREATE TABLE #tblPaging
	(
		AccountID INT, 
		UserName NVARCHAR(50), 
		UserName2 NVARCHAR(50), 
		SubscriberId INT
	);
	INSERT INTO #tblPaging 
	SELECT AccountID, UserName, UserName2, SubscriberId
	FROM (
		SELECT ass.AccountID, acc.UserName, acc.UserName2, acc.SubscriberId, ROW_NUMBER() OVER (ORDER BY LastAccessedDate DESC) AS RowNum
		FROM dbo.Associations ass (NOLOCK)
		INNER JOIN dbo.Accounts acc (NOLOCK) ON ass.AccountID=acc.AccountID
		WHERE ass.DeviceID=@deviceId
	) tmp
	WHERE RowNum BETWEEN @skip AND @limit;
	
	

	-- account info
	SELECT acc.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID, sub.SubscriberName
	FROM #tblPaging acc (NOLOCK)
	INNER JOIN rmt.Subscribers sub ON (acc.SubscriberId = sub.SubscriberID);
	
	-- evidence
	SELECT s.ItemID, s.ItemValue, m.EviID, m.EviGroupID, m.EviCode, s.SubscriberID, s.LevelID
		, s.ItemType
		, t.EviGroupID AS EviGroup
		, m.SubscriberID AS TrustyID
		, CASE
			WHEN m.SubscriberID<>@subscriberId THEN 1
			WHEN m.SubscriberID=@subscriberId THEN 0
		END Trusty
	INTO #tblEvi
	FROM #tblPaging tblTemp (NOLOCK)
		INNER JOIN rmt.EvidenceSub s (NOLOCK) ON (tblTemp.AccountID = s.ItemID AND tblTemp.UserName=s.ItemValue)
		INNER JOIN  rmt.EvidenceMaster m (NOLOCK) ON (s.EviID = m.EviID)
		INNER JOIN  rmt.EvidenceTypes t (NOLOCK) ON (m.EviCode = t.EviCode)
	WHERE s.SubscriberId = @subscriberId
		AND s.ItemType = @itemType
		AND m.StatusId = 0;

	-- delete duplicate item with with high prority
	DELETE #tblEvi  
	FROM #tblEvi tblA  
		INNER JOIN (SELECT ItemID , ItemType , Trusty 
					FROM #tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1;

	-- check valid trusty evidence
	IF(EXISTS(SELECT TOP 1 1 FROM #tblEvi WHERE Trusty=1))
	BEGIN
		CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50));
		INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
																EXEC dbo.admin_get_subtrusty @SubscriberId=@subscriberId;

		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
		WHERE evi.Trusty=1
			AND t.TrustType='G'
		UNION 
		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
		WHERE evi.Trusty=1
			AND t.TrustType='C'
		UNION
		SELECT evi.*
		FROM #tblEvi evi
		WHERE evi.Trusty=0;

	END;
	ELSE
		SELECT * FROM #tblEvi;
		
	--- accounts L1
	select AccountID,DevCom=0,DevOther=0,AssAcc=0,DevEx=0 into #assL1
	from #tblPaging;

	drop table #tblPaging;
	
	--- device association L2
	select distinct DeviceID, AccountID, ISNULL(ExceptionID, 0) as ExceptionID into #assL2
	from dbo.Associations (NOLOCK)
	where AccountID IN (select AccountID from #assL1) 
	order by AccountID;

	--- association L3
	select DeviceID, AccountID  into #assL3
	from dbo.Associations (NOLOCK)
	where DeviceID in (select DeviceID from #assL2);

	-- update associated accounts
	update #assL1
	set AssAcc=x1.numAcc
	from #assL1 as l1
	inner join (
		select l2.accountid, COUNT(distinct l3.accountid) numAcc from #assL3 l3
		inner join #assL2 l2 on l3.deviceId = l2.deviceId
		where l2.accountid <> l3.accountid
		group by l2.accountid ) x1 on l1.accountid=x1.accountid;
		
	-- update exception devices
	update #assL1
	set DevEx=x1.numEx
	from #assL1 as l1
	inner join (
		select l2.accountid, SUM(CASE 
				WHEN l2.ExceptionID > 0 THEN 1 ELSE 0 
				END) numEx from #assL2 l2
		inner join rmt.Exceptions ex on l2.ExceptionID = ex.ExceptionID
		where ex.StatusId=0
		group by l2.accountid
		) x1 on l1.accountid=x1.accountid;
		
	-- select device in common/others
	select l1.AccountID,
			DevCom = SUM(CASE 
				WHEN x2.numAss > 1 THEN 1 ELSE 0 
				END),
			DevOther= SUM(CASE 
				WHEN x2.numAss = 1 THEN 1 ELSE 0 
				END),
			AssAcc,
			DevEx
	from #assL1 l1
	inner join
	(
		select t2.AccountID, t2.DeviceID, x1.numAss from #assL2 t2
		inner join
		(select l2.DeviceID, COUNT(distinct ass.AccountID) numAss from #assL3 ass
			inner join #assL2 l2 on ass.DeviceID = l2.deviceid
			group by l2.DeviceID
		) x1 on t2.DeviceID=x1.DeviceID
	) x2 on l1.AccountID = x2.AccountID
	group by l1.AccountID, AssAcc, DevEx;
	
	drop table #assL1;
	drop table #assL2;
	drop table #assL3;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccountByDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccountByDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccountByDevice_xtest]
	@deviceNo NVARCHAR(50),
	@page INT = 1,
	@pageSize INT = 10,
	@total INT = 0 OUTPUT
AS
/***
	Created: 20130319@Bobby
	Task: get associated accounts reports by device Id
	  DB: FPS_SUB
	  
	Revisions:
		-20130705@Bobby.Nguyen: Add remote sql & fix bug trusty evidence
	Param's Explanation:
***/
SET NOCOUNT ON

DECLARE @deviceId INT, @subscriberId INT

SELECT TOP 1 @subscriberId=subscriberId 
FROM dbo.Accounts WITH (NOLOCK)
WHERE AccountID > 0

EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
	@deviceNo=@deviceNo, 
	@subscriberId=@subscriberId, 
	@deviceId=@deviceId output

IF(ISNULL(@deviceId, 0) = 0) RETURN;

SELECT @total = COUNT(DISTINCT AccountId)
FROM dbo.Associations WITH (NOLOCK) 
WHERE DeviceID=@deviceId

IF(ISNULL(@total, 0) > 0)
BEGIN
	DECLARE @itemType INT = 0;--- hardcode for account
	DECLARE @skip INT = 0, @limit INT = 0;
	SET @skip = (@page-1) * @pageSize;
	SET @limit = @skip + @pageSize;
	IF(@page > 1)
		SET @skip += 1
		
	-- implement paging
	CREATE TABLE #tblPaging
	(
		AccountID INT, 
		UserName NVARCHAR(50), 
		UserName2 NVARCHAR(50), 
		SubscriberId INT
	);
	INSERT INTO #tblPaging 
	SELECT AccountID, UserName, UserName2, SubscriberId
	FROM (
		SELECT ass.AccountID, acc.UserName, acc.UserName2, acc.SubscriberId, ROW_NUMBER() OVER (ORDER BY LastAccessedDate DESC) AS RowNum
		FROM [dbo].[Associations] ass (NOLOCK)
		INNER JOIN [dbo].[Accounts] acc (NOLOCK) ON ass.AccountID=acc.AccountID
		WHERE ass.DeviceID=@deviceId
	) tmp
	WHERE RowNum BETWEEN @skip AND @limit;
	
	

	-- account info
	SELECT acc.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID, sub.SubscriberName
	FROM #tblPaging acc (NOLOCK)
	INNER JOIN rmt.Subscribers sub ON (acc.SubscriberId = sub.SubscriberID)
	
	-- evidence
	SELECT s.ItemID, s.ItemValue, m.EviID, m.EviGroupID, m.EviCode, s.SubscriberID, s.LevelID
		, s.ItemType
		, t.EviGroupID AS EviGroup
		, m.SubscriberID AS TrustyID
		, CASE
			WHEN m.SubscriberID<>@subscriberId THEN 1
			WHEN m.SubscriberID=@subscriberId THEN 0
		END Trusty
	INTO #tblEvi
	FROM #tblPaging tblTemp (NOLOCK)
		INNER JOIN rmt.EvidenceSub s (NOLOCK) ON (tblTemp.AccountID = s.ItemID AND tblTemp.UserName=s.ItemValue)
		INNER JOIN  rmt.EvidenceMaster m (NOLOCK) ON (s.EviID = m.EviID)
		INNER JOIN  rmt.EvidenceTypes t (NOLOCK) ON (m.EviCode = t.EviCode)
	WHERE s.SubscriberId = @subscriberId
		AND s.ItemType = @itemType
		AND m.StatusId = 0

	-- delete duplicate item with with high prority
	DELETE #tblEvi  
	FROM #tblEvi tblA  
		INNER JOIN (SELECT ItemID , ItemType , Trusty 
					FROM #tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1

	-- check valid trusty evidence
	IF(EXISTS(SELECT TOP 1 1 FROM #tblEvi WHERE Trusty=1))
	BEGIN
		CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50))
		INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
																EXEC [dbo].[admin_get_subtrusty_xtest] @SubscriberId=@subscriberId

		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
		WHERE evi.Trusty=1
			AND t.TrustType='G'
		UNION 
		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
		WHERE evi.Trusty=1
			AND t.TrustType='C'
		UNION
		SELECT evi.*
		FROM #tblEvi evi
		WHERE evi.Trusty=0

	END
	ELSE
		SELECT * FROM #tblEvi
		
	--- accounts L1
	select AccountID,DevCom=0,DevOther=0,AssAcc=0,DevEx=0 into #assL1
	from #tblPaging

	drop table #tblPaging;
	
	--- device association L2
	select distinct DeviceID, AccountID, ISNULL(ExceptionID, 0) as ExceptionID into #assL2
	from dbo.Associations (NOLOCK)
	where AccountID IN (select AccountID from #assL1) 
	order by AccountID

	--- association L3
	select DeviceID, AccountID  into #assL3
	from dbo.Associations (NOLOCK)
	where DeviceID in (select DeviceID from #assL2)

	-- update associated accounts
	update #assL1
	set AssAcc=x1.numAcc
	from #assL1 as l1
	inner join (
		select l2.accountid, COUNT(distinct l3.accountid) numAcc from #assL3 l3
		inner join #assL2 l2 on l3.deviceId = l2.deviceId
		where l2.accountid <> l3.accountid
		group by l2.accountid ) x1 on l1.accountid=x1.accountid
		
	-- update exception devices
	update #assL1
	set DevEx=x1.numEx
	from #assL1 as l1
	inner join (
		select l2.accountid, SUM(CASE 
				WHEN l2.ExceptionID > 0 THEN 1 ELSE 0 
				END) numEx from #assL2 l2
		inner join rmt.Exceptions ex on l2.ExceptionID = ex.ExceptionID
		where ex.StatusId=0
		group by l2.accountid
		) x1 on l1.accountid=x1.accountid
		
	-- select device in common/others
	select l1.AccountID,
			DevCom = SUM(CASE 
				WHEN x2.numAss > 1 THEN 1 ELSE 0 
				END),
			DevOther= SUM(CASE 
				WHEN x2.numAss = 1 THEN 1 ELSE 0 
				END),
			AssAcc,
			DevEx
	from #assL1 l1
	inner join
	(
		select t2.AccountID, t2.DeviceID, x1.numAss from #assL2 t2
		inner join
		(select l2.DeviceID, COUNT(distinct ass.AccountID) numAss from #assL3 ass
			inner join #assL2 l2 on ass.DeviceID = l2.deviceid
			group by l2.DeviceID
		) x1 on t2.DeviceID=x1.DeviceID
	) x2 on l1.AccountID = x2.AccountID
	group by l1.AccountID, AssAcc, DevEx
	
	drop table #assL1;
	drop table #assL2;
	drop table #assL3;
END














GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccountByDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccountsByDevices]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccountsByDevices] @deviceNos VARCHAR(MAX)
	,@subscriberId INT
	,@page INT = 1
	,@pageSize INT = 10
	,@total INT = 0 OUTPUT
AS
/***
	Created: 20170613@Thai.Tran
	Task: get associated accounts reports by list of device Ids
	  DB: FPS_SUB
	  
	Revisions:		
		- 20180130@thai.tran: get more SubscriberName and SubscriberID (#82663)
		- 20180509@thai.tran: add alias evi and clean code(#94301)
	Param's Explanation:
		EXEC [Rpt_GetAssociatedAccountsByDevices] @deviceNos = '0f44749781f64834a3636855fe89e5fe', @subscriberId = 6
***/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceNo VARCHAR(32)
		,@deviceId INT
		,@deviceIds VARCHAR(MAX) = '';

	WHILE LEN(@deviceNos) > 0
	BEGIN
		SET @deviceNo = LEFT(@deviceNos, CHARINDEX(',', @deviceNos + ',') - 1);

		EXEC dbo.sp_DeviceInfoByNo @deviceNo = @deviceNo
			,@subscriberId = @subscriberId
			,@deviceId = @deviceId OUTPUT;

		SET @deviceIds = @deviceIds + ISNULL(',' + CAST(@deviceId AS VARCHAR(10)), '');
		SET @deviceNos = STUFF(@deviceNos, 1, CHARINDEX(',', @deviceNos + ','), '');
	END;

	IF (@deviceIds = '')
		RETURN;

	SET @deviceIds = RIGHT(@deviceIds, LEN(@deviceIds) - 1);
	DECLARE @openQuerySub NVARCHAR(4000);

	SELECT @openQuerySub = '					
						SELECT @total = COUNT(DISTINCT AccountId)
						FROM dbo.Associations WITH (NOLOCK) 
						WHERE DeviceID in (' + @deviceIds + ')';

	EXECUTE sp_executesql @stmt = @openQuerySub
		,@params = N'@total INT OUTPUT'
		,@total = @total OUTPUT;

	IF (ISNULL(@total, 0) > 0)
	BEGIN
		DECLARE @itemType INT = 0;--- hardcode for account
		DECLARE @skip INT = 0
			,@limit INT = 0;

		SET @skip = (@page - 1) * @pageSize;
		SET @limit = @skip + @pageSize;

		IF (@page > 1)
			SET @skip += 1;

		-- implement paging
		CREATE TABLE #tblPaging (
			AccountID INT
			,UserName NVARCHAR(50)
			,UserName2 NVARCHAR(50)
			,LastAccessedDate DATETIME
			,SubscriberID INT
			,SubscriberName NVARCHAR(50)
			);

		SELECT @openQuerySub = '
					INSERT INTO #tblPaging 
					SELECT AccountID, UserName, UserName2, LastAccessedDate, SubscriberID, SubscriberName
					FROM (
						SELECT AccountID, UserName, UserName2, LastAccessedDate, SubscriberID, SubscriberName, ROW_NUMBER() OVER (ORDER BY LastAccessedDate DESC) AS RowNum 
						FROM(
							SELECT ass.AccountID, acc.UserName, acc.UserName2, MAX(ass.LastAccessedDate) LastAccessedDate, acc.SubscriberID, sub.SubscriberName		
							FROM [dbo].[Associations] ass WITH (NOLOCK)
							INNER JOIN [dbo].[Accounts] acc WITH (NOLOCK) ON ass.AccountID=acc.AccountID
							INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON acc.SubscriberId = sub.SubscriberID
							WHERE ass.DeviceID in (' + @deviceIds + ')
							Group by ass.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID, sub.SubscriberName
						) tmp1
					) tmp2
					WHERE RowNum BETWEEN ' + CAST(@skip AS VARCHAR(5)) + ' AND ' + CAST(@limit AS VARCHAR(10));

		EXEC sp_executesql @openQuerySub;

		-- account info
		SELECT acc.AccountID
			,acc.UserName
			,acc.UserName2
			,acc.LastAccessedDate
			,acc.SubscriberID
			,acc.SubscriberName
		FROM #tblPaging acc WITH (NOLOCK);

		-- evidence
		SELECT s.ItemID
			,s.ItemValue
			,m.EviID
			,m.EviGroupID
			,m.EviCode
			,s.SubscriberID
			,s.LevelID
			,s.ItemType
			,t.EviGroupID AS EviGroup
			,m.SubscriberID AS TrustyID
			,CASE 
				WHEN m.SubscriberID <> @subscriberId
					THEN 1
				WHEN m.SubscriberID = @subscriberId
					THEN 0
				END Trusty
		INTO #tblEvi
		FROM #tblPaging tblTemp WITH (NOLOCK)
		INNER JOIN rmt.EvidenceSub s WITH (NOLOCK) ON (
				tblTemp.AccountID = s.ItemID
				AND tblTemp.UserName = s.ItemValue
				)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON (s.EviID = m.EviID)
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON (m.EviCode = t.EviCode)
		WHERE s.SubscriberId = @subscriberId
			AND s.ItemType = @itemType
			AND m.StatusId = 0;

		-- delete duplicate item with with high prority
		DELETE #tblEvi
		FROM #tblEvi tblA
		INNER JOIN (
			SELECT ItemID
				,ItemType
				,Trusty
			FROM #tblEvi tblB WITH (NOLOCK)
			WHERE tblB.Trusty = 0
			) tblB ON (
				tblA.ItemID = tblB.ItemID
				AND tblA.ItemType = tblB.ItemType
				)
		WHERE tblA.Trusty = 1;

		-- check valid trusty evidence
		IF (
				EXISTS (
					SELECT TOP (1) 1
					FROM #tblEvi WITH (NOLOCK)
					WHERE Trusty = 1
					)
				)
		BEGIN
			CREATE TABLE #TrustyInfo (
				TrustyId INT
				,TrustValue VARCHAR(50)
				,TrustType VARCHAR(50)
				);

			INSERT INTO #TrustyInfo (
				TrustyId
				,TrustValue
				,TrustType
				)
			EXEC dbo.admin_get_subtrusty @SubscriberId = @subscriberId;

			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi
			INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID
				AND t.TrustValue = evi.EviGroup
			WHERE evi.Trusty = 1
				AND t.TrustType = 'G'
			
			UNION
			
			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi WITH (NOLOCK)
			INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID
				AND t.TrustValue = evi.EviCode
			WHERE evi.Trusty = 1
				AND t.TrustType = 'C'
			
			UNION
			
			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi WITH (NOLOCK)
			WHERE evi.Trusty = 0;
		END;
		ELSE
			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi WITH (NOLOCK);

		--- accounts L1
		SELECT AccountID
			,DevCom = 0
			,DevOther = 0
			,AssAcc = 0
			,DevEx = 0
		INTO #assL1
		FROM #tblPaging WITH (NOLOCK);

		--- device association L2
		SELECT DISTINCT DeviceID
			,AccountID
			,ISNULL(ExceptionID, 0) AS ExceptionID
		INTO #assL2
		FROM dbo.Associations WITH (NOLOCK)
		WHERE AccountID IN (
				SELECT AccountID
				FROM #assL1 WITH (NOLOCK)
				)
		ORDER BY AccountID;

		--- association L3
		SELECT DeviceID
			,AccountID
		INTO #assL3
		FROM dbo.Associations WITH (NOLOCK)
		WHERE DeviceID IN (
				SELECT DeviceID
				FROM #assL2 WITH (NOLOCK)
				);

		-- update associated accounts
		UPDATE #assL1
		SET AssAcc = x1.numAcc
		FROM #assL1 l1 WITH (NOLOCK)
		INNER JOIN (
			SELECT l2.accountid
				,COUNT(DISTINCT l3.accountid) numAcc
			FROM #assL3 l3 WITH (NOLOCK)
			INNER JOIN #assL2 l2 WITH (NOLOCK) ON l3.deviceId = l2.deviceId
			WHERE l2.accountid <> l3.accountid
			GROUP BY l2.accountid
			) x1 ON l1.accountid = x1.accountid;

		-- update exception devices
		UPDATE #assL1
		SET DevEx = x1.numEx
		FROM #assL1 l1 WITH (NOLOCK)
		INNER JOIN (
			SELECT l2.accountid
				,SUM(CASE 
						WHEN l2.ExceptionID > 0
							THEN 1
						ELSE 0
						END) numEx
			FROM #assL2 l2 WITH (NOLOCK)
			INNER JOIN rmt.Exceptions ex WITH (NOLOCK) ON l2.ExceptionID = ex.ExceptionID
			WHERE ex.StatusId = 0
			GROUP BY l2.accountid
			) x1 ON l1.accountid = x1.accountid;

		-- select device in common/others
		SELECT l1.AccountID
			,DevCom = SUM(CASE 
					WHEN x2.numAss > 1
						THEN 1
					ELSE 0
					END)
			,DevOther = SUM(CASE 
					WHEN x2.numAss = 1
						THEN 1
					ELSE 0
					END)
			,AssAcc
			,DevEx
		FROM #assL1 l1 WITH (NOLOCK)
		INNER JOIN (
			SELECT t2.AccountID
				,t2.DeviceID
				,x1.numAss
			FROM #assL2 t2 WITH (NOLOCK)
			INNER JOIN (
				SELECT l2.DeviceID
					,COUNT(DISTINCT ass.AccountID) numAss
				FROM #assL3 ass WITH (NOLOCK)
				INNER JOIN #assL2 l2 WITH (NOLOCK) ON ass.DeviceID = l2.deviceid
				GROUP BY l2.DeviceID
				) x1 ON t2.DeviceID = x1.DeviceID
			) x2 ON l1.AccountID = x2.AccountID
		GROUP BY l1.AccountID
			,AssAcc
			,DevEx;

		DROP TABLE #tblPaging;

		DROP TABLE #tblEvi;

		DROP TABLE #assL1;

		DROP TABLE #assL2;

		DROP TABLE #assL3;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccountsByDevices] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedAccountsByDevices_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.Rpt_GetAssociatedAccountsByDevices_xtest    Script Date: 09/05/2018 3:47:10 PM ******/
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedAccountsByDevices_xtest] @deviceNos VARCHAR(MAX)
	,@subscriberId INT
	,@page INT = 1
	,@pageSize INT = 10
	,@total INT = 0 OUTPUT
AS
/***
	Created: 20170613@Thai.Tran
	Task: get associated accounts reports by list of device Ids
	  DB: FPS_SUB
	  
	Revisions:		
		- 20180130@thai.tran: get more SubscriberName and SubscriberID (#82663)
		- 20180509@thai.tran: add alias evi and clean code(#94301)
	Param's Explanation:
	EXEC [Rpt_GetAssociatedAccountsByDevices_xtest] @deviceNos = '0f44749781f64834a3636855fe89e5fe', @subscriberId = 6
***/
BEGIN
	SET NOCOUNT ON

	DECLARE @deviceNo VARCHAR(32)
		,@deviceId INT
		,@deviceIds VARCHAR(MAX) = ''

	WHILE LEN(@deviceNos) > 0
	BEGIN
		SET @deviceNo = LEFT(@deviceNos, CHARINDEX(',', @deviceNos + ',') - 1)

		EXEC [dbo].[sp_DeviceInfoByNo] @deviceNo = @deviceNo
			,@subscriberId = @subscriberId
			,@deviceId = @deviceId OUTPUT

		SET @deviceIds = @deviceIds + ISNULL(',' + CAST(@deviceId AS VARCHAR(10)), '')
		SET @deviceNos = STUFF(@deviceNos, 1, CHARINDEX(',', @deviceNos + ','), '')
	END

	IF (@deviceIds = '')
		RETURN;

	SET @deviceIds = RIGHT(@deviceIds, LEN(@deviceIds) - 1)
	DECLARE @openQuerySub NVARCHAR(4000)

	SELECT @openQuerySub = '					
						SELECT @total = COUNT(DISTINCT AccountId)
						FROM dbo.Associations WITH (NOLOCK) 
						WHERE DeviceID in (' + @deviceIds + ')'

	EXECUTE sp_executesql @stmt = @openQuerySub
		,@params = N'@total INT OUTPUT'
		,@total = @total OUTPUT

	IF (ISNULL(@total, 0) > 0)
	BEGIN
		DECLARE @itemType INT = 0;--- hardcode for account
		DECLARE @skip INT = 0
			,@limit INT = 0;

		SET @skip = (@page - 1) * @pageSize;
		SET @limit = @skip + @pageSize;

		IF (@page > 1)
			SET @skip += 1

		-- implement paging
		CREATE TABLE #tblPaging (
			AccountID INT
			,UserName NVARCHAR(50)
			,UserName2 NVARCHAR(50)
			,LastAccessedDate DATETIME
			,SubscriberID INT
			,SubscriberName NVARCHAR(50)
			);

		SELECT @openQuerySub = '
					INSERT INTO #tblPaging 
					SELECT AccountID, UserName, UserName2, LastAccessedDate, SubscriberID, SubscriberName
					FROM (
						SELECT AccountID, UserName, UserName2, LastAccessedDate, SubscriberID, SubscriberName, ROW_NUMBER() OVER (ORDER BY LastAccessedDate DESC) AS RowNum 
						FROM(
							SELECT ass.AccountID, acc.UserName, acc.UserName2, MAX(ass.LastAccessedDate) LastAccessedDate, acc.SubscriberID, sub.SubscriberName		
							FROM [dbo].[Associations] ass WITH (NOLOCK)
							INNER JOIN [dbo].[Accounts] acc WITH (NOLOCK) ON ass.AccountID=acc.AccountID
							INNER JOIN rmt.Subscribers sub WITH (NOLOCK) ON acc.SubscriberId = sub.SubscriberID
							WHERE ass.DeviceID in (' + @deviceIds + ')
							Group by ass.AccountID, acc.UserName, acc.UserName2, acc.SubscriberID, sub.SubscriberName
						) tmp1
					) tmp2
					WHERE RowNum BETWEEN ' + CAST(@skip AS VARCHAR(5)) + ' AND ' + CAST(@limit AS VARCHAR(10))

		EXEC sp_executesql @openQuerySub

		-- account info
		SELECT acc.AccountID
			,acc.UserName
			,acc.UserName2
			,acc.LastAccessedDate
			,acc.SubscriberID
			,acc.SubscriberName
		FROM #tblPaging acc WITH (NOLOCK)

		-- evidence
		SELECT s.ItemID
			,s.ItemValue
			,m.EviID
			,m.EviGroupID
			,m.EviCode
			,s.SubscriberID
			,s.LevelID
			,s.ItemType
			,t.EviGroupID AS EviGroup
			,m.SubscriberID AS TrustyID
			,CASE 
				WHEN m.SubscriberID <> @subscriberId
					THEN 1
				WHEN m.SubscriberID = @subscriberId
					THEN 0
				END Trusty
		INTO #tblEvi
		FROM #tblPaging tblTemp WITH (NOLOCK)
		INNER JOIN rmt.EvidenceSub s WITH (NOLOCK) ON (
				tblTemp.AccountID = s.ItemID
				AND tblTemp.UserName = s.ItemValue
				)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON (s.EviID = m.EviID)
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON (m.EviCode = t.EviCode)
		WHERE s.SubscriberId = @subscriberId
			AND s.ItemType = @itemType
			AND m.StatusId = 0

		-- delete duplicate item with with high prority
		DELETE #tblEvi
		FROM #tblEvi tblA
		INNER JOIN (
			SELECT ItemID
				,ItemType
				,Trusty
			FROM #tblEvi tblB WITH (NOLOCK)
			WHERE tblB.Trusty = 0
			) tblB ON (
				tblA.ItemID = tblB.ItemID
				AND tblA.ItemType = tblB.ItemType
				)
		WHERE tblA.Trusty = 1

		-- check valid trusty evidence
		IF (
				EXISTS (
					SELECT TOP (1) 1
					FROM #tblEvi WITH (NOLOCK)
					WHERE Trusty = 1
					)
				)
		BEGIN
			CREATE TABLE #TrustyInfo (
				TrustyId INT
				,TrustValue VARCHAR(50)
				,TrustType VARCHAR(50)
				)

			INSERT INTO #TrustyInfo (
				TrustyId
				,TrustValue
				,TrustType
				)
			EXEC [dbo].[admin_get_subtrusty] @SubscriberId = @subscriberId

			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi
			INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID
				AND t.TrustValue = evi.EviGroup
			WHERE evi.Trusty = 1
				AND t.TrustType = 'G'
			
			UNION
			
			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi WITH (NOLOCK)
			INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID
				AND t.TrustValue = evi.EviCode
			WHERE evi.Trusty = 1
				AND t.TrustType = 'C'
			
			UNION
			
			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi WITH (NOLOCK)
			WHERE evi.Trusty = 0
		END
		ELSE
			SELECT evi.ItemID
				,evi.ItemValue
				,evi.EviID
				,evi.EviGroupID
				,evi.EviCode
				,evi.SubscriberID
				,evi.LevelID
				,evi.ItemType
				,evi.EviGroup
				,evi.TrustyID
				,evi.Trusty
			FROM #tblEvi evi WITH (NOLOCK)

		--- accounts L1
		SELECT AccountID
			,DevCom = 0
			,DevOther = 0
			,AssAcc = 0
			,DevEx = 0
		INTO #assL1
		FROM #tblPaging WITH (NOLOCK)

		--- device association L2
		SELECT DISTINCT DeviceID
			,AccountID
			,ISNULL(ExceptionID, 0) AS ExceptionID
		INTO #assL2
		FROM dbo.Associations WITH (NOLOCK)
		WHERE AccountID IN (
				SELECT AccountID
				FROM #assL1 WITH (NOLOCK)
				)
		ORDER BY AccountID

		--- association L3
		SELECT DeviceID
			,AccountID
		INTO #assL3
		FROM dbo.Associations WITH (NOLOCK)
		WHERE DeviceID IN (
				SELECT DeviceID
				FROM #assL2 WITH (NOLOCK)
				)

		-- update associated accounts
		UPDATE #assL1
		SET AssAcc = x1.numAcc
		FROM #assL1 l1 WITH (NOLOCK)
		INNER JOIN (
			SELECT l2.accountid
				,COUNT(DISTINCT l3.accountid) numAcc
			FROM #assL3 l3 WITH (NOLOCK)
			INNER JOIN #assL2 l2 WITH (NOLOCK) ON l3.deviceId = l2.deviceId
			WHERE l2.accountid <> l3.accountid
			GROUP BY l2.accountid
			) x1 ON l1.accountid = x1.accountid

		-- update exception devices
		UPDATE #assL1
		SET DevEx = x1.numEx
		FROM #assL1 l1 WITH (NOLOCK)
		INNER JOIN (
			SELECT l2.accountid
				,SUM(CASE 
						WHEN l2.ExceptionID > 0
							THEN 1
						ELSE 0
						END) numEx
			FROM #assL2 l2 WITH (NOLOCK)
			INNER JOIN rmt.Exceptions ex WITH (NOLOCK) ON l2.ExceptionID = ex.ExceptionID
			WHERE ex.StatusId = 0
			GROUP BY l2.accountid
			) x1 ON l1.accountid = x1.accountid

		-- select device in common/others
		SELECT l1.AccountID
			,DevCom = SUM(CASE 
					WHEN x2.numAss > 1
						THEN 1
					ELSE 0
					END)
			,DevOther = SUM(CASE 
					WHEN x2.numAss = 1
						THEN 1
					ELSE 0
					END)
			,AssAcc
			,DevEx
		FROM #assL1 l1 WITH (NOLOCK)
		INNER JOIN (
			SELECT t2.AccountID
				,t2.DeviceID
				,x1.numAss
			FROM #assL2 t2 WITH (NOLOCK)
			INNER JOIN (
				SELECT l2.DeviceID
					,COUNT(DISTINCT ass.AccountID) numAss
				FROM #assL3 ass WITH (NOLOCK)
				INNER JOIN #assL2 l2 WITH (NOLOCK) ON ass.DeviceID = l2.deviceid
				GROUP BY l2.DeviceID
				) x1 ON t2.DeviceID = x1.DeviceID
			) x2 ON l1.AccountID = x2.AccountID
		GROUP BY l1.AccountID
			,AssAcc
			,DevEx

		DROP TABLE #tblPaging;

		DROP TABLE #tblEvi

		DROP TABLE #assL1;

		DROP TABLE #assL2;

		DROP TABLE #assL3;
	END
END
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedAccountsByDevices_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDevice](
	@deviceId INT
)
AS
/*
Created: 20130313@Bobby
Task: Get associated device
  DB: FPS_SUB_2.
  
Revisions:
	-20130705@Bobby.Nguyen: Update rmt schema
Param's Explanation:

*/
SET NOCOUNT ON;

IF(@deviceId > 0)
BEGIN
	DECLARE @associatedAccounts INT=0,@associatedDevices INT=0,@accountExceptions INT=0;
	
	--SELECT device level 1
	SELECT DISTINCT AccountID INTO #tblLevel1 
	FROM dbo.Associations (NOLOCK)
		WHERE DeviceID=@deviceId;
	
	-- SELECT @associatedAccounts
	SELECT @associatedAccounts = COUNT(1) 
	FROM #tblLevel1;
	
	-- SELECT @associatedDevices
	SELECT @associatedDevices = COUNT(DISTINCT DeviceID) 
	FROM dbo.Associations (NOLOCK) 
		WHERE AccountID IN (
			SELECT AccountID FROM #tblLevel1 
		) 
		AND DeviceID <> @deviceId;
	
	-- SELECT @accountExceptions
	SELECT @accountExceptions=COUNT(DISTINCT A.AccountID) 
	FROM dbo.Associations A (NOLOCK) 
	INNER JOIN rmt.Exceptions E (NOLOCK) ON A.ExceptionID=E.ExceptionID
	WHERE A.DeviceID = @deviceId
	AND (A.ExceptionID > 0 AND E.StatusID=0);
	
	SELECT @deviceId AS DeviceId,
			@associatedAccounts AS AssociatedAccounts,
			@associatedDevices AS AssociatedDevices,
			@accountExceptions AS AccountExceptions;

	DROP TABLE #tblLevel1;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDeviceByAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDeviceByAccount]
	@userName NVARCHAR(50),
	@page INT = 1,
	@pageSize INT = 10,
	@total INT = 0 OUTPUT
AS
/***
	Created: 20130319@Bobby
	Task: get associated devices report by account username
	  DB: FPS_SUB
	  
	Revisions:
	Param's Explanation:
***/
SET NOCOUNT ON;

DECLARE @accountId int=0, @subscriberId INT = 0;
SELECT TOP 1 
	@accountId=AccountId,
	@subscriberId = SubscriberID 
FROM Accounts (NOLOCK) WHERE UserName=@userName;

IF(ISNULL(@accountId,0)=0) RETURN;

SELECT @total = COUNT(DISTINCT DeviceID)
FROM dbo.Associations (NOLOCK) 
WHERE AccountID=@accountId;

IF(ISNULL(@total, 0) > 0)
BEGIN

	DECLARE @itemType INT = 1;--- hardcode for device
	DECLARE @skip INT = 0, @limit INT = 0;
	SET @skip = (@page-1) * @pageSize;
	SET @limit = @skip + @pageSize;
	IF(@page > 1)
		SET @skip += 1;
		
	-- implement paging
	CREATE TABLE #tblPaging
	(
		DeviceID BIGINT,
		DeviceNo NVARCHAR(50) default NULL,
		DeviceCode nvarchar(100) default N'N/A',
		PluginId INT default 0,
		Browser nvarchar(100) default N'N/A',
		SubscriberID INT,
		LastAccessedDate DATETIME,
		FirstSeenDate DATETIME
	);
	INSERT INTO #tblPaging (DeviceID, LastAccessedDate, SubscriberID)
	SELECT DeviceID, LastAccessedDate, @subscriberId
	FROM (
		SELECT DISTINCT ass.DeviceID, LastAccessedDate
			, ROW_NUMBER() OVER (ORDER BY LastAccessedDate DESC) AS RowNum
		FROM dbo.Associations ass (NOLOCK)
		WHERE ass.AccountID=@accountId
	) tmp
	WHERE RowNum BETWEEN @skip AND @limit;
	
	-- device info
	DECLARE @DeviceIds VARCHAR(MAX);
	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
	FROM #tblPaging;			
	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		FirstSeenDate   NVARCHAR(50)
	);

	INSERT #spResult  EXEC dbo.sp_DeviceInfoBylistDeviceIDSeen @DeviceIds=@DeviceIds, @subscriberId=@subscriberId;		

	SELECT tmp.DeviceID,d.DeviceNo,tmp.DeviceCode,tmp.PluginId,tmp.Browser,tmp.SubscriberID,tmp.LastAccessedDate,d.FirstSeenDate 
	FROM #tblPaging tmp	
	INNER JOIN #spResult d ON tmp.DeviceId = d.DeviceId
	ORDER BY tmp.LastAccessedDate DESC;
	
	-- evidence
	SELECT t.EviCode, t.EviName, s.EviID, s.ItemID, s.ItemValue, s.ItemType, s.LevelID, s.SubscriberID
		, t.EviGroupID AS EviGroup
		, m.SubscriberID AS TrustyID
		, CASE
			WHEN m.SubscriberID<>@subscriberId THEN 1
			WHEN m.SubscriberID=@subscriberId THEN 0
		END Trusty
	INTO #tblEvi
	FROM rmt.EvidenceTypes t (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m (NOLOCK) ON (t.EviGroupID = m.EviGroupID AND t.EviCode = m.EviCode)
		INNER JOIN rmt.EvidenceSub s (NOLOCK) ON (m.EviID = s.EviID)
		INNER JOIN #tblPaging tblTemp (NOLOCK) ON (s.ItemID = tblTemp.DeviceID)
	WHERE s.ItemType = @itemType;
	
	-- delete duplicate item with with high prority
	DELETE #tblEvi  
	FROM #tblEvi tblA  
		INNER JOIN (SELECT ItemID , ItemType , Trusty 
					FROM #tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1;

	-- delete device has trusty exception
	DELETE #tblEvi  
	FROM #tblEvi tblA  
		INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
	WHERE tblA.Trusty = 1   
		AND tblExc.StatusID = 0  
		AND tblExc.AccountID IS NULL
		AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To;  

	-- check trusty evidency
	CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50));
	INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
	EXEC dbo.admin_get_subtrusty 
		@SubscriberId=@subscriberId;

	IF(EXISTS(SELECT TOP 1 1 FROM #TrustyInfo))
	BEGIN
		-- check valid trusty evidence
		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
		WHERE evi.Trusty=1
			AND t.TrustType='G'
		UNION 
		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
		WHERE evi.Trusty=1
			AND t.TrustType='C'
		UNION
		SELECT evi.*
		FROM #tblEvi evi
		WHERE evi.Trusty=0;
	END;
	ELSE
	BEGIN
		-- delete trusty evidence
		DELETE evi
		FROM #tblEvi evi
		WHERE Trusty=1;

		SELECT evi.*
		FROM #tblEvi evi;
	END;

	DROP TABLE #TrustyInfo;
	DROP TABLE #tblEvi;

	-- trusty exception
	SELECT e.ExceptionID, e.DeviceID, e.AccountID, e.SubscriberID_From, s.SubscriberName SubscriberName_From,
		e.SubscriberID_To, su.SubscriberName SubscriberName_To, e.StatusID
	FROM rmt.Exceptions e (NOLOCK)
		INNER JOIN rmt.Subscribers s (NOLOCK) ON (e.SubscriberID_From = s.SubscriberID)
		INNER JOIN rmt.Subscribers su (NOLOCK) ON (e.SubscriberID_To = su.SubscriberID)
		INNER JOIN #tblPaging tblTemp (NOLOCK) ON (e.DeviceID = tblTemp.DeviceID)
	WHERE AccountID IS NULL AND SubscriberID_To IS NOT NULL;
		
	--- device L1
	select DeviceID, AssAcc=0, AssDev=0, AccEx=0, LastAccessedDate into #assL1
	from #tblPaging;
	CREATE CLUSTERED INDEX IDX_C_assL1_LastAccessedDate ON #assL1(LastAccessedDate);
	

	--- association L2
	select DeviceID, AccountID, ISNULL(ExceptionID, 0) as ExceptionID into #assL2
	from Associations (NOLOCK)
	where DeviceID IN (select DeviceID from #assL1); 

	--- association L3
	select DeviceID, AccountID  into #assL3
	from Associations (NOLOCK)
	where AccountID in (select AccountID from #assL2);

	-- update associated accounts
	update #assL1
	set AssAcc=x1.numAcc
	from #assL1 as l1
	inner join (
		select l2.DeviceID, COUNT(distinct l2.accountid) numAcc from #assL2 l2
		group by l2.DeviceID
	) x1 on l1.DeviceID=x1.deviceId;
	
	-- update exception devices
	update #assL1
	set AccEx=x1.numEx
	from #assL1 as l1
	inner join (
		select l2.DeviceID, SUM(CASE 
				WHEN l2.ExceptionID > 0 THEN 1 ELSE 0 
				END) numEx 
			from #assL2 l2
			inner join rmt.Exceptions ex on l2.ExceptionID = ex.ExceptionID
			where ex.StatusId=0
			group by l2.DeviceID
		) x1 on l1.DeviceID=x1.DeviceID;

	-- select device in common/others
	select l1.DeviceID, 
			CONVERT(VARCHAR(11), d.FirstSeenDate, 106) FirstSeenDate, 
			l1.AssAcc,
			ISNULL(x2.numDev,0) AssDev, 
			l1.AccEx
	from #assL1 l1
	left join
	(
		select l2.deviceid, COUNT(distinct ass.DeviceID) numDev from #assL3 ass
		inner join #assL2 l2 on ass.AccountID = l2.AccountID
		where ass.deviceid<>l2.deviceid 
		group by l2.deviceid
	
	) x2 on l1.DeviceID = x2.DeviceID
	LEFT JOIN #spResult d ON l1.DeviceId = d.DeviceId;
		
	drop table #assL1;
	drop table #assL2;
	drop table #assL3;
	drop table #tblPaging;
	drop table #spResult;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDeviceByAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDeviceByAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDeviceByAccount_xtest]
	@userName NVARCHAR(50),
	@page INT = 1,
	@pageSize INT = 10,
	@total INT = 0 OUTPUT
AS
/***
	Created: 20130319@Bobby
	Task: get associated devices report by account username
	  DB: FPS_SUB
	  
	Revisions:
	Param's Explanation:
***/
SET NOCOUNT ON

DECLARE @accountId int=0, @subscriberId INT = 0;
SELECT TOP 1 
	@accountId=AccountId,
	@subscriberId = SubscriberID 
FROM Accounts (NOLOCK) WHERE UserName=@userName

IF(ISNULL(@accountId,0)=0) RETURN;

SELECT @total = COUNT(DISTINCT DeviceID)
FROM dbo.Associations (NOLOCK) 
WHERE AccountID=@accountId

IF(ISNULL(@total, 0) > 0)
BEGIN

	DECLARE @itemType INT = 1;--- hardcode for device
	DECLARE @skip INT = 0, @limit INT = 0;
	SET @skip = (@page-1) * @pageSize;
	SET @limit = @skip + @pageSize;
	IF(@page > 1)
		SET @skip += 1
		
	-- implement paging
	CREATE TABLE #tblPaging
	(
		DeviceID BIGINT,
		DeviceNo NVARCHAR(50) default NULL,
		DeviceCode nvarchar(100) default N'N/A',
		PluginId INT default 0,
		Browser nvarchar(100) default N'N/A',
		SubscriberID INT,
		LastAccessedDate DATETIME,
		FirstSeenDate DATETIME
	);
	INSERT INTO #tblPaging (DeviceID, LastAccessedDate, SubscriberID)
	SELECT DeviceID, LastAccessedDate, @subscriberId
	FROM (
		SELECT DISTINCT ass.DeviceID, LastAccessedDate
			, ROW_NUMBER() OVER (ORDER BY LastAccessedDate DESC) AS RowNum
		FROM [dbo].[Associations] ass (NOLOCK)
		WHERE ass.AccountID=@accountId
	) tmp
	WHERE RowNum BETWEEN @skip AND @limit;
	
	-- device info
	DECLARE @DeviceIds VARCHAR(1000)
	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
	FROM #tblPaging			
	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		FirstSeenDate   NVARCHAR(50)
	);

	INSERT #spResult  EXEC [dbo].[sp_DeviceInfoBylistDeviceIDSeen_xtest] @DeviceIds=@DeviceIds, @subscriberId=@subscriberId		

	SELECT tmp.DeviceID,d.DeviceNo,tmp.DeviceCode,tmp.PluginId,tmp.Browser,tmp.SubscriberID,tmp.LastAccessedDate,d.FirstSeenDate 
	FROM #tblPaging tmp	
	INNER JOIN #spResult d ON tmp.DeviceId = d.DeviceId
	ORDER BY tmp.LastAccessedDate DESC
	
	-- evidence
	SELECT t.EviCode, t.EviName, s.EviID, s.ItemID, s.ItemValue, s.ItemType, s.LevelID, s.SubscriberID
		, t.EviGroupID AS EviGroup
		, m.SubscriberID AS TrustyID
		, CASE
			WHEN m.SubscriberID<>@subscriberId THEN 1
			WHEN m.SubscriberID=@subscriberId THEN 0
		END Trusty
	INTO #tblEvi
	FROM rmt.EvidenceTypes t (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m (NOLOCK) ON (t.EviGroupID = m.EviGroupID AND t.EviCode = m.EviCode)
		INNER JOIN rmt.EvidenceSub s (NOLOCK) ON (m.EviID = s.EviID)
		INNER JOIN #tblPaging tblTemp (NOLOCK) ON (s.ItemID = tblTemp.DeviceID)
	WHERE s.ItemType = @itemType
	
	-- delete duplicate item with with high prority
	DELETE #tblEvi  
	FROM #tblEvi tblA  
		INNER JOIN (SELECT ItemID , ItemType , Trusty 
					FROM #tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1

	-- delete device has trusty exception
	DELETE #tblEvi  
	FROM #tblEvi tblA  
		INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
	WHERE tblA.Trusty = 1   
		AND tblExc.StatusID = 0  
		AND tblExc.AccountID IS NULL
		AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To  

	-- check trusty evidency
	CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50))
	INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
		EXEC [dbo].[admin_get_subtrusty_xtest] 
		@SubscriberId=@subscriberId

	IF(EXISTS(SELECT TOP 1 1 FROM #TrustyInfo))
	BEGIN
		-- check valid trusty evidence
		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
		WHERE evi.Trusty=1
			AND t.TrustType='G'
		UNION 
		SELECT evi.*
		FROM #tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
		WHERE evi.Trusty=1
			AND t.TrustType='C'
		UNION
		SELECT evi.*
		FROM #tblEvi evi
		WHERE evi.Trusty=0
	END
	ELSE
	BEGIN
		-- delete trusty evidence
		DELETE evi
		FROM #tblEvi evi
		WHERE Trusty=1

		SELECT evi.*
		FROM #tblEvi evi
	END

	DROP TABLE #TrustyInfo
	DROP TABLE #tblEvi

	-- trusty exception
	SELECT e.ExceptionID, e.DeviceID, e.AccountID, e.SubscriberID_From, s.SubscriberName SubscriberName_From,
		e.SubscriberID_To, su.SubscriberName SubscriberName_To, e.StatusID
	FROM rmt.Exceptions e (NOLOCK)
		INNER JOIN rmt.Subscribers s (NOLOCK) ON (e.SubscriberID_From = s.SubscriberID)
		INNER JOIN rmt.Subscribers su (NOLOCK) ON (e.SubscriberID_To = su.SubscriberID)
		INNER JOIN #tblPaging tblTemp (NOLOCK) ON (e.DeviceID = tblTemp.DeviceID)
	WHERE AccountID IS NULL AND SubscriberID_To IS NOT NULL
		
	--- device L1
	select DeviceID, AssAcc=0, AssDev=0, AccEx=0, LastAccessedDate into #assL1
	from #tblPaging
	CREATE CLUSTERED INDEX IDX_C_assL1_LastAccessedDate ON #assL1(LastAccessedDate)
	

	--- association L2
	select DeviceID, AccountID, ISNULL(ExceptionID, 0) as ExceptionID into #assL2
	from Associations (NOLOCK)
	where DeviceID IN (select DeviceID from #assL1) 

	--- association L3
	select DeviceID, AccountID  into #assL3
	from Associations (NOLOCK)
	where AccountID in (select AccountID from #assL2)

	-- update associated accounts
	update #assL1
	set AssAcc=x1.numAcc
	from #assL1 as l1
	inner join (
		select l2.DeviceID, COUNT(distinct l2.accountid) numAcc from #assL2 l2
		group by l2.DeviceID
	) x1 on l1.DeviceID=x1.deviceId
	
	-- update exception devices
	update #assL1
	set AccEx=x1.numEx
	from #assL1 as l1
	inner join (
		select l2.DeviceID, SUM(CASE 
				WHEN l2.ExceptionID > 0 THEN 1 ELSE 0 
				END) numEx 
			from #assL2 l2
			inner join Exceptions ex on l2.ExceptionID = ex.ExceptionID
			where ex.StatusId=0
			group by l2.DeviceID
		) x1 on l1.DeviceID=x1.DeviceID

	-- select device in common/others
	select l1.DeviceID, 
			CONVERT(VARCHAR(11), d.FirstSeenDate, 106) FirstSeenDate, 
			l1.AssAcc,
			ISNULL(x2.numDev,0) AssDev, 
			l1.AccEx
	from #assL1 l1
	left join
	(
		select l2.deviceid, COUNT(distinct ass.DeviceID) numDev from #assL3 ass
		inner join #assL2 l2 on ass.AccountID = l2.AccountID
		where ass.deviceid<>l2.deviceid 
		group by l2.deviceid
	
	) x2 on l1.DeviceID = x2.DeviceID
	LEFT JOIN #spResult d ON l1.DeviceId = d.DeviceId
		
	drop table #assL1;
	drop table #assL2;
	drop table #assL3;
	drop table #tblPaging;
	drop table #spResult
END














GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDeviceByAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDeviceByDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDeviceByDevice]
	@deviceNo NVARCHAR(50),
	@PageSize INT=50 ,
	@PageIndex INT=1 ,
	@TotalPages INT=0 OUT,
	@TotalRows INT=0 OUT
	
	
AS
/***
	Created: 20130320@Tom
	Task: get association Devcice by DeviceID
	  DB: FPS_SUB. 
	  
	Revisions:
		20130904@bobby.nguyen: change rmt schema
		20140529@bobby.nguyen: remove duplicated device row

	Param's Explanation:
***/
--a
BEGIN
	SET NOCOUNT ON;
	DECLARE @RowStart INT ,@RowEnd INT, @deviceId INT, @subscriberId INT = 0, @DbName nvarchar(128);
	SET @DbName=DB_NAME();

	DECLARE @itemType INT = 1;--- hardcode for device

	EXEC dbo.sp_DeviceInfoByNo 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output;

	IF(ISNULL(@deviceId,0) > 0)
	BEGIN
		DECLARE @lastAccessedDate datetime;
		-- set current subscriber
		SELECT TOP 1 @subscriberId=SubscriberId
			, @lastAccessedDate = ass.LastAccessedDate
		FROM dbo.Accounts acc WITH (NOLOCK)
		INNER JOIN ( 
			SELECT AccountID, MAX(LastAccessedDate) LastAccessedDate FROM dbo.Associations ass WITH (NOLOCK) 
			WHERE DeviceID=@deviceId
			GROUP BY AccountID
		) ass ON acc.AccountID=ass.AccountID;

		CREATE TABLE  #tblAcc ( AccountID INT);

		INSERT INTO #tblAcc  (AccountID)
		SELECT tblAss.AccountID
		FROM  dbo.Associations AS tblAss WITH (NOLOCK)
		WHERE  DeviceID = @deviceid;

		CREATE TABLE  #tblDev ( DeviceID INT,
			DeviceNo nvarchar(50) default NULL,
			DeviceCode nvarchar(100) default N'N/A',
			PluginId INT default 0,
			Browser nvarchar(100) default N'N/A',
			SubscriberID INT,
			FirstSeenDate datetime,
			AssAcc INT,
			AssDev INT,
			AccEx INT,
			Level SMALLINT,
			LastAccessedDate DATETIME);
		CREATE CLUSTERED INDEX IDX_C_tblDev_DeviceID ON #tblDev(DeviceID);

		IF(@PageIndex = 1)
		BEGIN
			INSERT INTO #tblDev (DeviceID,Level, AssDEV,AssAcc,AccEx, LastAccessedDate, SubscriberID)
			VALUES(@deviceid,0,0,0,0, @lastAccessedDate, @subscriberId);
		END;

		SELECT  @TotalRows = COUNT(DISTINCT tblAss.DeviceID) + 1
		FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			   INNER JOIN #tblAcc  AS tblAcc
					ON tblAcc.AccountID = tblAss.AccountID
		WHERE tblAss.DeviceID <> @deviceid;

		SELECT @PageSize = @PageSize ,
			@TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END,
			@PageIndex = @PageIndex - 1, 
			@RowStart = @PageSize * @PageIndex + 1, 
			@RowEnd = @RowStart + @PageSize -1;

		INSERT INTO #tblDev (DeviceID,Level, AssDEV,AssAcc,AccEx,LastAccessedDate, SubscriberID)
		SELECT 
			DISTINCT tblAss.DeviceID,2,0,0,0,LastAccessedDate, @subscriberId
		FROM
			 (
				SELECT ROW_NUMBER() over(ORDER BY LastAccessedDate) AS RowNum, 
					DeviceID, LastAccessedDate
				FROM (
					SELECT tblAss.DeviceID, MAX(tblAss.LastAccessedDate) LastAccessedDate
					FROM   dbo.Associations AS tblAss WITH (NOLOCK)
						   INNER JOIN #tblAcc  AS tblAcc
								ON tblAcc.AccountID = tblAss.AccountID
					WHERE DeviceID<>@deviceId
					GROUP BY tblAss.DeviceID
					)TBLA
			) tblAss
		WHERE tblAss.RowNum BETWEEN @RowStart AND @RowEnd; 

		DROP TABLE  #tblAcc;
	
		-- device info
		DECLARE @DeviceIds VARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tblDev;

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			FirstSeenDate   NVARCHAR(50)
		);

		INSERT #spResult 
		EXEC dbo.sp_DeviceInfoBylistDeviceIDSeen @DeviceIds=@DeviceIds, @subscriberId = @subscriberId;

		SELECT dev.DeviceID,d.DeviceNo,dev.DeviceCode,dev.PluginId,dev.Browser,dev.SubscriberID,d.FirstSeenDate,dev.AssAcc,dev.AssDev,dev.AccEx,dev.Level,dev.LastAccessedDate
		FROM #tblDev dev
		INNER JOIN #spResult d ON dev.DeviceId = d.DeviceId
		ORDER BY dev.Level, dev.LastAccessedDate DESC;
	
		-- evidence
		SELECT t.EviCode, t.EviName, s.EviID, s.ItemID, s.ItemValue, s.ItemType, s.LevelID, s.SubscriberID
			, t.EviGroupID AS EviGroup
			, m.SubscriberID AS TrustyID
			, CASE
				WHEN m.SubscriberID<>@subscriberId THEN 1
				WHEN m.SubscriberID=@subscriberId THEN 0
			END Trusty
		INTO #tblEvi
		FROM rmt.EvidenceTypes t (NOLOCK)
			INNER JOIN rmt.EvidenceMaster m (NOLOCK) ON (t.EviGroupID = m.EviGroupID AND t.EviCode = m.EviCode)
			INNER JOIN rmt.EvidenceSub s (NOLOCK) ON (m.EviID = s.EviID)
			INNER JOIN #tblDev tblTemp (NOLOCK) ON (s.ItemID = tblTemp.DeviceID)
		WHERE s.ItemType = @itemType;
	
		-- delete duplicate item with with high prority
		DELETE #tblEvi  
		FROM #tblEvi tblA  
			INNER JOIN (SELECT ItemID , ItemType , Trusty 
						FROM #tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
		WHERE tblA.Trusty = 1;

		-- delete device has trusty exception
		DELETE #tblEvi  
		FROM #tblEvi tblA  
			INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
		WHERE tblA.Trusty = 1   
			AND tblExc.StatusID = 0  
			AND tblExc.AccountID IS NULL
			AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To;  

		-- check trusty evidency
		CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50));
		INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
		exec dbo.admin_get_subtrusty 
			@SubscriberId=@SubscriberID;

		IF(EXISTS(SELECT TOP 1 1 FROM #TrustyInfo))
		BEGIN
			-- check valid trusty evidence
			SELECT evi.*
			FROM #tblEvi evi
				INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
			WHERE evi.Trusty=1
				AND t.TrustType='G'
			UNION 
			SELECT evi.*
			FROM #tblEvi evi
				INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
			WHERE evi.Trusty=1
				AND t.TrustType='C'
			UNION
			SELECT evi.*
			FROM #tblEvi evi
			WHERE evi.Trusty=0;
		END;
		ELSE
		BEGIN
			-- delete trusty evidence
			DELETE evi
			FROM #tblEvi evi
			WHERE Trusty=1;

			SELECT evi.*
			FROM #tblEvi evi;
		END;

		DROP TABLE #TrustyInfo;
		DROP TABLE #tblEvi;
		
		-- trusty exception
		SELECT e.ExceptionID, e.DeviceID, e.AccountID, e.SubscriberID_From, s.SubscriberName SubscriberName_From,
			e.SubscriberID_To, su.SubscriberName SubscriberName_To, e.StatusID
		FROM rmt.Exceptions e (NOLOCK)
			INNER JOIN rmt.Subscribers s (NOLOCK) ON (e.SubscriberID_From = s.SubscriberID)
			INNER JOIN rmt.Subscribers su (NOLOCK) ON (e.SubscriberID_To = su.SubscriberID)
			INNER JOIN #tblDev tblTemp (NOLOCK) ON (e.DeviceID = tblTemp.DeviceID)
		WHERE e.AccountID IS NULL AND SubscriberID_To IS NOT NULL;
	

		CREATE TABLE #tblDevACCL1  (
			DeviceID  INT,
			AccountID INT
			);

		INSERT INTO #tblDevACCL1 (DeviceID, AccountID)
		SELECT tblAss.DeviceID,
			   tblAss.AccountID
		FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			   INNER JOIN
			   #tblDev  AS tblDev
			   ON tblDev.DeviceID = tblAss.DeviceID;

		UPDATE  #tblDev 
			SET AssAcc = tblA.AssAcc
		FROM    #tblDev AS tblDev 
				INNER JOIN
				(SELECT   COUNT(1) AS AssAcc,
						  tblDevACC.DeviceID
				 FROM     #tblDevACCL1 AS tblDevACC
				 GROUP BY tblDevACC.DeviceID  ) AS tblA
				ON tblDev.DeviceID = tblA.DeviceID;

		CREATE TABLE  #tblDevACCL2 (
			DeviceID  INT,
			AccountID INT);

		INSERT INTO #tblDevACCL2 (DeviceID, AccountID)
		SELECT Distinct tblDevACC.DeviceID,
			   tblDevACC.AccountID
		FROM   #tblDevACCL1 AS tblDevACC
			   INNER JOIN
			   dbo.Associations AS tblAss  WITH (NOLOCK)
			   ON tblDevACC.AccountID = tblAss.AccountID;

		UPDATE  #tblDev 
		SET AssDEV = tblA.AssDEV
		FROM    #tblDev AS tblDev 
		INNER JOIN
		(SELECT   COUNT(DISTINCT tblAss.DeviceID) AS AssDEV,
			tblDevACC.DeviceID
		FROM     #tblDevACCL2 AS tblDevACC
			INNER JOIN
			dbo.Associations AS tblAss  WITH (NOLOCK)
			ON tblAss.AccountID = tblDevACC.AccountID
		WHERE    tblDevACC.DeviceID <> tblAss.DeviceID
		GROUP BY tblDevACC.DeviceID  ) AS tblA
		ON tblDev.DeviceID = tblA.DeviceID;

		DROP TABLE #tblDevACCL2;

		UPDATE  #tblDev 
			SET AccEx  = tblA.AccEx 
		FROM    #tblDev AS tblDev 
				INNER JOIN
				(SELECT   tblDevACC.DeviceID,
						  count(1) AS AccEx 
				 FROM     #tblDevACCL1 AS tblDevACC
						  INNER JOIN  dbo.Associations AS tblAss  WITH (NOLOCK)
								ON tblDevACC.AccountID = tblAss.AccountID
									AND tblDevACC.DeviceID = tblAss.DeviceID
						  INNER JOIN  rmt.Exceptions AS tblExp  WITH (NOLOCK)
							ON tblAss.ExceptionID = tblExp.ExceptionID
								 AND tblExp.StatusID = 0
				 GROUP BY tblDevACC.DeviceID) AS tblA
				ON tblDev.DeviceID = tblA.DeviceID;

		DROP TABLE #tblDevACCL1;

		-- association stats information
		SELECT tblDev.DeviceID,
			tblDev.DeviceNO,
			CONVERT(VARCHAR(11), MIN(d.FirstSeenDate),106) FirstSeenDate, 
			tblDev.AssAcc,
			tblDev.AssDEV,
			tblDev.AccEx ,
			tblDev.Level
		FROM  #tblDev tblDev
		INNER JOIN #spResult d ON tblDev.DeviceId = d.DeviceId
		GROUP BY tblDev.DeviceID,tblDev.DeviceNO, tblDev.AssDEV,tblDev.AssAcc,tblDev.AccEx,tblDev.Level
		ORDER BY tblDev.Level,tblDev.DeviceNO ,tblDev.AssAcc DESC;
	
		DROP TABLE  #tblDev;
		DROP TABLE #spResult;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDeviceByDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDeviceByDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDeviceByDevice_xtest]
	@deviceNo NVARCHAR(50),
	@PageSize INT=50 ,
	@PageIndex INT=1 ,
	@TotalPages INT=0 OUT,
	@TotalRows INT=0 OUT
	
	
AS
/***
	Created: 20130320@Tom
	Task: get association Devcice by DeviceID
	  DB: FPS_SUB. 
	  
	Revisions:
	Param's Explanation:
***/
--a
BEGIN
	SET NOCOUNT ON
	DECLARE @RowStart INT ,@RowEnd INT, @deviceId INT, @subscriberId INT = 0, @DbName nvarchar(128)
	SET @DbName=DB_NAME()

	DECLARE @itemType INT = 1;--- hardcode for device

		EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
		@deviceNo=@deviceNo, 
		@deviceId=@deviceId output

	IF(ISNULL(@deviceId,0) > 0)
	BEGIN
		DECLARE @lastAccessedDate datetime
		-- set current subscriber
		SELECT TOP 1 @subscriberId=SubscriberId
			, @lastAccessedDate = ass.LastAccessedDate
		FROM dbo.Accounts acc WITH (NOLOCK)
		INNER JOIN ( 
			SELECT AccountID, MAX(LastAccessedDate) LastAccessedDate FROM dbo.Associations ass WITH (NOLOCK) 
			WHERE DeviceID=@deviceId
			GROUP BY AccountID
		) ass ON acc.AccountID=ass.AccountID

		CREATE TABLE  #tblAcc ( AccountID INT);

		INSERT INTO #tblAcc  (AccountID)
		SELECT tblAss.AccountID
		FROM  dbo.Associations AS tblAss WITH (NOLOCK)
		WHERE  DeviceID = @deviceid;

		CREATE TABLE  #tblDev ( DeviceID INT,
			DeviceNo nvarchar(50) default NULL,
			DeviceCode nvarchar(100) default N'N/A',
			PluginId INT default 0,
			Browser nvarchar(100) default N'N/A',
			SubscriberID INT,
			FirstSeenDate datetime,
			AssAcc INT,
			AssDev INT,
			AccEx INT,
			[Level] SMALLINT,
			LastAccessedDate DATETIME);
		CREATE CLUSTERED INDEX IDX_C_tblDev_DeviceID ON #tblDev(DeviceID)

		INSERT INTO #tblDev (DeviceID,[Level], AssDEV,AssAcc,AccEx, LastAccessedDate, SubscriberID)
		VALUES(@deviceid,0,0,0,0, @lastAccessedDate, @subscriberId)

		SELECT  @TotalRows = COUNT(DISTINCT tblAss.DeviceID) + 1
		FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			   INNER JOIN #tblAcc  AS tblAcc
					ON tblAcc.AccountID = tblAss.AccountID
		WHERE tblAss.DeviceID <> @deviceid;

		SELECT @PageSize = @PageSize ,
			@TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END,
			@PageIndex = @PageIndex - 1, 
			@RowStart = @PageSize * @PageIndex + 1, 
			@RowEnd = @RowStart + @PageSize -1

		INSERT INTO #tblDev (DeviceID,[Level], AssDEV,AssAcc,AccEx,LastAccessedDate, SubscriberID)
		SELECT 
			DISTINCT tblAss.DeviceID,2,0,0,0,LastAccessedDate, @subscriberId
		FROM
			 (
				SELECT ROW_NUMBER() over(ORDER BY LastAccessedDate) AS RowNum, 
					DeviceID, LastAccessedDate
				FROM (
					SELECT tblAss.DeviceID, MAX(tblAss.LastAccessedDate) LastAccessedDate
					FROM   dbo.Associations AS tblAss WITH (NOLOCK)
						   INNER JOIN #tblAcc  AS tblAcc
								ON tblAcc.AccountID = tblAss.AccountID
					WHERE DeviceID<>@deviceId
					GROUP BY tblAss.DeviceID
					)TBLA
			) tblAss
		WHERE tblAss.RowNum BETWEEN @RowStart AND @RowEnd 

		DROP TABLE  #tblAcc
	
		-- device info
		DECLARE @DeviceIds VARCHAR(1000)
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tblDev

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			FirstSeenDate   NVARCHAR(50)
		);

		INSERT #spResult  EXEC [dbo].[sp_DeviceInfoBylistDeviceIDSeen_xtest] @DeviceIds=@DeviceIds, @subscriberId = @subscriberId

		SELECT dev.DeviceID,d.DeviceNo,dev.DeviceCode,dev.PluginId,dev.Browser,dev.SubscriberID,d.FirstSeenDate,dev.AssAcc,dev.AssDev,dev.AccEx,dev.[Level],dev.LastAccessedDate
		FROM #tblDev dev
		INNER JOIN #spResult d ON dev.DeviceId = d.DeviceId
		ORDER BY dev.[Level], dev.LastAccessedDate DESC
	
		-- evidence
		SELECT t.EviCode, t.EviName, s.EviID, s.ItemID, s.ItemValue, s.ItemType, s.LevelID, s.SubscriberID
			, t.EviGroupID AS EviGroup
			, m.SubscriberID AS TrustyID
			, CASE
				WHEN m.SubscriberID<>@subscriberId THEN 1
				WHEN m.SubscriberID=@subscriberId THEN 0
			END Trusty
		INTO #tblEvi
		FROM rmt.EvidenceTypes t (NOLOCK)
			INNER JOIN rmt.EvidenceMaster m (NOLOCK) ON (t.EviGroupID = m.EviGroupID AND t.EviCode = m.EviCode)
			INNER JOIN rmt.EvidenceSub s (NOLOCK) ON (m.EviID = s.EviID)
			INNER JOIN #tblDev tblTemp (NOLOCK) ON (s.ItemID = tblTemp.DeviceID)
		WHERE s.ItemType = @itemType
	
		-- delete duplicate item with with high prority
		DELETE #tblEvi  
		FROM #tblEvi tblA  
			INNER JOIN (SELECT ItemID , ItemType , Trusty 
						FROM #tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
		WHERE tblA.Trusty = 1

		-- delete device has trusty exception
		DELETE #tblEvi  
		FROM #tblEvi tblA  
			INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
		WHERE tblA.Trusty = 1   
			AND tblExc.StatusID = 0  
			AND tblExc.AccountID IS NULL
			AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To  

		-- check trusty evidency
		CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50))
		INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
				exec [dbo].[admin_get_subtrusty_xtest] 
			@SubscriberId=@SubscriberID

		IF(EXISTS(SELECT TOP 1 1 FROM #TrustyInfo))
		BEGIN
			-- check valid trusty evidence
			SELECT evi.*
			FROM #tblEvi evi
				INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
			WHERE evi.Trusty=1
				AND t.TrustType='G'
			UNION 
			SELECT evi.*
			FROM #tblEvi evi
				INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
			WHERE evi.Trusty=1
				AND t.TrustType='C'
			UNION
			SELECT evi.*
			FROM #tblEvi evi
			WHERE evi.Trusty=0
		END
		ELSE
		BEGIN
			-- delete trusty evidence
			DELETE evi
			FROM #tblEvi evi
			WHERE Trusty=1

			SELECT evi.*
			FROM #tblEvi evi
		END

		DROP TABLE #TrustyInfo
		DROP TABLE #tblEvi
		
		-- trusty exception
		SELECT e.ExceptionID, e.DeviceID, e.AccountID, e.SubscriberID_From, s.SubscriberName SubscriberName_From,
			e.SubscriberID_To, su.SubscriberName SubscriberName_To, e.StatusID
		FROM rmt.Exceptions e (NOLOCK)
			INNER JOIN rmt.Subscribers s (NOLOCK) ON (e.SubscriberID_From = s.SubscriberID)
			INNER JOIN rmt.Subscribers su (NOLOCK) ON (e.SubscriberID_To = su.SubscriberID)
			INNER JOIN #tblDev tblTemp (NOLOCK) ON (e.DeviceID = tblTemp.DeviceID)
		WHERE e.AccountID IS NULL AND SubscriberID_To IS NOT NULL
	

		CREATE TABLE #tblDevACCL1  (
			DeviceID  INT,
			AccountID INT
			)

		INSERT INTO #tblDevACCL1 (DeviceID, AccountID)
		SELECT tblAss.DeviceID,
			   tblAss.AccountID
		FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			   INNER JOIN
			   #tblDev  AS tblDev
			   ON tblDev.DeviceID = tblAss.DeviceID

		UPDATE  #tblDev 
			SET AssAcc = tblA.AssAcc
		FROM    #tblDev AS tblDev 
				INNER JOIN
				(SELECT   COUNT(1) AS AssAcc,
						  tblDevACC.DeviceID
				 FROM     #tblDevACCL1 AS tblDevACC
				 GROUP BY tblDevACC.DeviceID  ) AS tblA
				ON tblDev.DeviceID = tblA.DeviceID

		CREATE TABLE  #tblDevACCL2 (
			DeviceID  INT,
			AccountID INT);

		INSERT INTO #tblDevACCL2 (DeviceID, AccountID)
		SELECT Distinct tblDevACC.DeviceID,
			   tblDevACC.AccountID
		FROM   #tblDevACCL1 AS tblDevACC
			   INNER JOIN
			   dbo.Associations AS tblAss  WITH (NOLOCK)
			   ON tblDevACC.AccountID = tblAss.AccountID;

		UPDATE  #tblDev 
		SET AssDEV = tblA.AssDEV
		FROM    #tblDev AS tblDev 
		INNER JOIN
		(SELECT   COUNT(DISTINCT tblAss.DeviceID) AS AssDEV,
			tblDevACC.DeviceID
		FROM     #tblDevACCL2 AS tblDevACC
			INNER JOIN
			dbo.Associations AS tblAss  WITH (NOLOCK)
			ON tblAss.AccountID = tblDevACC.AccountID
		WHERE    tblDevACC.DeviceID <> tblAss.DeviceID
		GROUP BY tblDevACC.DeviceID  ) AS tblA
		ON tblDev.DeviceID = tblA.DeviceID

		DROP TABLE #tblDevACCL2

		UPDATE  #tblDev 
			SET AccEx  = tblA.AccEx 
		FROM    #tblDev AS tblDev 
				INNER JOIN
				(SELECT   tblDevACC.DeviceID,
						  count(1) AS AccEx 
				 FROM     #tblDevACCL1 AS tblDevACC
						  INNER JOIN  dbo.Associations AS tblAss  WITH (NOLOCK)
								ON tblDevACC.AccountID = tblAss.AccountID
									AND tblDevACC.DeviceID = tblAss.DeviceID
						  INNER JOIN  rmt.Exceptions AS tblExp  WITH (NOLOCK)
							ON tblAss.ExceptionID = tblExp.ExceptionID
								 AND tblExp.StatusID = 0
				 GROUP BY tblDevACC.DeviceID) AS tblA
				ON tblDev.DeviceID = tblA.DeviceID;

		DROP TABLE #tblDevACCL1

		-- association stats information
		SELECT tblDev.DeviceID,
			tblDev.DeviceNO,
			CONVERT(VARCHAR(11), MIN(d.FirstSeenDate),106) FirstSeenDate, 
			tblDev.AssAcc,
			tblDev.AssDEV,
			tblDev.AccEx ,
			tblDev.Level
		FROM  #tblDev tblDev
		INNER JOIN #spResult d ON tblDev.DeviceId = d.DeviceId
		GROUP BY tblDev.DeviceID,tblDev.DeviceNO, tblDev.AssDEV,tblDev.AssAcc,tblDev.AccEx,tblDev.[Level]
		ORDER BY tblDev.Level,tblDev.DeviceNO ,tblDev.AssAcc DESC
	
		DROP TABLE  #tblDev
		DROP TABLE #spResult
	END
END














GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDeviceByDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDevicesByDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDevicesByDevice]	
	@DeviceNos VARCHAR(MAX),
	@PageSize INT=50 ,
	@PageIndex INT=1 ,
	@TotalPages INT=0 OUT,
	@TotalRows INT=0 OUT	
AS
/***
	Created: 20181015@Thai.Tran
	Task: get list association Devices by DeviceNo
	  DB: FPS_SUB. 
	  
	Revisions:
		20181015@Thai.Tran : Create (#103000)

	Param's Explanation:

	exec [Rpt_GetAssociatedDevicesByDevice] '5e275c5cb1374929ba62cdb55fd90d61, 610126c1bd5c4d77b4c5c58b77d76a32, c253de28604340c28f2dea3c549a42c1'
***/

BEGIN
	SET NOCOUNT ON;

	IF ( ISNULL(@DeviceNos,'') = '')
		RETURN;

	DECLARE @DeviceNo VARCHAR(32), @DeviceId INT, @DeviceIds VARCHAR(MAX) = '';

	DECLARE @RowStart INT, @RowEnd INT;

	WHILE LEN(@DeviceNos) > 0
	BEGIN
		SET @DeviceNo = LEFT(@DeviceNos, CHARINDEX(',', @DeviceNos + ',') - 1);

		EXEC dbo.sp_DeviceInfoByNo 
			@DeviceNo = @DeviceNo			
			,@DeviceId = @DeviceId OUTPUT;

		SET @DeviceIds = @DeviceIds + ISNULL(',' + CAST(@DeviceId AS VARCHAR(10)), '');
		SET @DeviceNos = STUFF(@DeviceNos, 1, CHARINDEX(',', @DeviceNos + ','), '');
	END;

	IF (@DeviceIds = '')
		RETURN;

	CREATE TABLE #tblDeviceId (DeviceId INT);				
	INSERT INTO #tblDeviceId(DeviceId)
	SELECT Item
	FROM dbo.SplitString(@DeviceIds, ',')	
	OPTION (MAXRECURSION 0)	

	CREATE TABLE  #tblAcc ( AccountId INT);
	INSERT INTO #tblAcc  (AccountId) 
	SELECT DISTINCT tblAss.AccountId 
	FROM  dbo.Associations AS tblAss WITH (NOLOCK) 
	INNER JOIN #tblDeviceId AS tblDev WITH (NOLOCK) ON tblAss.DeviceID = tblDev.DeviceId	

	DROP TABLE #tblDeviceId;
				
	SELECT  @TotalRows = COUNT(DISTINCT tblAss.DeviceId) + 1
	FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			INNER JOIN #tblAcc  AS tblAcc WITH (NOLOCK) ON tblAcc.AccountId = tblAss.AccountId		

	SELECT @PageSize = @PageSize ,
		@TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END,
		@PageIndex = @PageIndex - 1, 
		@RowStart = @PageSize * @PageIndex + 1, 
		@RowEnd = @RowStart + @PageSize -1;

	CREATE TABLE  #tblDev 
	(
		DeviceId INT, 
		AssAcc INT, AssDev INT
	);
	CREATE CLUSTERED INDEX IDX_C_tblDev_DeviceID ON #tblDev (DeviceId);

	INSERT INTO #tblDev (DeviceId)
	SELECT tblAss.DeviceId
	FROM
			(
			SELECT ROW_NUMBER() OVER(ORDER BY LastAccessedDate) AS RowNum, DeviceId, LastAccessedDate
			FROM (
				SELECT tblAss.DeviceId, MAX(tblAss.LastAccessedDate) LastAccessedDate
				FROM   dbo.Associations AS tblAss WITH (NOLOCK)
						INNER JOIN #tblAcc  AS tblAcc WITH (NOLOCK) ON tblAcc.AccountId = tblAss.AccountId					
				GROUP BY tblAss.DeviceId					
				) AS TBLA								
		) AS tblAss			
	WHERE tblAss.RowNum BETWEEN @RowStart AND @RowEnd				

	DROP TABLE  #tblAcc;
		
	CREATE TABLE #tblDevACCL1 
	(
		DeviceId  INT, 
		AccountId INT
	);

	INSERT INTO #tblDevACCL1 (DeviceId, AccountId)
	SELECT DISTINCT tblAss.DeviceId, tblAss.AccountId
	FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			INNER JOIN #tblDev  AS tblDev WITH (NOLOCK) ON tblDev.DeviceId = tblAss.DeviceId;

	UPDATE  #tblDev 
	SET AssAcc = tblA.AssAcc
	FROM    #tblDev AS tblDev WITH (NOLOCK)
		INNER JOIN
			(SELECT   tblDevACC.DeviceId, COUNT(1) AS AssAcc							
				FROM     #tblDevACCL1 AS tblDevACC  WITH (NOLOCK)
				GROUP BY tblDevACC.DeviceId  ) AS tblA 
		ON tblDev.DeviceId = tblA.DeviceId;

	CREATE TABLE  #tblDevACCL2 	
	(
		DeviceId  INT, 
		AccountId INT
	);			

	INSERT INTO #tblDevACCL2 (DeviceId, AccountId)
	SELECT DISTINCT tblDevACC.DeviceId, tblDevACC.AccountId
	FROM   #tblDevACCL1 AS tblDevACC WITH (NOLOCK)
			INNER JOIN dbo.Associations AS tblAss  WITH (NOLOCK) ON tblDevACC.AccountId = tblAss.AccountId;

	UPDATE  #tblDev 
	SET AssDEV = tblA.AssDEV
	FROM    #tblDev AS tblDev  WITH (NOLOCK)
		INNER JOIN
			(SELECT   tblDevACC.DeviceId, COUNT(DISTINCT tblAss.DeviceId) AS AssDEV
			FROM     #tblDevACCL2 AS tblDevACC  WITH (NOLOCK)
				INNER JOIN dbo.Associations AS tblAss  WITH (NOLOCK) ON tblAss.AccountId = tblDevACC.AccountId
			WHERE    tblDevACC.DeviceId <> tblAss.DeviceId
			GROUP BY tblDevACC.DeviceId  ) AS tblA 
		ON tblDev.DeviceId = tblA.DeviceId;
		
	-- association stats information
	SELECT DeviceId, AssAcc, AssDEV
	FROM  #tblDev
	ORDER BY AssAcc DESC;
	
	DROP TABLE #tblDevACCL1;
	DROP TABLE #tblDevACCL2;	
	DROP TABLE  #tblDev;	
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDevicesByDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociatedDevicesByDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociatedDevicesByDevice_xtest]	
	@DeviceNos VARCHAR(MAX),
	@PageSize INT=50 ,
	@PageIndex INT=1 ,
	@TotalPages INT=0 OUT,
	@TotalRows INT=0 OUT	
AS
/***
	Created: 20181015@Thai.Tran
	Task: get list association Devices by DeviceNo
	  DB: FPS_SUB. 
	  
	Revisions:
		20181015@Thai.Tran : Create (#103000)

	Param's Explanation:

	exec [Rpt_GetAssociatedDevicesByDevice_xtest] '5e275c5cb1374929ba62cdb55fd90d61, 610126c1bd5c4d77b4c5c58b77d76a32, c253de28604340c28f2dea3c549a42c1'
***/

BEGIN
	SET NOCOUNT ON;

	IF ( ISNULL(@DeviceNos,'') = '')
		RETURN;

	DECLARE @DeviceNo VARCHAR(32), @DeviceId INT, @DeviceIds VARCHAR(MAX) = '';

	DECLARE @RowStart INT, @RowEnd INT;

	WHILE LEN(@DeviceNos) > 0
	BEGIN
		SET @DeviceNo = LEFT(@DeviceNos, CHARINDEX(',', @DeviceNos + ',') - 1);

		EXEC dbo.sp_DeviceInfoByNo 
			@DeviceNo = @DeviceNo			
			,@DeviceId = @DeviceId OUTPUT;

		SET @DeviceIds = @DeviceIds + ISNULL(',' + CAST(@DeviceId AS VARCHAR(10)), '');
		SET @DeviceNos = STUFF(@DeviceNos, 1, CHARINDEX(',', @DeviceNos + ','), '');
	END;

	IF (@DeviceIds = '')
		RETURN;

	CREATE TABLE #tblDeviceId (DeviceId INT);				
	INSERT INTO #tblDeviceId(DeviceId)
	SELECT Item
	FROM dbo.SplitString(@DeviceIds, ',')	
	OPTION (MAXRECURSION 0)	

	CREATE TABLE  #tblAcc ( AccountId INT);
	INSERT INTO #tblAcc  (AccountId) 
	SELECT DISTINCT tblAss.AccountId 
	FROM  dbo.Associations AS tblAss WITH (NOLOCK) 
	INNER JOIN #tblDeviceId AS tblDev WITH (NOLOCK) ON tblAss.DeviceID = tblDev.DeviceId	

	DROP TABLE #tblDeviceId;
				
	SELECT  @TotalRows = COUNT(DISTINCT tblAss.DeviceId) + 1
	FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			INNER JOIN #tblAcc  AS tblAcc WITH (NOLOCK) ON tblAcc.AccountId = tblAss.AccountId		

	SELECT @PageSize = @PageSize ,
		@TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END,
		@PageIndex = @PageIndex - 1, 
		@RowStart = @PageSize * @PageIndex + 1, 
		@RowEnd = @RowStart + @PageSize -1;

	CREATE TABLE  #tblDev 
	(
		DeviceId INT, 
		AssAcc INT, AssDev INT
	);
	CREATE CLUSTERED INDEX IDX_C_tblDev_DeviceID ON #tblDev (DeviceId);

	INSERT INTO #tblDev (DeviceId)
	SELECT tblAss.DeviceId
	FROM
			(
			SELECT ROW_NUMBER() OVER(ORDER BY LastAccessedDate) AS RowNum, DeviceId, LastAccessedDate
			FROM (
				SELECT tblAss.DeviceId, MAX(tblAss.LastAccessedDate) LastAccessedDate
				FROM   dbo.Associations AS tblAss WITH (NOLOCK)
						INNER JOIN #tblAcc  AS tblAcc WITH (NOLOCK) ON tblAcc.AccountId = tblAss.AccountId					
				GROUP BY tblAss.DeviceId					
				) AS TBLA								
		) AS tblAss			
	WHERE tblAss.RowNum BETWEEN @RowStart AND @RowEnd				

	DROP TABLE  #tblAcc;
		
	CREATE TABLE #tblDevACCL1 
	(
		DeviceId  INT, 
		AccountId INT
	);

	INSERT INTO #tblDevACCL1 (DeviceId, AccountId)
	SELECT DISTINCT tblAss.DeviceId, tblAss.AccountId
	FROM   dbo.Associations AS tblAss WITH (NOLOCK)
			INNER JOIN #tblDev  AS tblDev WITH (NOLOCK) ON tblDev.DeviceId = tblAss.DeviceId;

	UPDATE  #tblDev 
	SET AssAcc = tblA.AssAcc
	FROM    #tblDev AS tblDev WITH (NOLOCK)
		INNER JOIN
			(SELECT   tblDevACC.DeviceId, COUNT(1) AS AssAcc							
				FROM     #tblDevACCL1 AS tblDevACC  WITH (NOLOCK)
				GROUP BY tblDevACC.DeviceId  ) AS tblA 
		ON tblDev.DeviceId = tblA.DeviceId;

	CREATE TABLE  #tblDevACCL2 	
	(
		DeviceId  INT, 
		AccountId INT
	);			

	INSERT INTO #tblDevACCL2 (DeviceId, AccountId)
	SELECT DISTINCT tblDevACC.DeviceId, tblDevACC.AccountId
	FROM   #tblDevACCL1 AS tblDevACC WITH (NOLOCK)
			INNER JOIN dbo.Associations AS tblAss  WITH (NOLOCK) ON tblDevACC.AccountId = tblAss.AccountId;

	UPDATE  #tblDev 
	SET AssDEV = tblA.AssDEV
	FROM    #tblDev AS tblDev  WITH (NOLOCK)
		INNER JOIN
			(SELECT   tblDevACC.DeviceId, COUNT(DISTINCT tblAss.DeviceId) AS AssDEV
			FROM     #tblDevACCL2 AS tblDevACC  WITH (NOLOCK)
				INNER JOIN dbo.Associations AS tblAss  WITH (NOLOCK) ON tblAss.AccountId = tblDevACC.AccountId
			WHERE    tblDevACC.DeviceId <> tblAss.DeviceId
			GROUP BY tblDevACC.DeviceId  ) AS tblA 
		ON tblDev.DeviceId = tblA.DeviceId;
		
	-- association stats information
	SELECT DeviceId, AssAcc, AssDEV
	FROM  #tblDev
	ORDER BY AssAcc DESC;
	
	DROP TABLE #tblDevACCL1;
	DROP TABLE #tblDevACCL2;	
	DROP TABLE  #tblDev;	
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociatedDevicesByDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociationMatrixByAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociationMatrixByAccount]
	@userName NVARCHAR(50), 
	@PageSize int=50 ,
	@PageIndex int=-1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
	AS
BEGIN
	/*
	Created: 20130117@Tom
	Task: Retrieve Search and filter all transaction report
	  DB: FPS_SUB_111.
  
	Revisions:
		-20130321@Bobby: Rename to Rpt_GetAssociationMatrixByAccount from GetAssociationMatrixByAccountId
		-20130327@Tom: Group by #tblAccL1 :  tblAss2.AccountID, Accounts.UserName
		-20130708@Tom: Optimize remote device information
	Param's Explanation:  
		@PageIndex = -1 : retrieve all list Association Matrix
					>0  : aplly paging
	*/ 
	SET NOCOUNT ON;

	DECLARE @RowStart INT ,@RowEnd INT,@PageSizeAcc INT;
	DECLARE @AccountID INT, @subscriberID INT;
	
	SELECT TOP 1 @AccountID=AccountID, @subscriberID=SubscriberID 
	FROM dbo.Accounts (NOLOCK) 
	WHERE UserName=@userName;
	IF(ISNULL(@AccountID,0)=0) RETURN;

	CREATE TABLE #tblAssL1 (DeviceID INT,AccountID INT, LastAccessedDate DATETIME,EXCEPTIONID INT,Level INT DEFAULT 0);

	CREATE TABLE #tblAccL1 (AccountID INT);

	CREATE CLUSTERED INDEX IDX_C_tblAssL1_AccountID ON #tblAssL1(AccountID);

	SELECT @TotalRows = COUNT(DISTINCT tblAss2.AccountID)
	FROM dbo.Associations tblAss1 WITH (NOLOCK) 
		INNER JOIN dbo.Associations tblAss2 WITH (NOLOCK) 
			ON tblAss1.DeviceID = tblAss2.DeviceID 
	WHERE tblAss1.AccountID = @AccountID;

	IF (ISNULL(@TotalRows,0) = 0 )
		RETURN;

	IF (@PageIndex = -1)
		BEGIN
			SELECT @TotalPages = 1,
				@PageIndex = 1, 
				@RowStart = 1, 
				@RowEnd = @TotalRows;
		END;
	ELSE
		BEGIN
			SELECT @PageSizeAcc = @PageSize ,
				@TotalPages = @TotalRows / @PageSizeAcc + CASE WHEN @TotalRows%@PageSizeAcc > 0 THEN 1 ELSE 0 END,
				@PageIndex = @PageIndex - 1, 
				@RowStart = @PageSizeAcc * @PageIndex + 1, 
				@RowEnd = @RowStart + @PageSizeAcc -1;
		END;

	INSERT INTO #tblAccL1 (AccountID )
	SELECT 
		DISTINCT TBLA.AccountID 
	FROM
		 (
			SELECT ROW_NUMBER() over(ORDER BY LastAccessedDate) AS RowNum, 
				AccountID
			FROM (
				SELECT DISTINCT tblAss2.AccountID, Accounts.UserName,MAX(tblAss2.LastAccessedDate) LastAccessedDate
					FROM dbo.Associations tblAss1 WITH (NOLOCK) 
						INNER JOIN dbo.Associations tblAss2 WITH (NOLOCK) 
							ON tblAss1.DeviceID = tblAss2.DeviceID 
						INNER JOIN dbo.Accounts WITH (NOLOCK)
							ON tblAss2.AccountID = Accounts.AccountID 
					WHERE tblAss1.AccountID = @AccountID
					GROUP BY tblAss2.AccountID, Accounts.UserName
				)TBLA
		) TBLA
	WHERE TBLA.RowNum BETWEEN @RowStart AND @RowEnd; 

	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		Level
		)
	SELECT
		tblAss.DeviceID ,
		tblAss.AccountID , 
		tblAss.LastAccessedDate ,
		CASE isnull(tblExc.StatusID,1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID ,
		1 Level
	FROM dbo.Associations tblAss WITH (NOLOCK)
	LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) 
		ON tblExc.ExceptionID = tblAss.ExceptionID 
	WHERE tblAss.AccountID = @AccountID;
		
	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		Level
		)
	SELECT tblAss.DeviceID ,
		tblAss.AccountID , 
		tblAss.LastAccessedDate ,
		CASE isnull(tblExc.StatusID,1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID ,
		2 Level
	FROM dbo.Associations tblAss WITH (NOLOCK) 
	INNER JOIN #tblAssL1 tblAssL2 
		ON tblAssL2.DeviceID= tblAss.DeviceID
	INNER JOIN #tblAccL1 tblAccL1 
		ON tblAccL1.AccountID =  tblAss.AccountID
	LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) 
		ON tblExc.ExceptionID = tblAss.ExceptionID 
	WHERE tblAss.AccountID <> @AccountID;

	DROP TABLE #tblAccL1;

	IF @PageIndex >= 1 
		DELETE #tblAssL1 WHERE Level = 1;

	SELECT tblAssL1.DeviceID ,
		tblAssL1.AccountID , 
		Accounts.UserName ,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.Level
	INTO #tmpMatrix		
	FROM #tblAssL1 tblAssL1
	INNER JOIN dbo.Accounts WITH (NOLOCK)
		ON tblAssL1.AccountID = Accounts.AccountID 
	GROUP BY tblAssL1.DeviceID ,
		tblAssL1.AccountID , 
		Accounts.UserName ,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.Level
	ORDER BY tblAssL1.Level,tblAssL1.LastAccessedDate DESC,Accounts.UserName; 

	IF(EXISTS(SELECT TOP 1 1 FROM #tmpMatrix))
	BEGIN
		
		-- UPDATE device information
		DECLARE @DeviceIds NVARCHAR(max);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tmpMatrix;

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			FirstSeenDate   NVARCHAR(50)
		);

		INSERT #spResult EXEC dbo.sp_DeviceInfoBylistDeviceIDSeen @DeviceIds=@DeviceIds, @subscriberId=@subscriberId;	
	END;
	
	SELECT tmp.DeviceID, d.DeviceNo,AccountID , UserName ,LastAccessedDate,d.FirstSeenDate, EXCEPTIONID,Level
	FROM #tmpMatrix tmp		
	LEFT JOIN #spResult d	ON tmp.DeviceId = d.DeviceId
	ORDER BY Level, LastAccessedDate DESC;

	DROP TABLE #spResult;
	DECLARE @tblEvi TABLE(ItemID INT, ItemType INT, ItemValue NVARCHAR(50), EviID INT, EviGroup varchar(50), EviCode varchar(50), LevelID INT, TrustyID INT, CurSub INT, Trusty INT);
	
	-- insert evidences of device
	INSERT INTO @tblEvi (ItemID,ItemType,ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.DeviceID, 1, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID=@SubscriberID THEN 0
			WHEN m.SubscriberID<>@SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId=m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode=t.EviCode
		INNER JOIN #tmpMatrix matrix ON s.ItemId=matrix.DeviceID
	WHERE s.ItemType = 1
		AND m.StatusID = 0;

	-- insert evidences of accounts
	INSERT INTO @tblEvi (ItemID,ItemType,ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.AccountID, 0, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID=@SubscriberID THEN 0
			WHEN m.SubscriberID<>@SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId=m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode=t.EviCode
		INNER JOIN #tmpMatrix matrix ON s.ItemId=matrix.AccountID
	WHERE s.ItemType = 0
		AND m.StatusID = 0;

	-- delete duplicate item with with high prority
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN (SELECT ItemID , ItemType , Trusty 
					FROM @tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1;

	-- delete device has trusty exception
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
	WHERE tblA.Trusty = 1   
		AND tblExc.StatusID = 0  
		AND tblExc.AccountID IS NULL
		AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To;  

	-- check trusty evidency
	CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50));
	INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
	exec dbo.admin_get_subtrusty 
		@SubscriberId=@SubscriberID;

	--select * FROM @tblEvi

	IF(EXISTS(SELECT TOP 1 1 FROM #TrustyInfo))
	BEGIN
		-- check valid trusty evidence
		SELECT ItemID,ItemType,ItemValue, MIN(LevelID) LevelID, Trusty 
		FROM (
		SELECT evi.*
		FROM @tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
		WHERE evi.Trusty=1
			AND t.TrustType='G'
		UNION 
		SELECT evi.*
		FROM @tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
		WHERE evi.Trusty=1
			AND t.TrustType='C'
		UNION
		SELECT evi.*
		FROM @tblEvi evi
		WHERE evi.Trusty=0
		) T
		GROUP BY ItemID,ItemType,ItemValue, Trusty
		ORDER BY ItemType; 
	END;
	ELSE
	BEGIN
		-- delete trusty evidence
		DELETE evi
		FROM @tblEvi evi
		WHERE Trusty=1;

		SELECT ItemID,ItemType,ItemValue, MIN(LevelID) LevelID, Trusty 
		FROM @tblEvi
		GROUP BY ItemID,ItemType,ItemValue, Trusty
		ORDER BY ItemType; 
	END;

	DROP TABLE #TrustyInfo;
	DROP TABLE #tmpMatrix;
	DROP TABLE #tblAssL1;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByAccount] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByAccount] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByAccount] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociationMatrixByAccount_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_GetAssociationMatrixByAccount_xtest]
	@userName NVARCHAR(50), 
	@PageSize int=50 ,
	@PageIndex int=-1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
	AS
BEGIN
	/*
	Created: 20130117@Tom
	Task: Retrieve Search and filter all transaction report
	  DB: FPS_SUB_111.
  
	Revisions:
		-20130321@Bobby: Rename to Rpt_GetAssociationMatrixByAccount_xtest from GetAssociationMatrixByAccountId
		-20130327@Tom: Group by #tblAccL1 :  tblAss2.AccountID, Accounts.UserName
		-20130708@Tom: Optimize remote device information
	Param's Explanation:  
		@PageIndex = -1 : retrieve all list Association Matrix
					>0  : aplly paging
	*/ 
	SET NOCOUNT ON

	DECLARE @RowStart INT ,@RowEnd INT,@PageSizeAcc INT;
	DECLARE @AccountID INT, @subscriberID INT;
	
	SELECT TOP 1 @AccountID=AccountID, @subscriberID=SubscriberID 
	FROM dbo.Accounts (NOLOCK) 
	WHERE UserName=@userName;
	IF(ISNULL(@AccountID,0)=0) RETURN;

	CREATE TABLE #tblAssL1 (DeviceID INT,AccountID INT, LastAccessedDate DATETIME,EXCEPTIONID INT,[Level] INT DEFAULT 0)

	CREATE TABLE #tblAccL1 (AccountID INT)

	CREATE CLUSTERED INDEX IDX_C_tblAssL1_AccountID ON #tblAssL1(AccountID)

	SELECT @TotalRows = COUNT(DISTINCT tblAss2.AccountID)
	FROM dbo.Associations tblAss1 WITH (NOLOCK) 
		INNER JOIN dbo.Associations tblAss2 WITH (NOLOCK) 
			ON tblAss1.DeviceID = tblAss2.DeviceID 
	WHERE tblAss1.AccountID = @AccountID

	IF (ISNULL(@TotalRows,0) = 0 )
		RETURN

	IF (@PageIndex = -1)
		BEGIN
			SELECT @TotalPages = 1,
				@PageIndex = 1, 
				@RowStart = 1, 
				@RowEnd = @TotalRows
		END
	ELSE
		BEGIN
			SELECT @PageSizeAcc = @PageSize ,
				@TotalPages = @TotalRows / @PageSizeAcc + CASE WHEN @TotalRows%@PageSizeAcc > 0 THEN 1 ELSE 0 END,
				@PageIndex = @PageIndex - 1, 
				@RowStart = @PageSizeAcc * @PageIndex + 1, 
				@RowEnd = @RowStart + @PageSizeAcc -1
		END

	INSERT INTO #tblAccL1 (AccountID )
	SELECT 
		DISTINCT TBLA.AccountID 
	FROM
		 (
			SELECT ROW_NUMBER() over(ORDER BY LastAccessedDate) AS RowNum, 
				AccountID
			FROM (
				SELECT DISTINCT tblAss2.AccountID, Accounts.UserName,MAX(tblAss2.LastAccessedDate) LastAccessedDate
					FROM dbo.Associations tblAss1 WITH (NOLOCK) 
						INNER JOIN dbo.Associations tblAss2 WITH (NOLOCK) 
							ON tblAss1.DeviceID = tblAss2.DeviceID 
						INNER JOIN dbo.Accounts WITH (NOLOCK)
							ON tblAss2.AccountID = Accounts.AccountID 
					WHERE tblAss1.AccountID = @AccountID
					GROUP BY tblAss2.AccountID, Accounts.UserName
				)TBLA
		) TBLA
	WHERE TBLA.RowNum BETWEEN @RowStart AND @RowEnd 

	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		[Level]
		)
	SELECT
		tblAss.DeviceID ,
		tblAss.AccountID , 
		tblAss.LastAccessedDate ,
		CASE isnull(tblExc.StatusID,1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID ,
		1 [Level]
	FROM dbo.Associations tblAss WITH (NOLOCK)
	LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) 
		ON tblExc.ExceptionID = tblAss.ExceptionID 
	WHERE tblAss.AccountID = @AccountID
		
	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		[Level]
		)
	SELECT tblAss.DeviceID ,
		tblAss.AccountID , 
		tblAss.LastAccessedDate ,
		CASE isnull(tblExc.StatusID,1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID ,
		2 [Level]
	FROM dbo.Associations tblAss WITH (NOLOCK) 
	INNER JOIN #tblAssL1 tblAssL2 
		ON tblAssL2.DeviceID= tblAss.DeviceID
	INNER JOIN #tblAccL1 tblAccL1 
		ON tblAccL1.AccountID =  tblAss.AccountID
	LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) 
		ON tblExc.ExceptionID = tblAss.ExceptionID 
	WHERE tblAss.AccountID <> @AccountID

	DROP TABLE #tblAccL1

	IF @PageIndex >= 1 
		DELETE #tblAssL1 WHERE [Level] = 1

	SELECT tblAssL1.DeviceID ,
		tblAssL1.AccountID , 
		Accounts.UserName ,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.[Level]
	INTO #tmpMatrix		
	FROM #tblAssL1 tblAssL1
	INNER JOIN dbo.Accounts WITH (NOLOCK)
		ON tblAssL1.AccountID = Accounts.AccountID 
	GROUP BY tblAssL1.DeviceID ,
		tblAssL1.AccountID , 
		Accounts.UserName ,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.[Level]
	ORDER BY tblAssL1.[Level],tblAssL1.LastAccessedDate DESC,Accounts.UserName 

	IF(EXISTS(SELECT TOP 1 1 FROM #tmpMatrix))
	BEGIN
		
		-- UPDATE device information
		DECLARE @DeviceIds VARCHAR(max)
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
		FROM #tmpMatrix

		CREATE TABLE #spResult 
		(
			DeviceID INT,
			DeviceNo NVARCHAR(50),
			FirstSeenDate   NVARCHAR(50)
		);

		INSERT #spResult        EXEC [dbo].[sp_DeviceInfoBylistDeviceIDSeen_xtest] @DeviceIds=@DeviceIds, @subscriberId=@subscriberId	
	END
	
	SELECT tmp.DeviceID, d.DeviceNo,AccountID , UserName ,LastAccessedDate,d.FirstSeenDate, EXCEPTIONID,[Level]
	FROM #tmpMatrix tmp		
	LEFT JOIN #spResult d	ON tmp.DeviceId = d.DeviceId
	ORDER BY [Level], LastAccessedDate DESC

	DROP TABLE #spResult
	DECLARE @tblEvi TABLE(ItemID INT, ItemType INT, ItemValue NVARCHAR(50), EviID INT, EviGroup varchar(50), EviCode varchar(50), LevelID INT, TrustyID INT, CurSub INT, Trusty INT)
	
	-- insert evidences of device
	INSERT INTO @tblEvi (ItemID,ItemType,ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.DeviceID, 1, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID=@SubscriberID THEN 0
			WHEN m.SubscriberID<>@SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId=m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode=t.EviCode
		INNER JOIN #tmpMatrix matrix ON s.ItemId=matrix.DeviceID
	WHERE s.ItemType = 1
		AND m.StatusID = 0

	-- insert evidences of accounts
	INSERT INTO @tblEvi (ItemID,ItemType,ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.AccountID, 0, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID=@SubscriberID THEN 0
			WHEN m.SubscriberID<>@SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId=m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode=t.EviCode
		INNER JOIN #tmpMatrix matrix ON s.ItemId=matrix.AccountID
	WHERE s.ItemType = 0
		AND m.StatusID = 0

	-- delete duplicate item with with high prority
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN (SELECT ItemID , ItemType , Trusty 
					FROM @tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1

	-- delete device has trusty exception
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
	WHERE tblA.Trusty = 1   
		AND tblExc.StatusID = 0  
		AND tblExc.AccountID IS NULL
		AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To  

	-- check trusty evidency
	CREATE TABLE #TrustyInfo(TrustyId int, TrustValue varchar(50), TrustType varchar(50))
	INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)
								exec [dbo].[admin_get_subtrusty_xtest] 
		@SubscriberId=@SubscriberID

	--select * FROM @tblEvi

	IF(EXISTS(SELECT TOP 1 1 FROM #TrustyInfo))
	BEGIN
		-- check valid trusty evidence
		SELECT ItemID,ItemType,ItemValue, MIN(LevelID) LevelID, Trusty 
		FROM (
		SELECT evi.*
		FROM @tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviGroup
		WHERE evi.Trusty=1
			AND t.TrustType='G'
		UNION 
		SELECT evi.*
		FROM @tblEvi evi
			INNER JOIN #TrustyInfo t ON t.TrustyId=evi.TrustyID AND t.TrustValue=evi.EviCode
		WHERE evi.Trusty=1
			AND t.TrustType='C'
		UNION
		SELECT evi.*
		FROM @tblEvi evi
		WHERE evi.Trusty=0
		) T
		GROUP BY ItemID,ItemType,ItemValue, Trusty
		ORDER BY ItemType 
	END
	ELSE
	BEGIN
		-- delete trusty evidence
		DELETE evi
		FROM @tblEvi evi
		WHERE Trusty=1

		SELECT ItemID,ItemType,ItemValue, MIN(LevelID) LevelID, Trusty 
		FROM @tblEvi
		GROUP BY ItemID,ItemType,ItemValue, Trusty
		ORDER BY ItemType 
	END

	DROP TABLE #TrustyInfo
	DROP TABLE #tmpMatrix
	DROP TABLE #tblAssL1
END














GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByAccount_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByAccount_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByAccount_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociationMatrixByDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetAssociationMatrixByDevice]
	@DeviceNo NVARCHAR(50),
	@PageSize INT = 50,
	@PageIndex INT = -1,
	@TotalPages INT = 0 OUTPUT,
	@TotalRows INT = 0 OUTPUT
AS
BEGIN
	/*
	Created: 20130117@Tom
	Task: Retrieve Search and filter all transaction report
		DB: FPS_SUB
	
	Revisions:
		- 20130321@Bobby: Rename to Rpt_GetAssociationMatrixByDevice from GetAssociationMatrixByDeviceId
		- 20130402@Tom: Retrive all Level 2 Of Device
		- 20130708@Tom: Optimize remote device information
		- 20140528@bobby: check max length when calling OPENQUERY
		- 20180509@Thai: fix bug when drop table #spResult when it's NOT existed
	Param's Explanation:  
		@PageIndex = -1 : retrieve all list Association Matrix
					>0  : aplly paging
	*/ 
	
	SET NOCOUNT ON;

	DECLARE @RowStart INT ,@RowEnd INT,@PageSizeAcc INT;
	DECLARE @DeviceID INT ,@subscriberId INT = 0;	
	
	EXEC dbo.sp_DeviceInfoByNo @deviceNo = @deviceNo, @deviceId = @deviceId OUTPUT;

	IF (ISNULL(@DeviceID, 0) = 0) RETURN;
	
	CREATE TABLE #tblAssL1 (DeviceID INT, AccountID INT, LastAccessedDate DATETIME, EXCEPTIONID INT, Level INT);

	CREATE CLUSTERED INDEX IDX_C_tblAssL1_DeviceID ON #tblAssL1(DeviceID);

	SELECT @TotalRows = COUNT(1)
	FROM Associations tblAss WITH (NOLOCK) 
	WHERE tblAss.DeviceID = @DeviceID;

	IF (ISNULL(@TotalRows, 0) = 0) RETURN;

	IF (@PageIndex = -1)
		BEGIN
			SELECT @TotalPages = 1,
				@PageIndex = 1, 
				@RowStart = 1, 
				@RowEnd = @TotalRows;
		END;
	ELSE
		BEGIN
			SELECT @PageSizeAcc = @PageSize ,
				@TotalPages = @TotalRows / @PageSizeAcc + CASE WHEN @TotalRows%@PageSizeAcc > 0 THEN 1 ELSE 0 END,
				@PageIndex = @PageIndex - 1, 
				@RowStart = @PageSizeAcc * @PageIndex + 1, 
				@RowEnd = @RowStart + @PageSizeAcc -1;
		END;

	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		Level
		)
	SELECT 
		TBLA.DeviceID ,
		TBLA.AccountID , 
		TBLA.LastAccessedDate ,
		TBLA.EXCEPTIONID ,
		TBLA.Level
	FROM
		 (
			SELECT ROW_NUMBER() OVER(ORDER BY tblAss.LastAccessedDate DESC) AS RowNum,
				tblAss.DeviceID,
				tblAss.AccountID, 
				tblAss.LastAccessedDate,
				CASE ISNULL(tblExc.StatusID, 1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID,
				1 Level
			FROM dbo.Associations tblAss WITH (NOLOCK)
				INNER JOIN dbo.Accounts WITH (NOLOCK) ON tblAss.AccountID = Accounts.AccountID 
				LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON tblExc.ExceptionID = tblAss.ExceptionID 
			WHERE tblAss.DeviceID = @DeviceID
		) TBLA
	WHERE TBLA.RowNum BETWEEN @RowStart AND @RowEnd;

	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		Level
		)
	SELECT tblAss.DeviceID,
		tblAss.AccountID, 
		tblAss.LastAccessedDate,
		CASE ISNULL(tblExc.StatusID, 1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID,
		2 Level
	FROM dbo.Associations tblAss WITH (NOLOCK) 
		INNER JOIN #tblAssL1 tblAssL2 WITH (NOLOCK) ON tblAssL2.AccountID = tblAss.AccountID 
		LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON tblExc.ExceptionID = tblAss.ExceptionID 
	WHERE tblAss.DeviceID <> @DeviceID;

	SELECT tblAssL1.DeviceID,
		tblAssL1.AccountID, 
		Accounts.UserName,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.Level	
	INTO #tmpMatrix			
	FROM #tblAssL1 tblAssL1 WITH (NOLOCK)
		INNER JOIN dbo.Accounts WITH (NOLOCK) ON tblAssL1.AccountID = Accounts.AccountID 
	GROUP BY tblAssL1.DeviceID,
		tblAssL1.AccountID, 
		Accounts.UserName,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.Level
	ORDER BY tblAssL1.Level, tblAssL1.LastAccessedDate DESC, Accounts.UserName;

	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		FirstSeenDate NVARCHAR(50)
	);

	IF(EXISTS(SELECT TOP (1) 1 FROM #tmpMatrix WITH (NOLOCK)))
	BEGIN
		-- UPDATE device information
		DECLARE @DeviceIds NVARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS VARCHAR(50))
		FROM #tmpMatrix WITH (NOLOCK);
		
		INSERT #spResult EXEC dbo.sp_DeviceInfoBylistDeviceIDSeen @DeviceIds = @DeviceIds, @subscriberId = @subscriberId;
	END;	

	SELECT tmp.DeviceID , d.DeviceNo,tmp.AccountID , tmp.UserName ,tmp.LastAccessedDate,d.FirstSeenDate, tmp.EXCEPTIONID,tmp.Level	
	FROM #tmpMatrix tmp WITH (NOLOCK)
		LEFT JOIN #spResult d WITH (NOLOCK) ON tmp.DeviceId = d.DeviceId;

	DROP TABLE #spResult;
	DECLARE @tblEvi TABLE(ItemID INT, ItemType INT, ItemValue NVARCHAR(50), EviID INT, EviGroup VARCHAR(50), EviCode VARCHAR(50), LevelID INT, TrustyID INT, CurSub INT, Trusty INT);
		
	SELECT TOP (1) @SubscriberID = SubscriberID FROM dbo.Accounts WITH (NOLOCK);
	
	-- insert evidences of accounts
	INSERT INTO @tblEvi (ItemID, ItemType, ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.AccountID, 0, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID = @SubscriberID THEN 0
			WHEN m.SubscriberID <> @SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId = m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode = t.EviCode
		INNER JOIN #tmpMatrix matrix WITH (NOLOCK) ON s.ItemId = matrix.AccountID
	WHERE s.ItemType = 0 AND m.StatusID = 0;

	-- insert evidences of device
	INSERT INTO @tblEvi (ItemID, ItemType, ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.DeviceID, 1, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID = @SubscriberID THEN 0
			WHEN m.SubscriberID <> @SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId = m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode = t.EviCode
		INNER JOIN #tmpMatrix matrix WITH (NOLOCK) ON s.ItemId = matrix.DeviceID
	WHERE s.ItemType = 1 AND m.StatusID = 0;
	
	-- delete duplicate item with with high prority
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN (SELECT ItemID, ItemType, Trusty 
					FROM @tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1;

	-- delete device has trusty exception
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
	WHERE tblA.Trusty = 1   
		AND tblExc.StatusID = 0  
		AND tblExc.AccountID IS NULL
		AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To;  

	-- check trusty evidency
	CREATE TABLE #TrustyInfo(TrustyId INT, TrustValue VARCHAR(50), TrustType VARCHAR(50));
	INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)

	EXEC dbo.admin_get_subtrusty @SubscriberId = @SubscriberID;

	IF(EXISTS(SELECT TOP (1) 1 FROM #TrustyInfo WITH (NOLOCK)))
	BEGIN		
		-- check valid trusty evidence
		SELECT ItemID, ItemType, ItemValue, MIN(LevelID) LevelID, Trusty 
		FROM (
			SELECT evi.ItemID, evi.ItemType, evi.ItemValue, evi.EviID, evi.EviGroup, evi.EviCode , evi.LevelID, evi.TrustyID, evi.CurSub, evi.Trusty			
			FROM @tblEvi evi
				INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID AND t.TrustValue = evi.EviGroup
			WHERE evi.Trusty = 1 AND t.TrustType = 'G'
			
			UNION
			 
			SELECT evi.ItemID, evi.ItemType, evi.ItemValue, evi.EviID, evi.EviGroup, evi.EviCode , evi.LevelID, evi.TrustyID, evi.CurSub, evi.Trusty			
			FROM @tblEvi evi
				INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID AND t.TrustValue = evi.EviCode
			WHERE evi.Trusty = 1 AND t.TrustType = 'C'
			
			UNION
			
			SELECT evi.ItemID, evi.ItemType, evi.ItemValue, evi.EviID, evi.EviGroup, evi.EviCode , evi.LevelID, evi.TrustyID, evi.CurSub, evi.Trusty			
			FROM @tblEvi evi 
			WHERE evi.Trusty = 0
			) AS T
		GROUP BY ItemID, ItemType, ItemValue, Trusty
		ORDER BY ItemType;
	END;
	ELSE
	BEGIN
		-- delete trusty evidence
		DELETE evi
		FROM @tblEvi evi
		WHERE Trusty = 1;

		SELECT ItemID, ItemType, ItemValue, MIN(LevelID) LevelID, Trusty
		FROM @tblEvi
		GROUP BY ItemID, ItemType, ItemValue, Trusty
		ORDER BY ItemType; 
	END;

	DROP TABLE #TrustyInfo;

	IF (@PageIndex = 0)
	BEGIN  
		TRUNCATE TABLE #tblAssL1;  
  
		INSERT INTO #tblAssL1 (AccountID)  
		SELECT DISTINCT AccountID   
		FROM dbo.Associations WITH (NOLOCK)   
		WHERE DeviceID = @DeviceID;    
     
		INSERT INTO #tblAssL1 (DeviceID,LastAccessedDate)  
		SELECT DISTINCT tblAss.DeviceID , MAX(tblAss.LastAccessedDate) LastAccessedDate  
		FROM dbo.Associations tblAss WITH (NOLOCK)   
			INNER JOIN  #tblAssL1 tblAssL1 WITH (NOLOCK) ON tblAssL1.AccountID = tblAss.AccountID  
		GROUP BY tblAss.DeviceID;   

		SELECT T.LevelID, T.DeviceID, T.LastAccessedDate INTO #tblAssL1Information
		FROM (
			SELECT 0 LevelID, tblAssL1.DeviceID, (tblAssL1.LastAccessedDate) LastAccessedDate  
			FROM #tblAssL1 tblAssL1 WITH (NOLOCK)  
			WHERE tblAssL1.DeviceID = @DeviceID  
			
			UNION ALL  
			
			SELECT 2 LevelID, tblAssL1.DeviceID, (tblAssL1.LastAccessedDate) LastAccessedDate 
			FROM #tblAssL1 tblAssL1 WITH (NOLOCK)
			WHERE tblAssL1.DeviceID <> @DeviceID AND tblAssL1.AccountID IS NUll  
		) AS T
		ORDER BY LevelID ASC, LastAccessedDate DESC;

		IF(EXISTS(SELECT TOP (1) 1 FROM #tblAssL1Information WITH (NOLOCK)))
		BEGIN
			-- UPDATE device information
			DECLARE @DeviceAssL1 NVARCHAR(MAX);
			SELECT @DeviceAssL1 = COALESCE(@DeviceAssL1 + ',', '') + CAST(DeviceId AS VARCHAR(50))
			FROM #tblAssL1Information WITH (NOLOCK);

			CREATE TABLE #spResult2 
			(
				DeviceID INT,
				DeviceNo NVARCHAR(50),
				FirstSeenDate NVARCHAR(50)
			);

			INSERT #spResult2 EXEC dbo.sp_DeviceInfoBylistDeviceIDSeen @DeviceIds = @DeviceAssL1, @subscriberId = @subscriberId;

			DECLARE @rmtDeviceAssL1 NVARCHAR(MAX);
			
			SELECT tmp.LevelID, tmp.DeviceID, tmp.LastAccessedDate, d.DeviceNo, d.FirstSeenDate
			FROM #tblAssL1Information tmp WITH (NOLOCK)
				LEFT JOIN #spResult2 d WITH (NOLOCK) ON tmp.DeviceId = d.DeviceId;

			DROP TABLE #tblAssL1Information;
			DROP TABLE #spResult2;
		END;
	END;  

	DROP TABLE #tblAssL1;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByDevice] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByDevice] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByDevice] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetAssociationMatrixByDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Object:  Stored Procedure dbo.Rpt_GetAssociationMatrixByDevice_xtest    Script Date: 09/05/2018 2:12:40 PM ******/

CREATE PROCEDURE [dbo].[Rpt_GetAssociationMatrixByDevice_xtest]
	@DeviceNo NVARCHAR(50),
	@PageSize INT = 50,
	@PageIndex INT = -1,
	@TotalPages INT = 0 OUTPUT,
	@TotalRows INT = 0 OUTPUT
AS
BEGIN
	/*
	Created: 20130117@Tom
	Task: Retrieve Search and filter all transaction report
		DB: FPS_SUB
	
	Revisions:
		- 20130321@Bobby: Rename to Rpt_GetAssociationMatrixByDevice_xtest from GetAssociationMatrixByDeviceId
		- 20130402@Tom: Retrive all Level 2 Of Device
		- 20130708@Tom: Optimize remote device information
		- 20140528@bobby: check max length when calling OPENQUERY
		- 20180509@Thai: fix bug when drop table #spResult when it's NOT existed
	Param's Explanation:  
		@PageIndex = -1 : retrieve all list Association Matrix
					>0  : aplly paging
	*/ 
	
	SET NOCOUNT ON

	DECLARE @RowStart INT ,@RowEnd INT,@PageSizeAcc INT
	DECLARE @DeviceID INT ,@subscriberId INT = 0	
	
	EXEC [dbo].[sp_DeviceInfoByNo] @deviceNo = @deviceNo, @deviceId = @deviceId OUTPUT

	IF (ISNULL(@DeviceID, 0) = 0) RETURN;
	
	CREATE TABLE #tblAssL1 (DeviceID INT, AccountID INT, LastAccessedDate DATETIME, EXCEPTIONID INT, [Level] INT)

	CREATE CLUSTERED INDEX IDX_C_tblAssL1_DeviceID ON #tblAssL1(DeviceID)

	SELECT @TotalRows = COUNT(1)
	FROM Associations tblAss WITH (NOLOCK) 
	WHERE tblAss.DeviceID = @DeviceID

	IF (ISNULL(@TotalRows, 0) = 0) RETURN;

	IF (@PageIndex = -1)
		BEGIN
			SELECT @TotalPages = 1,
				@PageIndex = 1, 
				@RowStart = 1, 
				@RowEnd = @TotalRows
		END
	ELSE
		BEGIN
			SELECT @PageSizeAcc = @PageSize ,
				@TotalPages = @TotalRows / @PageSizeAcc + CASE WHEN @TotalRows%@PageSizeAcc > 0 THEN 1 ELSE 0 END,
				@PageIndex = @PageIndex - 1, 
				@RowStart = @PageSizeAcc * @PageIndex + 1, 
				@RowEnd = @RowStart + @PageSizeAcc -1
		END

	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		[Level]
		)
	SELECT 
		TBLA.DeviceID ,
		TBLA.AccountID , 
		TBLA.LastAccessedDate ,
		TBLA.EXCEPTIONID ,
		TBLA.[Level]
	FROM
		 (
			SELECT ROW_NUMBER() OVER(ORDER BY tblAss.LastAccessedDate DESC) AS RowNum,
				tblAss.DeviceID,
				tblAss.AccountID, 
				tblAss.LastAccessedDate,
				CASE ISNULL(tblExc.StatusID, 1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID,
				1 [Level]
			FROM dbo.Associations tblAss WITH (NOLOCK)
				INNER JOIN dbo.Accounts WITH (NOLOCK) ON tblAss.AccountID = Accounts.AccountID 
				LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON tblExc.ExceptionID = tblAss.ExceptionID 
			WHERE tblAss.DeviceID = @DeviceID
		) TBLA
	WHERE TBLA.RowNum BETWEEN @RowStart AND @RowEnd

	INSERT INTO #tblAssL1  (
		DeviceID ,
		AccountID , 
		LastAccessedDate,
		EXCEPTIONID,
		[Level]
		)
	SELECT tblAss.DeviceID,
		tblAss.AccountID, 
		tblAss.LastAccessedDate,
		CASE ISNULL(tblExc.StatusID, 1) WHEN 1 THEN 0 ELSE tblAss.EXCEPTIONID END EXCEPTIONID,
		2 [Level]
	FROM dbo.Associations tblAss WITH (NOLOCK) 
		INNER JOIN #tblAssL1 tblAssL2 WITH (NOLOCK) ON tblAssL2.AccountID = tblAss.AccountID 
		LEFT JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON tblExc.ExceptionID = tblAss.ExceptionID 
	WHERE tblAss.DeviceID <> @DeviceID

	SELECT tblAssL1.DeviceID,
		tblAssL1.AccountID, 
		Accounts.UserName,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.[Level]	
	INTO #tmpMatrix			
	FROM #tblAssL1 tblAssL1 WITH (NOLOCK)
		INNER JOIN dbo.Accounts WITH (NOLOCK) ON tblAssL1.AccountID = Accounts.AccountID 
	GROUP BY tblAssL1.DeviceID,
		tblAssL1.AccountID, 
		Accounts.UserName,
		tblAssL1.LastAccessedDate,
		tblAssL1.EXCEPTIONID,
		tblAssL1.[Level]
	ORDER BY tblAssL1.[Level], tblAssL1.LastAccessedDate DESC, Accounts.UserName

	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		FirstSeenDate NVARCHAR(50)
	);

	IF(EXISTS(SELECT TOP (1) 1 FROM #tmpMatrix WITH (NOLOCK)))
	BEGIN
		-- UPDATE device information
		DECLARE @DeviceIds NVARCHAR(MAX)
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS VARCHAR(50))
		FROM #tmpMatrix WITH (NOLOCK)
		
		INSERT #spResult EXEC [dbo].[sp_DeviceInfoBylistDeviceIDSeen] @DeviceIds = @DeviceIds, @subscriberId = @subscriberId
	END	

	SELECT tmp.DeviceID , d.DeviceNo,tmp.AccountID , tmp.UserName ,tmp.LastAccessedDate,d.FirstSeenDate, tmp.EXCEPTIONID,tmp.[Level]	
	FROM #tmpMatrix tmp WITH (NOLOCK)
		LEFT JOIN #spResult d WITH (NOLOCK) ON tmp.DeviceId = d.DeviceId

	DROP TABLE #spResult
	DECLARE @tblEvi TABLE(ItemID INT, ItemType INT, ItemValue NVARCHAR(50), EviID INT, EviGroup VARCHAR(50), EviCode VARCHAR(50), LevelID INT, TrustyID INT, CurSub INT, Trusty INT)
		
	SELECT TOP (1) @SubscriberID = SubscriberID FROM dbo.Accounts WITH (NOLOCK);
	
	-- insert evidences of accounts
	INSERT INTO @tblEvi (ItemID, ItemType, ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.AccountID, 0, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID = @SubscriberID THEN 0
			WHEN m.SubscriberID <> @SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId = m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode = t.EviCode
		INNER JOIN #tmpMatrix matrix WITH (NOLOCK) ON s.ItemId = matrix.AccountID
	WHERE s.ItemType = 0 AND m.StatusID = 0

	-- insert evidences of device
	INSERT INTO @tblEvi (ItemID, ItemType, ItemValue, EviID, EviGroup, EviCode, LevelID, TrustyID, CurSub, Trusty)
	SELECT DISTINCT matrix.DeviceID, 1, s.ItemValue, m.EviID, t.EviGroupID, m.EviCode, s.LevelID, m.SubscriberID, @SubscriberID
		, CASE 
			WHEN m.SubscriberID = @SubscriberID THEN 0
			WHEN m.SubscriberID <> @SubscriberID THEN 1
		END Trusty
	FROM rmt.EvidenceSub s WITH (NOLOCK)
		INNER JOIN rmt.EvidenceMaster m WITH (NOLOCK) ON s.EviId = m.EviID
		INNER JOIN rmt.EvidenceTypes t WITH (NOLOCK) ON m.EviCode = t.EviCode
		INNER JOIN #tmpMatrix matrix WITH (NOLOCK) ON s.ItemId = matrix.DeviceID
	WHERE s.ItemType = 1 AND m.StatusID = 0
	
	-- delete duplicate item with with high prority
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN (SELECT ItemID, ItemType, Trusty 
					FROM @tblEvi  tblB WHERE tblB.Trusty = 0) tblB ON (tblA.ItemID = tblB.ItemID AND tblA.ItemType = tblB.ItemType)
	WHERE tblA.Trusty = 1

	-- delete device has trusty exception
	DELETE @tblEvi  
	FROM @tblEvi tblA  
		INNER JOIN rmt.Exceptions tblExc WITH (NOLOCK) ON (tblA.ItemID = tblExc.DeviceID AND tblA.ItemType = 1  )
	WHERE tblA.Trusty = 1   
		AND tblExc.StatusID = 0  
		AND tblExc.AccountID IS NULL
		AND tblExc.SubscriberID_From <> tblExc.SubscriberID_To  

	-- check trusty evidency
	CREATE TABLE #TrustyInfo(TrustyId INT, TrustValue VARCHAR(50), TrustType VARCHAR(50))
	INSERT INTO #TrustyInfo(TrustyId, TrustValue, TrustType)

	EXEC [dbo].[admin_get_subtrusty] @SubscriberId = @SubscriberID

	IF(EXISTS(SELECT TOP (1) 1 FROM #TrustyInfo WITH (NOLOCK)))
	BEGIN		
		-- check valid trusty evidence
		SELECT ItemID, ItemType, ItemValue, MIN(LevelID) LevelID, Trusty 
		FROM (
			SELECT evi.ItemID, evi.ItemType, evi.ItemValue, evi.EviID, evi.EviGroup, evi.EviCode , evi.LevelID, evi.TrustyID, evi.CurSub, evi.Trusty			
			FROM @tblEvi evi
				INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID AND t.TrustValue = evi.EviGroup
			WHERE evi.Trusty = 1 AND t.TrustType = 'G'
			
			UNION
			 
			SELECT evi.ItemID, evi.ItemType, evi.ItemValue, evi.EviID, evi.EviGroup, evi.EviCode , evi.LevelID, evi.TrustyID, evi.CurSub, evi.Trusty			
			FROM @tblEvi evi
				INNER JOIN #TrustyInfo t WITH (NOLOCK) ON t.TrustyId = evi.TrustyID AND t.TrustValue = evi.EviCode
			WHERE evi.Trusty = 1 AND t.TrustType = 'C'
			
			UNION
			
			SELECT evi.ItemID, evi.ItemType, evi.ItemValue, evi.EviID, evi.EviGroup, evi.EviCode , evi.LevelID, evi.TrustyID, evi.CurSub, evi.Trusty			
			FROM @tblEvi evi 
			WHERE evi.Trusty = 0
			) AS T
		GROUP BY ItemID, ItemType, ItemValue, Trusty
		ORDER BY ItemType
	END
	ELSE
	BEGIN
		-- delete trusty evidence
		DELETE evi
		FROM @tblEvi evi
		WHERE Trusty = 1

		SELECT ItemID, ItemType, ItemValue, MIN(LevelID) LevelID, Trusty
		FROM @tblEvi
		GROUP BY ItemID, ItemType, ItemValue, Trusty
		ORDER BY ItemType 
	END

	DROP TABLE #TrustyInfo

	IF (@PageIndex = 0)
	BEGIN  
		TRUNCATE TABLE #tblAssL1  
  
		INSERT INTO #tblAssL1 (AccountID)  
		SELECT DISTINCT AccountID   
		FROM dbo.Associations WITH (NOLOCK)   
		WHERE DeviceID = @DeviceID    
     
		INSERT INTO #tblAssL1 (DeviceID,LastAccessedDate)  
		SELECT DISTINCT tblAss.DeviceID , MAX(tblAss.LastAccessedDate) LastAccessedDate  
		FROM dbo.Associations tblAss WITH (NOLOCK)   
			INNER JOIN  #tblAssL1 tblAssL1 WITH (NOLOCK) ON tblAssL1.AccountID = tblAss.AccountID  
		GROUP BY tblAss.DeviceID   

		SELECT T.LevelID, T.DeviceID, T.LastAccessedDate INTO #tblAssL1Information
		FROM (
			SELECT 0 LevelID, tblAssL1.DeviceID, (tblAssL1.LastAccessedDate) LastAccessedDate  
			FROM #tblAssL1 tblAssL1 WITH (NOLOCK)  
			WHERE tblAssL1.DeviceID = @DeviceID  
			
			UNION ALL  
			
			SELECT 2 LevelID, tblAssL1.DeviceID, (tblAssL1.LastAccessedDate) LastAccessedDate 
			FROM #tblAssL1 tblAssL1 WITH (NOLOCK)
			WHERE tblAssL1.DeviceID <> @DeviceID AND tblAssL1.AccountID IS NUll  
		) AS T
		ORDER BY LevelID ASC, LastAccessedDate DESC

		IF(EXISTS(SELECT TOP (1) 1 FROM #tblAssL1Information WITH (NOLOCK)))
		BEGIN
			-- UPDATE device information
			DECLARE @DeviceAssL1 NVARCHAR(MAX)
			SELECT @DeviceAssL1 = COALESCE(@DeviceAssL1 + ',', '') + CAST(DeviceId AS VARCHAR(50))
			FROM #tblAssL1Information WITH (NOLOCK)

			CREATE TABLE #spResult2 
			(
				DeviceID INT,
				DeviceNo NVARCHAR(50),
				FirstSeenDate NVARCHAR(50)
			);

			INSERT #spResult2 EXEC [dbo].[sp_DeviceInfoBylistDeviceIDSeen] @DeviceIds = @DeviceAssL1, @subscriberId = @subscriberId

			DECLARE @rmtDeviceAssL1 NVARCHAR(MAX)
			
			SELECT tmp.LevelID, tmp.DeviceID, tmp.LastAccessedDate, d.DeviceNo, d.FirstSeenDate
			FROM #tblAssL1Information tmp WITH (NOLOCK)
				LEFT JOIN #spResult2 d WITH (NOLOCK) ON tmp.DeviceId = d.DeviceId

			DROP TABLE #tblAssL1Information
			DROP TABLE #spResult2
		END
	END  

	DROP TABLE #tblAssL1
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByDevice_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_GetAssociationMatrixByDevice_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetListAssociatedAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetListAssociatedAccount]
(
	@accountIds NVARCHAR(MAX)
)
AS
/*
Created: 20130313@Bobby
Task: Get list associated account
  DB: FPS_SUB_2.
  
Revisions:
    
Param's Explanation:

*/
SET NOCOUNT ON;
IF(LEN(@accountIds) > 0)
BEGIN
	DECLARE @devicesINCommon INT=0,@otherDevices INT=0,@associatedAccounts INT=0,@deviceExceptions INT=0;
	DECLARE @rptAccounts TABLE (AccountID INT, DevicesInCommon INT, OtherDevices INT, AssociatedAccounts INT, DeviceExceptions INT);
	DECLARE @accountId INT;
	
	DECLARE curIds CURSOR FOR 
	SELECT Item FROM dbo.Split(@accountIds,',');
	
	OPEN curIds;

    FETCH NEXT FROM curIds INTO @accountId;   

	WHILE @@FETCH_STATUS = 0   
	BEGIN   
		
		INSERT @rptAccounts(AccountID,DevicesInCommon,OtherDevices,AssociatedAccounts,DeviceExceptions)
		EXEC dbo.Rpt_GetAssociatedAccount @accountId;
				
		FETCH NEXT FROM curIds INTO @accountId;   
	END;   

    CLOSE curIds;
	DEALLOCATE curIds;
	
	SELECT * FROM @rptAccounts;     
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetListAssociatedAccount] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_GetListAssociatedDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_GetListAssociatedDevice]
(
	@deviceIds NVARCHAR(MAX)
)
AS
/*
Created: 20130313@Bobby
Task: Get list associated by multiple devices
  DB: FPS_SUB_2.
  
Revisions:
    
Param's Explanation:

*/
SET NOCOUNT ON;
IF(LEN(@deviceIds) > 0)
BEGIN

	DECLARE @associatedAccounts int=0,@associatedDevices INt=0,@accountExceptions INt=0;
	DECLARE @rptDevices TABLE (DeviceID bigint, AssociatedAccounts int, AssociatedDevices int, AccountExceptions int);
	DECLARE @deviceId int;
		
	DECLARE curIds CURSOR FOR 
	SELECT Item FROM dbo.Split(@deviceIds,',');
	
	OPEN curIds;

    FETCH NEXT FROM curIds INTO @deviceId;   

	WHILE @@FETCH_STATUS = 0   
	BEGIN   
		
		INSERT @rptDevices(DeviceID,AssociatedAccounts,AssociatedDevices,AccountExceptions) 
		EXEC dbo.Rpt_GetAssociatedDevice @deviceId;
				
		FETCH NEXT FROM curIds INTO @deviceId;   
	END;   

    CLOSE curIds;
	DEALLOCATE curIds;
	
	SELECT * FROM @rptDevices;     
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_GetListAssociatedDevice] TO [fpsWebSub] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_HisTransactions]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_HisTransactions] 
	@PageSize			INT = 50
	,@PageIndex			INT = 1
	,@TransDate_From	DATETIME = NULL
	,@TransDate_To		DATETIME = NULL
	,@bDevice			BIT = 0
	,@DeviceNo			NVARCHAR(50) = ''
	,@iAccount			TINYINT = 0
	,@UserName			NVARCHAR(50) = ''
	,@bIP				BIT = 0
	,@IP				NVARCHAR(20) = ''
	,@bCountry			BIT = 0
	,@CountryCode		NVARCHAR(20) = ''
	,@bRegion			BIT = 0
	,@Region			NVARCHAR(128) = ''
	,@bCity				BIT = 0
	,@City				NVARCHAR(128) = ''
	,@Actions			NVARCHAR(800) = ''
	,@TotalPages		INT = 0 OUTPUT
	,@TotalRows			INT = 0 OUTPUT
AS

/*
Created: 20130117@Tom
Task: Retrieve Search and filter all transaction report
  DB: FPS_SUB_99.
  
Revisions:
    -Bobby@20130606: Update validation of searching by device and account & setting default range of time is 24 latest hours
	-Hannah@20130808: Add report filer by action name 
	-Bobby@20140611: Update filter by N/A Device
	-Bobby@20141230: Fix bug - search for account exactly & refactor code
	-Tom@20150414: Allow Search Username2
	-Tom@20150614: Improve performance
	- 20160328@bobby.nguyen: #54919 - add more UserAgent info
	- 20200108@Thai: Update the length of data type - [Redmine: #126654]

Param's Explanation:  
	- @iAccount: 1 - partial; 2 - exactly
*/
BEGIN
	SET ARITHABORT ON;
	SET NOCOUNT ON;
	
	DECLARE @SubscriberId	INT
		,@deviceId			INT;

	DECLARE @SQL_COND		NVARCHAR(MAX)
		, @SQL_COUNT		NVARCHAR(MAX)
		, @dateTimeNow		DATETIME = GETDATE();		

	SELECT TOP (1) @SubscriberId = SubscriberID
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID > 0;
 
	       
	IF(@TransDate_From IS NULL)
		SET @TransDate_From = DATEADD(hour,-24, @dateTimeNow);
	
	IF(@TransDate_To IS NULL)
		SET @TransDate_To = @dateTimeNow;
	
	SELECT @SQL_COND = ' WHERE tblTrans.[TransDate] >''' + CONVERT(NVARCHAR(50), @TransDate_From) + ''' AND tblTrans.[TransDate] < ''' + CONVERT(NVARCHAR(50), @TransDate_To) + '''';

	IF ( @bIP = 1) AND (LEN(@IP) > 0)
	BEGIN		
		SET @SQL_COND = @SQL_COND + ' AND tblTrans.[IP] = N''' + (@IP) + '''';
	END;

	IF ( @bCountry = 1) AND (LEN(@CountryCode) > 0)
	BEGIN
		SET @SQL_COND = @SQL_COND + ' AND tblTrans.[CountryCode] = N''' + (@CountryCode) + '''';
	END;

	IF ( @bRegion = 1) AND (LEN(@Region) > 0)
	BEGIN
		SET @SQL_COND = @SQL_COND + ' AND tblTrans.[Region] = N''' + (@Region) + '''';
	END;

	IF ( @bCity = 1) AND (LEN(@City) > 0)
	BEGIN
			SET @SQL_COND = @SQL_COND + ' AND tblTrans.[City] = N''' + @City + '''';
	END;	

	IF  (LEN(@Actions) > 0)
	BEGIN	
		DECLARE  @formatActionNames NVARCHAR(max);
		DECLARE @Actions_cont NVARCHAR(800) = '' 

		;WITH rptAction AS
			(
				SELECT ActionName
				FROM FPSRPT.FPS_RPT.dbo.rptActions WITH (NOLOCK)
				WHERE SubscriberID = @SubscriberId
				GROUP BY ActionName
			)
			SELECT @Actions_cont = COALESCE(@Actions_cont + ',', '') + convert(NVARCHAR(50),ISNULL(a.ActionName,'')) 
			FROM FPSRPT.FPS_Admin.dbo.Actions a WITH (NOLOCK)
				INNER JOIN rptAction rpt
				ON a.ActionName = rpt.ActionName
			WHERE a.IsActive = 1
			ORDER BY ActionID;

		IF LEN(@Actions_cont)>0 
		BEGIN
			SET @Actions_cont = SUBSTRING(@Actions_cont,2,1000);
		END;

		IF @Actions_cont <> @Actions
		BEGIN		
			SELECT @formatActionNames = COALESCE(@formatActionNames + ',''', '''') + CAST(Item AS NVARCHAR(50)) + ''''
				FROM dbo.SplitString(@Actions, ',');	
			SET @SQL_COND = @SQL_COND + ' AND tblTrans.[ActionName] IN ('+ @formatActionNames+ ')';		
		END;
	END;		
		
	CREATE TABLE #tblAccounts(AccountID INT, UserName NVARCHAR(50), UserName2 NVARCHAR(50));
	CREATE TABLE #tblDevices(DeviceID INT, DeviceNo NVARCHAR(50), OsName NVARCHAR(50));

	IF @iAccount = 2 
	BEGIN 
		IF NOT EXISTS(SELECT TOP 1 1 FROM dbo.Accounts WITH (NOLOCK) WHERE (UserName = @UserName) ) 
		BEGIN
			SELECT TOP 1 @UserName = UserName FROM dbo.Accounts WITH (NOLOCK) WHERE (UserName2 = @UserName);
		END;
	END;

	


	IF ( @iAccount IN (1,2) OR @bDevice = 1)-- = --> NO JOIN
	BEGIN
		IF (@UserName <> 'N/A' )
		BEGIN
			INSERT INTO #tblAccounts(AccountID, UserName, UserName2)
			SELECT AccountID, UserName, UserName2 FROM dbo.Accounts WITH (NOLOCK)
			WHERE 1 = (
					CASE WHEN @iAccount = 2 AND (UserName = @UserName) THEN 1 
					WHEN @iAccount = 1 AND UserName LIKE @UserName + '%' THEN 1 
					ELSE 0 END 
				);
		END;
				
		IF ( @bDevice = 1 AND @deviceNo <> 'N/A' ) -- if there is a device, add device condition into @SQL_COND
		BEGIN		
			DECLARE @osName NVARCHAR(50);	

			EXEC dbo.sp_DeviceInfoByNo @deviceNo = @deviceNo
				,@subscriberId	= @subscriberId
				,@deviceId		= @deviceId OUTPUT
				,@osName		= @osName OUTPUT;


			INSERT INTO #tblDevices(DeviceID, DeviceNo, OSName)
			VALUES (@deviceId,@DeviceNo,@osName);
			
		END;
	END;
		
	--search account N/A
	IF(@UserName='N/A')
	BEGIN
		SET @SQL_COND += ' AND (tblTrans.[AccountId] IS NULL OR tblTrans.[AccountId]=0)';	
	END;	
	--search device N/A
	IF(@deviceNo='N/A')
	BEGIN
		SET @SQL_COND += ' AND (tblTrans.[DeviceID] IS NULL OR tblTrans.[DeviceID]=0)';	
	END;
		
	SET @SQL_COUNT = 'SELECT  @TotalRows = COUNT(tblTrans.[TransID]) FROM [dbo].[Transactions] tblTrans WITH (NOLOCK)';
	SET @SQL_COUNT += CASE  
						WHEN (@iAccount IN (1, 2) AND @UserName <>'N/A') THEN ' INNER JOIN #tblAccounts tblAccount ON tblTrans.[AccountID] = tblAccount.[AccountID]' 
						ELSE '' 
					END;
	SET @SQL_COUNT += CASE  
						WHEN (@bDevice IN (1) AND @deviceNo <> 'N/A') THEN ' INNER JOIN #tblDevices tblDevice ON tblTrans.[DeviceID] = tblDevice.[DeviceID]' 
						ELSE '' 
					END;

	SET @SQL_COUNT += @SQL_COND;
	

	EXEC sp_executesql @SQL_COUNT, 
		N'@TotalRows INT OUT',@TotalRows OUTPUT;

	IF (@TotalRows = 0 )
		RETURN;

	

	DECLARE @RowStart BIGINT, @RowEnd BIGINT;
	--setting initial infor for the Total pages	
	IF (@TotalRows < @PageSize) 
		SET @PageSize = @TotalRows;
	--calculate total pages
	IF (@TotalPages = 0)
		SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END;

	SELECT @PageIndex = @PageIndex - 1, 
		@RowStart = @PageSize * @PageIndex + 1, 
		@RowEnd = @RowStart + @PageSize -1;
	
	--fetch data to table temp
	DECLARE @sqlTempTbl NVARCHAR(MAX); 
	
		--the below just for getting a structure

	SELECT TOP 0 
			CAST(NULL AS INT) AS RowNum,
			CAST(t.TransID AS INT) AS TransID,
			t.AccountID,
			CAST(NULL AS NVARCHAR(50)) AS UserName,
			CAST(NULL AS NVARCHAR(50)) AS UserName2,
			t.DeviceID,
			CAST(NULL AS NVARCHAR(50)) AS DeviceNo,
			CAST(NULL AS NVARCHAR(50)) AS OsName,
			t.SubscriberID,
			t.TransDate,
			t.ActionName,
			t.IP,
			t.Country,
			t.CountryCode,
			t.Region,
			t.City,
			t.ServiceProvider,
			t.ISP,
			t.Browser,
			t.PluginID,
			t.Flagged,
			t.RuleSetID,
			t.ResultType,
			t.RuleVersionID,
			t.URL,
			CAST(NULL AS NVARCHAR(150)) AS RuleName,
			t.ActionResult,
			t.UserAgent
	INTO  #tableTmp
	FROM dbo.Transactions t WITH(NOLOCK);

	SELECT @sqlTempTbl = N'INSERT INTO  #tableTmp( RowNum, TransID, AccountID, UserName, UserName2, DeviceID, DeviceNo, OsName, SubscriberID,TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP, 
		Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL,RuleName,ActionResult,UserAgent)
		SELECT A.* 
		FROM ( SELECT TOP ' + CONVERT(NVARCHAR(10),@RowEnd) + ' 
			ROW_NUMBER() OVER(ORDER BY tblTrans.TransDate DESC) AS RowNum
			,tblTrans.[TransID]
			,tblTrans.[AccountID]								
			,tblAccount.UserName
			,tblAccount.UserName2								
			,tblTrans.[DeviceID]
			,tblDev.[DeviceNo]
			,tblDev.[OSName]
			,tblTrans.[SubscriberID]
			,tblTrans.[TransDate]
			,tblTrans.[ActionName]
			,tblTrans.[IP]
			,tblTrans.[Country]
			,tblTrans.[CountryCode]
			,tblTrans.[Region]
			,tblTrans.[City]
			,tblTrans.[ServiceProvider]
			,tblTrans.[ISP]
			,tblTrans.[Browser]
			,tblTrans.[PluginID]
			,tblTrans.[Flagged]
			,tblTrans.[RuleSetID]
			,tblTrans.[ResultType]
			,tblTrans.[RuleVersionID]
			,tblTrans.[URL]
			,tblRule.[RuleName]
			,tblTrans.ActionResult
			,tblTrans.UserAgent
		FROM [dbo].[Transactions] tblTrans WITH (NOLOCK)' +  
		' ' + CASE 
				WHEN (@iAccount IN (1,2) AND @UserName <>'N/A') THEN ' INNER JOIN #tblAccounts tblAccount WITH (NOLOCK) ON tblTrans.[AccountID] = tblAccount.[AccountID]' 
				ELSE ' LEFT JOIN [dbo].[Accounts] tblAccount WITH (NOLOCK) ON tblTrans.[AccountID] = tblAccount.[AccountID]' 
			END + ' '+
			CASE 
				WHEN (@bDevice IN (1) AND @DeviceNo <>'N/A') THEN 'INNER JOIN #tblDevices tblDev ON tblTrans.[DeviceID] = tblDev.[DeviceID]' 
				ELSE ' LEFT JOIN #tblDevices tblDev ON tblTrans.[DeviceID] = tblDev.[DeviceID]' 
			END
			 + '
		LEFT JOIN [rmt].[RuleSettings] tblRule WITH (NOLOCK) 
		ON tblTrans.RuleSetID = tblRule.[RuleSetID]'		
		+ @SQL_COND
		+ ' ORDER BY RowNum ) A 
		WHERE A.RowNum >=' + CAST(@RowStart AS NVARCHAR(10)) + ' AND A.RowNum <=' + CAST(@RowEnd AS NVARCHAR(10)); 
	
	EXEC sp_executesql @sqlTempTbl;
	 
	--check existing search device
	IF (@bDevice NOT IN (1) )	--get device info by using OPENQUERY
	BEGIN
		CREATE TABLE #deviceIdTmp(DeviceId INT);

		INSERT INTO #deviceIdTmp(DeviceId)
		SELECT DISTINCT DeviceID FROM #tableTmp	WITH (NOLOCK); 

		DECLARE @DeviceIds NVARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS NVARCHAR(50))
		FROM #deviceIdTmp WITH (NOLOCK); 

		INSERT #tblDevices 
		EXEC dbo.sp_DeviceInfoBylistDeviceID @DeviceIds = @DeviceIds
			,@subscriberId = @subscriberId;

		DROP TABLE #deviceIdTmp;
	END;

	SELECT tmp.RowNum
		,tmp.TransID
		,tmp.AccountID
		,tmp.UserName
		,tmp.UserName2
		,tmp.DeviceID
		,tmp.SubscriberID
		,tmp.TransDate
		,tmp.ActionName
		,tmp.IP
		,tmp.Country
		,tmp.CountryCode
		,tmp.Region
		,tmp.City
		,tmp.ServiceProvider
		,tmp.ISP
		,tmp.Browser
		,tmp.PluginID
		,tmp.Flagged
		,tmp.RuleSetID
		,tmp.ResultType
		,tmp.RuleVersionID
		,tmp.URL
		,tmp.RuleName
		,tmp.ActionResult
		,tmp.UserAgent
		,ISNULL(tblDevice.DeviceNo, 'N/A') AS DeviceNo
		,ISNULL(tblDevice.OSName, 'N/A') AS OSName

	FROM #tableTmp tmp WITH (NOLOCK) 
		LEFT JOIN #tblDevices AS tblDevice 
		ON tmp.DeviceId = tblDevice.DeviceId;

	DROP TABLE #tableTmp;
	DROP TABLE #tblAccounts;
	DROP TABLE #tblDevices;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_HisTransactions] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_HisTransactions] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_HisTransactions] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_HisTransactions_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_HisTransactions_xtest] 
	@PageSize			INT = 50
	,@PageIndex			INT = 1
	,@TransDate_From	DATETIME = NULL
	,@TransDate_To		DATETIME = NULL
	,@bDevice			BIT = 0
	,@DeviceNo			NVARCHAR(50) = ''
	,@iAccount			TINYINT = 0
	,@UserName			NVARCHAR(50) = ''
	,@bIP				BIT = 0
	,@IP				NVARCHAR(20) = ''
	,@bCountry			BIT = 0
	,@CountryCode		NVARCHAR(20) = ''
	,@bRegion			BIT = 0
	,@Region			NVARCHAR(128) = ''
	,@bCity				BIT = 0
	,@City				NVARCHAR(128) = ''
	,@Actions			NVARCHAR(800) = ''
	,@TotalPages		INT = 0 OUTPUT
	,@TotalRows			INT = 0 OUTPUT
AS

/*
Created: 20130117@Tom
Task: Retrieve Search and filter all transaction report
  DB: FPS_SUB_99.
  
Revisions:
    -Bobby@20130606: Update validation of searching by device and account & setting default range of time is 24 latest hours
	-Hannah@20130808: Add report filer by action name 
	-Bobby@20140611: Update filter by N/A Device
	-Bobby@20141230: Fix bug - search for account exactly & refactor code
	-Tom@20150414: Allow Search Username2
	-Tom@20150614: Improve performance
	- 20160328@bobby.nguyen: #54919 - add more UserAgent info
	- 20200108@Thai: Update the length of data type - [Redmine: #126654]

Param's Explanation:  
	- @iAccount: 1 - partial; 2 - exactly
*/
BEGIN
	SET ARITHABORT ON;
	SET NOCOUNT ON;
	
	DECLARE @SubscriberId	INT
		,@deviceId			INT;

	DECLARE @SQL_COND		NVARCHAR(MAX)
		, @SQL_COUNT		NVARCHAR(MAX)
		, @dateTimeNow		DATETIME = GETDATE();		

	SELECT TOP (1) @SubscriberId = SubscriberID
	FROM dbo.Accounts WITH (NOLOCK)
	WHERE AccountID > 0;
 
	       
	IF(@TransDate_From IS NULL)
		SET @TransDate_From = DATEADD(hour,-24, @dateTimeNow);
	
	IF(@TransDate_To IS NULL)
		SET @TransDate_To = @dateTimeNow;
	
	SELECT @SQL_COND = ' WHERE tblTrans.[TransDate] >''' + CONVERT(NVARCHAR(50), @TransDate_From) + ''' AND tblTrans.[TransDate] < ''' + CONVERT(NVARCHAR(50), @TransDate_To) + '''';

	IF ( @bIP = 1) AND (LEN(@IP) > 0)
	BEGIN		
		SET @SQL_COND = @SQL_COND + ' AND tblTrans.[IP] = N''' + (@IP) + '''';
	END;

	IF ( @bCountry = 1) AND (LEN(@CountryCode) > 0)
	BEGIN
		SET @SQL_COND = @SQL_COND + ' AND tblTrans.[CountryCode] = N''' + (@CountryCode) + '''';
	END;

	IF ( @bRegion = 1) AND (LEN(@Region) > 0)
	BEGIN
		SET @SQL_COND = @SQL_COND + ' AND tblTrans.[Region] = N''' + (@Region) + '''';
	END;

	IF ( @bCity = 1) AND (LEN(@City) > 0)
	BEGIN
			SET @SQL_COND = @SQL_COND + ' AND tblTrans.[City] = N''' + @City + '''';
	END;	

	IF  (LEN(@Actions) > 0)
	BEGIN	
		DECLARE  @formatActionNames NVARCHAR(max);
		DECLARE @Actions_cont NVARCHAR(800) = '' 

		;WITH rptAction AS
			(
				SELECT ActionName
				FROM FPSRPT.FPS_RPT.dbo.rptActions WITH (NOLOCK)
				WHERE SubscriberID = @SubscriberId
				GROUP BY ActionName
			)
			SELECT @Actions_cont = COALESCE(@Actions_cont + ',', '') + convert(NVARCHAR(50),ISNULL(a.ActionName,'')) 
			FROM FPSRPT.FPS_Admin.dbo.Actions a WITH (NOLOCK)
				INNER JOIN rptAction rpt
				ON a.ActionName = rpt.ActionName
			WHERE a.IsActive = 1
			ORDER BY ActionID;

		IF LEN(@Actions_cont)>0 
		BEGIN
			SET @Actions_cont = SUBSTRING(@Actions_cont,2,1000);
		END;

		IF @Actions_cont <> @Actions
		BEGIN		
			SELECT @formatActionNames = COALESCE(@formatActionNames + ',''', '''') + CAST(Item AS NVARCHAR(50)) + ''''
				FROM dbo.SplitString(@Actions, ',');	
			SET @SQL_COND = @SQL_COND + ' AND tblTrans.[ActionName] IN ('+ @formatActionNames+ ')';		
		END;
	END;		
		
	CREATE TABLE #tblAccounts(AccountID INT, UserName NVARCHAR(50), UserName2 NVARCHAR(50));
	CREATE TABLE #tblDevices(DeviceID INT, DeviceNo NVARCHAR(50), OsName NVARCHAR(50));

	IF @iAccount = 2 
	BEGIN 
		IF NOT EXISTS(SELECT TOP 1 1 FROM dbo.Accounts WITH (NOLOCK) WHERE (UserName = @UserName) ) 
		BEGIN
			SELECT TOP 1 @UserName = UserName FROM dbo.Accounts WITH (NOLOCK) WHERE (UserName2 = @UserName);
		END;
	END;

	


	IF ( @iAccount IN (1,2) OR @bDevice = 1)-- = --> NO JOIN
	BEGIN
		IF (@UserName <> 'N/A' )
		BEGIN
			INSERT INTO #tblAccounts(AccountID, UserName, UserName2)
			SELECT AccountID, UserName, UserName2 FROM dbo.Accounts WITH (NOLOCK)
			WHERE 1 = (
					CASE WHEN @iAccount = 2 AND (UserName = @UserName) THEN 1 
					WHEN @iAccount = 1 AND UserName LIKE @UserName + '%' THEN 1 
					ELSE 0 END 
				);
		END;
				
		IF ( @bDevice = 1 AND @deviceNo <> 'N/A' ) -- if there is a device, add device condition into @SQL_COND
		BEGIN		
			DECLARE @osName NVARCHAR(50);	

			EXEC dbo.sp_DeviceInfoByNo @deviceNo = @deviceNo
				,@subscriberId	= @subscriberId
				,@deviceId		= @deviceId OUTPUT
				,@osName		= @osName OUTPUT;


			INSERT INTO #tblDevices(DeviceID, DeviceNo, OSName)
			VALUES (@deviceId,@DeviceNo,@osName);
			
		END;
	END;
		
	--search account N/A
	IF(@UserName='N/A')
	BEGIN
		SET @SQL_COND += ' AND (tblTrans.[AccountId] IS NULL OR tblTrans.[AccountId]=0)';	
	END;	
	--search device N/A
	IF(@deviceNo='N/A')
	BEGIN
		SET @SQL_COND += ' AND (tblTrans.[DeviceID] IS NULL OR tblTrans.[DeviceID]=0)';	
	END;
		
	SET @SQL_COUNT = 'SELECT  @TotalRows = COUNT(tblTrans.[TransID]) FROM [dbo].[Transactions] tblTrans WITH (NOLOCK)';
	SET @SQL_COUNT += CASE  
						WHEN (@iAccount IN (1, 2) AND @UserName <>'N/A') THEN ' INNER JOIN #tblAccounts tblAccount ON tblTrans.[AccountID] = tblAccount.[AccountID]' 
						ELSE '' 
					END;
	SET @SQL_COUNT += CASE  
						WHEN (@bDevice IN (1) AND @deviceNo <> 'N/A') THEN ' INNER JOIN #tblDevices tblDevice ON tblTrans.[DeviceID] = tblDevice.[DeviceID]' 
						ELSE '' 
					END;

	SET @SQL_COUNT += @SQL_COND;
	

	EXEC sp_executesql @SQL_COUNT, 
		N'@TotalRows INT OUT',@TotalRows OUTPUT;

	IF (@TotalRows = 0 )
		RETURN;

	

	DECLARE @RowStart BIGINT, @RowEnd BIGINT;
	--setting initial infor for the Total pages	
	IF (@TotalRows < @PageSize) 
		SET @PageSize = @TotalRows;
	--calculate total pages
	IF (@TotalPages = 0)
		SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END;

	SELECT @PageIndex = @PageIndex - 1, 
		@RowStart = @PageSize * @PageIndex + 1, 
		@RowEnd = @RowStart + @PageSize -1;
	
	--fetch data to table temp
	DECLARE @sqlTempTbl NVARCHAR(MAX); 
	
		--the below just for getting a structure

	SELECT TOP 0 
			CAST(NULL AS INT) AS RowNum,
			CAST(t.TransID AS INT) AS TransID,
			t.AccountID,
			CAST(NULL AS NVARCHAR(50)) AS UserName,
			CAST(NULL AS NVARCHAR(50)) AS UserName2,
			t.DeviceID,
			CAST(NULL AS NVARCHAR(50)) AS DeviceNo,
			CAST(NULL AS NVARCHAR(50)) AS OsName,
			t.SubscriberID,
			t.TransDate,
			t.ActionName,
			t.IP,
			t.Country,
			t.CountryCode,
			t.Region,
			t.City,
			t.ServiceProvider,
			t.ISP,
			t.Browser,
			t.PluginID,
			t.Flagged,
			t.RuleSetID,
			t.ResultType,
			t.RuleVersionID,
			t.URL,
			CAST(NULL AS NVARCHAR(150)) AS RuleName,
			t.ActionResult,
			t.UserAgent
	INTO  #tableTmp
	FROM dbo.Transactions t WITH(NOLOCK);

	SELECT @sqlTempTbl = N'INSERT INTO  #tableTmp( RowNum, TransID, AccountID, UserName, UserName2, DeviceID, DeviceNo, OsName, SubscriberID,TransDate, ActionName, IP, Country, CountryCode, Region, City, ServiceProvider, ISP, 
		Browser, PluginID, Flagged, RuleSetID, ResultType, RuleVersionID, URL,RuleName,ActionResult,UserAgent)
		SELECT A.* 
		FROM ( SELECT TOP ' + CONVERT(NVARCHAR(10),@RowEnd) + ' 
			ROW_NUMBER() OVER(ORDER BY tblTrans.TransDate DESC) AS RowNum
			,tblTrans.[TransID]
			,tblTrans.[AccountID]								
			,tblAccount.UserName
			,tblAccount.UserName2								
			,tblTrans.[DeviceID]
			,tblDev.[DeviceNo]
			,tblDev.[OSName]
			,tblTrans.[SubscriberID]
			,tblTrans.[TransDate]
			,tblTrans.[ActionName]
			,tblTrans.[IP]
			,tblTrans.[Country]
			,tblTrans.[CountryCode]
			,tblTrans.[Region]
			,tblTrans.[City]
			,tblTrans.[ServiceProvider]
			,tblTrans.[ISP]
			,tblTrans.[Browser]
			,tblTrans.[PluginID]
			,tblTrans.[Flagged]
			,tblTrans.[RuleSetID]
			,tblTrans.[ResultType]
			,tblTrans.[RuleVersionID]
			,tblTrans.[URL]
			,tblRule.[RuleName]
			,tblTrans.ActionResult
			,tblTrans.UserAgent
		FROM [dbo].[Transactions] tblTrans WITH (NOLOCK)' +  
		' ' + CASE 
				WHEN (@iAccount IN (1,2) AND @UserName <>'N/A') THEN ' INNER JOIN #tblAccounts tblAccount WITH (NOLOCK) ON tblTrans.[AccountID] = tblAccount.[AccountID]' 
				ELSE ' LEFT JOIN [dbo].[Accounts] tblAccount WITH (NOLOCK) ON tblTrans.[AccountID] = tblAccount.[AccountID]' 
			END + ' '+
			CASE 
				WHEN (@bDevice IN (1) AND @DeviceNo <>'N/A') THEN 'INNER JOIN #tblDevices tblDev ON tblTrans.[DeviceID] = tblDev.[DeviceID]' 
				ELSE ' LEFT JOIN #tblDevices tblDev ON tblTrans.[DeviceID] = tblDev.[DeviceID]' 
			END
			 + '
		LEFT JOIN [rmt].[RuleSettings] tblRule WITH (NOLOCK) 
		ON tblTrans.RuleSetID = tblRule.[RuleSetID]'		
		+ @SQL_COND
		+ ' ORDER BY RowNum ) A 
		WHERE A.RowNum >=' + CAST(@RowStart AS NVARCHAR(10)) + ' AND A.RowNum <=' + CAST(@RowEnd AS NVARCHAR(10)); 
	
	EXEC sp_executesql @sqlTempTbl;
	 
	--check existing search device
	IF (@bDevice NOT IN (1) )	--get device info by using OPENQUERY
	BEGIN
		CREATE TABLE #deviceIdTmp(DeviceId INT);

		INSERT INTO #deviceIdTmp(DeviceId)
		SELECT DISTINCT DeviceID FROM #tableTmp	WITH (NOLOCK); 

		DECLARE @DeviceIds NVARCHAR(MAX);
		SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS NVARCHAR(50))
		FROM #deviceIdTmp WITH (NOLOCK); 

		INSERT #tblDevices 
		EXEC dbo.sp_DeviceInfoBylistDeviceID @DeviceIds = @DeviceIds
			,@subscriberId = @subscriberId;

		DROP TABLE #deviceIdTmp;
	END;

	SELECT tmp.RowNum
		,tmp.TransID
		,tmp.AccountID
		,tmp.UserName
		,tmp.UserName2
		,tmp.DeviceID
		,tmp.SubscriberID
		,tmp.TransDate
		,tmp.ActionName
		,tmp.IP
		,tmp.Country
		,tmp.CountryCode
		,tmp.Region
		,tmp.City
		,tmp.ServiceProvider
		,tmp.ISP
		,tmp.Browser
		,tmp.PluginID
		,tmp.Flagged
		,tmp.RuleSetID
		,tmp.ResultType
		,tmp.RuleVersionID
		,tmp.URL
		,tmp.RuleName
		,tmp.ActionResult
		,tmp.UserAgent
		,ISNULL(tblDevice.DeviceNo, 'N/A') AS DeviceNo
		,ISNULL(tblDevice.OSName, 'N/A') AS OSName

	FROM #tableTmp tmp WITH (NOLOCK) 
		LEFT JOIN #tblDevices AS tblDevice 
		ON tmp.DeviceId = tblDevice.DeviceId;

	DROP TABLE #tableTmp;
	DROP TABLE #tblAccounts;
	DROP TABLE #tblDevices;
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_HisTransactions_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_HisTransactions_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_HisTransactions_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_LastestTransactions]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Rpt_LastestTransactions]
	@PageSize int=50 ,
	@PageIndex int=1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output,
	@duration INT = 0 OUTPUT
AS
/*
Created: 20130607@bobby
Task: Retrieve lastest transactions report by VIEWS
  DB: FPS_SUB_*
  
Revisions: 

*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @RowCount bigint
		,@MaxRow int = 1000
		,@IsSubTest BIT
		,@startTime DATETIME;

	DECLARE @tblDevice TABLE (
		DeviceId INT PRIMARY KEY
		,DeviceNo VARCHAR(50)
		,OSName VARCHAR(50)
		);

	SET @startTime = GETDATE();

	SELECT @RowCount = CONVERT(bigint, rows)
	FROM sys.sysindexes
	WHERE id = OBJECT_ID('Transactions')
	AND indid < 2;

	IF (@TotalRows = 0 OR @RowCount =0)
		RETURN;	

	SET @TotalRows = CASE WHEN @TotalRows > @MaxRow THEN @MaxRow 
						WHEN @TotalRows > @RowCount THEN @RowCount 
						ELSE @TotalRows END;
	SET @PageSize = CASE WHEN @PageSize > @TotalRows THEN @TotalRows 
						ELSE @PageSize END;
	SET @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END;

	SELECT TOP (1) @IsSubTest = IsTest
	FROM rmt.Subscribers s WITH (NOLOCK)
	WHERE SubscriberID = (
			SELECT TOP 1 SubscriberID
			FROM dbo.Accounts a WITH (NOLOCK)
			WHERE AccountID > 0
				AND SubscriberID > 0
			);


	SELECT t.*
		,a.UserName
		,a.UserName2
		,r.RuleName
	INTO #transTmp
	FROM dbo.Transactions t WITH(NOLOCK)
	LEFT JOIN dbo.Accounts a WITH (NOLOCK)	
		ON t.AccountID = a.AccountID 
	LEFT JOIN rmt.RuleSettings r WITH (NOLOCK)	
		ON t.RuleSetID = r.RuleSetID
	ORDER BY TransDate DESC
	OFFSET (@PageSize * (@PageIndex - 1)) ROWS
	FETCH NEXT @PageSize ROWS ONLY;

	IF (@IsSubTest = 1)
	BEGIN
		INSERT INTO @tblDevice (
			DeviceId
			,DeviceNo
			,OSName
			)
		SELECT DeviceId
			,DeviceNo
			,OSName
		FROM FPSDEV.FPS_DEV_TEST.dbo.DevMaster WITH (NOLOCK)
		WHERE DeviceID IN (
				SELECT DISTINCT DeviceID
				FROM #transTmp
				);
	END;
	ELSE IF (@IsSubTest = 0)
	BEGIN
		INSERT INTO @tblDevice (
			DeviceId
			,DeviceNo
			,OSName
			)
		SELECT DeviceId
			,DeviceNo
			,OSName
		FROM FPSDEV.FPS_DEV.dbo.DevMaster WITH (NOLOCK)
		WHERE DeviceID IN (
				SELECT DISTINCT DeviceID
				FROM #transTmp
				);
	END;

	SELECT t.*
		,ISNULL(d.DeviceNo, 'N/A') DeviceNo
		,ISNULL(d.OSName, 'N/A') OSName
	FROM #transTmp t
		LEFT JOIN @tblDevice d
		ON t.DeviceID = d.DeviceID
	ORDER BY t.TransDate DESC;

	DROP TABLE #transTmp;

	SET @duration = DATEDIFF(MS, @startTime, GETDATE());
END;
GO
GRANT EXECUTE ON [dbo].[Rpt_LastestTransactions] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_LastestTransactions] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_LastestTransactions] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Rpt_LastestTransactions_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Rpt_LastestTransactions_xtest]
	@PageSize int=50 ,
	@PageIndex int=1 ,
	@TotalPages int=0 output,
	@TotalRows int=0 output
AS
/*
Created: 20130607@bobby
Task: Retrieve lastest transactions report by VIEWS
  DB: FPS_SUB_*
  
Revisions: 20130701@hannah: use remote server
Param's Explanation:

*/
BEGIN
	SET NOCOUNT ON

	DECLARE @OffsetRow INT, @LimitRow INT, @MaxRow INT = 1000

	IF (@TotalRows = 0 )
		RETURN	

	--paging with VIEW
	DECLARE @TransDate DATETIME, @SubscriberId INT
	DECLARE @sqlView NVARCHAR(MAX), @CurDate DATETIME = GETDATE(),@ViewDate DATETIME = NULL, @SecondDiff INT = 0;
	DECLARE @ViewAction NVARCHAR(100)

	IF (EXISTS(SELECT TOP 1 1 FROM sys.views WITH (NOLOCK) WHERE name = 'VW_LatestTrans'))
	BEGIN
		SELECT TOP(1) @ViewDate = ViewDate FROM dbo.VW_LatestTrans			
		SELECT @ViewAction = N'ALTER VIEW dbo.VW_LatestTrans'			
		SELECT @SecondDiff = DATEDIFF(second, @ViewDate, @CurDate)
	END
	ELSE
	BEGIN 
		SELECT @ViewAction = N'CREATE VIEW dbo.VW_LatestTrans'			
	END
			
	IF (@ViewDate IS NULL OR @SecondDiff > 3)
	BEGIN
		SET ROWCOUNT @MaxRow;
		SELECT @TransDate = tblTrans.TransDate
		FROM [dbo].[Transactions] tblTrans WITH (NOLOCK)	
		WHERE tblTrans.TransDate IS NOT NULL
		ORDER BY tblTrans.TransDate DESC
		
		SET @sqlView = @ViewAction + N' AS SELECT VW.*, ''' + CONVERT(VARCHAR(19), @CurDate, 120) + ''' AS ViewDate 
							FROM (
							SELECT ROW_NUMBER() OVER (ORDER BY tblTrans.TransDate DESC) AS RowNum
							,tblTrans.[TransID]
							,tblTrans.[AccountID]
							,tblAccount.UserName
							,tblAccount.UserName2
							,tblTrans.[DeviceID]
							,tblTrans.[SubscriberID]
							,tblTrans.[TransDate]
							,tblTrans.[ActionName]
							,tblTrans.[IP]
							,tblTrans.[Country]
							,tblTrans.[CountryCode]
							,tblTrans.[Region]
							,tblTrans.[City]
							,tblTrans.[ServiceProvider]
							,tblTrans.[ISP]
							,tblTrans.[Browser]
							,tblTrans.[PluginID]
							,tblTrans.[Flagged]
							,tblTrans.[RuleSetID]
							,tblTrans.[ResultType]
							,tblTrans.[RuleVersionID]
							,tblTrans.[URL]
							,tblRule.[RuleName]
						FROM [dbo].[Transactions] tblTrans WITH (NOLOCK)	
						LEFT JOIN [dbo].[Accounts] tblAccount WITH (NOLOCK)		
							ON tblTrans.[AccountID] = tblAccount.[AccountID]
						LEFT JOIN [rmt].[RuleSettings] tblRule WITH (NOLOCK)	
							ON tblTrans.RuleSetID = tblRule.[RuleSetID]
						WHERE transDate >= ''' + CONVERT(VARCHAR(19), @transDate, 120) + ''') AS VW'

		EXEC sp_executesql @sqlView
		SET ROWCOUNT 0
	END
	--select subscriber ID
	SELECT TOP(1) @SubscriberId=SubscriberId 
	FROM dbo.Accounts WITH (NOLOCK)	
	WHERE AccountID > 0
	
	--start page setting
	SELECT @MaxRow=MAX(RowNum)	
	FROM dbo.VW_LatestTrans WITH (NOLOCK)	
	
	IF (@TotalRows > @MaxRow) 
		SET @TotalRows = @MaxRow
	
	IF (@TotalRows < @PageSize) 
		SET @PageSize = @TotalRows;	
		
	SELECT @OffsetRow = (@PageSize * (@PageIndex - 1)) + 1, 
		@LimitRow = (@OffsetRow - 1) + @PageSize;
		
	SELECT @TotalPages = @TotalRows / @PageSize + CASE WHEN @TotalRows%@PageSize > 0 THEN 1 ELSE 0 END
	--end page setting
	
	--start DISTINCT device
	CREATE TABLE #deviceIdTmp(DeviceId INT);
	INSERT INTO #deviceIdTmp(DeviceId)
	SELECT DISTINCT DeviceId FROM dbo.VW_LatestTrans AS VW	
	WHERE VW.RowNum BETWEEN @OffsetRow AND @LimitRow
	--COALESCE device ID
	DECLARE @DeviceIds VARCHAR(1000)
	SELECT @DeviceIds = COALESCE(@DeviceIds + ',', '') + CAST(DeviceId AS varchar(50))
	FROM #deviceIdTmp
	--end DISTINCT device

	CREATE TABLE #spResult 
	(
		DeviceID INT,
		DeviceNo NVARCHAR(50),
		OSName   NVARCHAR(50)
	);
	-- Get the result set of the SP into the temp table.
	select @SubscriberId
	--INSERT #spResult                                                                
	--EXEC [dbo].[sp_DeviceInfoBylistDeviceID] @DeviceIds=@DeviceIds, @subscriberId=@SubscriberId

	SELECT VW.*
			, ISNULL(tblDevice.DeviceNo, 'N/A') AS  DeviceNo
			, ISNULL(tblDevice.OSName, 'N/A') AS OSName
		FROM dbo.VW_LatestTrans AS VW		
		LEFT JOIN  #spResult  AS tblDevice	
			ON VW.DeviceId = tblDevice.DeviceId
		WHERE VW.RowNum BETWEEN CAST(@OffsetRow AS VARCHAR(5))  AND  CAST(@LimitRow AS VARCHAR(5))  ORDER BY VW.RowNum
	
		--select @JOIN_QUERY

	DROP TABLE #spResult 
	
	DROP TABLE #deviceIdTmp
END














GO
GRANT EXECUTE ON [dbo].[Rpt_LastestTransactions_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_LastestTransactions_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Rpt_LastestTransactions_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoById]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeviceInfoById]
(
	@deviceId int, 
	@subscriberId int = 0,
	@deviceNo nvarchar(50) = 'N/A' output,
	@osName nvarchar(50) = 'N/A' output
)
AS
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM dbo.Accounts WITH (NOLOCK) WHERE AccountID > 0;
	
	IF (@subscriberId > 0)
	BEGIN	
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit;
		EXEC dbo.admin_get_subdbinfo @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT;

		DECLARE @rmtQuery nvarchar(1000);	 
	
		IF(@IsOnMain=0)
		BEGIN
			SET @rmtQuery = N'SELECT @deviceNo=DeviceNo, @osName = OsName
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT TOP(1) DeviceNo, OsName FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID = ' + CAST(@deviceId AS NVARCHAR(50)) + ''')';
		END;		
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT TOP(1) @deviceNo=DeviceNo, @osName = OsName
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID = '+CAST(@deviceId AS NVARCHAR(50)) +'';
		END;
	
		DECLARE @param nvarchar(500) =N'@deviceNo nvarchar(50) out, @osName nvarchar(50) out';
		EXEC sp_executesql @rmtQuery, @param, @deviceNo=@deviceNo output, @osName=@osName output;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoById_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeviceInfoById_xtest]
(
	@deviceId int, 
	@subscriberId int = 0,
	@deviceNo nvarchar(50) = 'N/A' output,
	@osName nvarchar(50) = 'N/A' output
)
AS
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM dbo.Accounts WITH (NOLOCK) WHERE AccountID > 0
	
	IF (@subscriberId > 0)
	BEGIN	
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit
																																																																																																																																EXEC [dbo].[admin_get_subdbinfo_xtest] @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT

		DECLARE @rmtQuery nvarchar(1000)	 
	
		IF(@IsOnMain=0)
		BEGIN
			SET @rmtQuery = N'SELECT @deviceNo=DeviceNo, @osName = OsName
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT TOP(1) DeviceNo, OsName FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID = ' + CAST(@deviceId AS NVARCHAR(50)) + ''')'
		END		
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT TOP(1) @deviceNo=DeviceNo, @osName = OsName
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID = '+CAST(@deviceId AS NVARCHAR(50)) +''
		END
	
		DECLARE @param nvarchar(500) =N'@deviceNo nvarchar(50) out, @osName nvarchar(50) out'
		EXEC sp_executesql @rmtQuery, @param, @deviceNo=@deviceNo output, @osName=@osName output
	END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceID]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[sp_DeviceInfoBylistDeviceID]
						@DeviceIds			NVARCHAR(MAX)
					,	@subscriberId		INT				= 0
AS
/*
	Creator:	20130117@Bobby
	Task:		Add remote DB device
	Database:	FPSLICALL.FPS_SUB_xxx

	Revisions:
		- 20140528@Bobby:	Check max length when calling OPENQUERY
		- 20190926@Billy:	Remove the incorrect usage of dynamic query - [Redmine: #117671]
*/
BEGIN;
	SET NOCOUNT ON;

	DECLARE	@SubId		INT
		,	@SubDB		NVARCHAR(128)
		,	@DeviceSvr	NVARCHAR(128)
		,	@DeviceDB	NVARCHAR(128)
		;

	DECLARE	@Query		NVARCHAR(MAX)
		,	@Param		NVARCHAR(MAX)
		,	@Execute	NVARCHAR(MAX)
		;

	SELECT	@SubId = @subscriberId
		,	@SubDB = DB_NAME()
		;

	IF	@SubId = 0
	BEGIN;
		EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo
					@SubscriberDB	= @SubDB
				,	@DeviceSvr		= @DeviceSvr		OUTPUT
				,	@DeviceDB		= @DeviceDB			OUTPUT
				;
	END;
	ELSE
	BEGIN;
		EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo
					@SubscriberId	= @SubId
				,	@DeviceSvr		= @DeviceSvr		OUTPUT
				,	@DeviceDB		= @DeviceDB			OUTPUT
				;
	END;

	SELECT	@Query = N'';
	SELECT	@Query += N'\
EXECUTE	[~~Server~~].[~~Database~~].dbo.Device_GetDeviceListInfo @DeviceIds = @DeviceIds;
';

	SELECT	@Param = N'';
	SELECT	@Param += N'@DeviceIds NVARCHAR(MAX)';

	SELECT	@Execute = REPLACE(REPLACE(@Query, N'~~Server~~', @DeviceSvr), N'~~Database~~', @DeviceDB);

	EXECUTE	sys.sp_executesql @Execute, @Param, @DeviceIds;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS]
(
	@DeviceIds NVARCHAR(MAX), 
	@subscriberId int = 0
)
AS
/*
	Created: 20130117@Bobby
	Task: Add remote DB device
		DB: FPS_SUB
			
	Revisions:
		- 20140528@bobby: check max length when calling OPENQUERY
	Param's Explanation:  
		
	*/ 
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0;

	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit;
		EXEC dbo.admin_get_subdbinfo @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT;

		--select @IsOnMain

		DECLARE @rmtQuery nvarchar(max)	, @maxDevice INT;
		SELECT @maxDevice = COUNT(1) FROM dbo.SplitString(@DeviceIds, ',');

		IF(@IsOnMain=0 AND @maxDevice < 300) -- check max length of deviceIds
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT DeviceID, DeviceNo FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID IN (' + ISNULL(@DeviceIds,'0') +')'')';
		END;
		ELSE -- call via linkedserver
		BEGIN 
			IF(@IsOnMain=0) --add prefix linked server
				SET @FPSDevice = @LinkedDevice + '.' + @FPSDevice;

			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM ' + @FPSDevice + '.[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID IN (' + ISNULL(@DeviceIds,'0') +')';	
		END;
		EXEC sp_executesql @rmtQuery;
		--select @rmtQuery
	END; 
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceID_withoutOS_xtest]
(
	@DeviceIds NVARCHAR(MAX), 
	@subscriberId int = 0
)
AS
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0

	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit
																																																																																																																																EXEC [dbo].[admin_get_subdbinfo_xtest] @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT

		--select @IsOnMain

		DECLARE @rmtQuery nvarchar(max)	 

		IF(@IsOnMain=0)
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT DeviceID, DeviceNo FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID IN (' + ISNULL(@DeviceIds,'0') +')'')'
		END
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID IN (' + ISNULL(@DeviceIds,'0') +')'	
		END
		EXEC sp_executesql @rmtQuery
		--select @rmtQuery
	END 
END














GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceID_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceID_xtest]
(
	@DeviceIds NVARCHAR(max), 
	@subscriberId int = 0
)
AS
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0
		
	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit
																																																																																																																																EXEC [dbo].[admin_get_subdbinfo_xtest] @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT

		DECLARE @rmtQuery nvarchar(max)	 

		IF(@IsOnMain=0)
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo, OsName
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT DeviceID, DeviceNo, OsName FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID IN (' + ISNULL(@DeviceIds,0) +')'')'
		END
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo, OsName
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceID IN (' + ISNULL(@DeviceIds,0) +')'	
		END
		EXEC sp_executesql @rmtQuery
		--select @rmtQuery
	END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceIDSeen]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceIDSeen]
(
	@DeviceIds NVARCHAR(max), 
	@subscriberId int = 0
)
AS
/*
	Created: 20130117@Bobby
	Task: Add remote DB device
		DB: FPS_SUB
			
	Revisions:
		- 20140528@bobby: check max length when calling OPENQUERY
	Param's Explanation:  
		
	*/ 
BEGIN

	IF(@subscriberId=0)
	SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0; 

	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit;
		EXEC dbo.admin_get_subdbinfo @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT;

		DECLARE @rmtQuery nvarchar(max)
			, @maxDevice INT;
		SELECT @maxDevice = COUNT(1) FROM dbo.SplitString(@DeviceIds, ',');
	
		IF(@IsOnMain=0 AND @maxDevice < 300) -- check max length of deviceIds
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo, FirstSeenDate
							FROM OPENQUERY([' + @LinkedDevice + '],''SELECT m.DeviceID, m.DeviceNo, c.FirstSeenDate 
							FROM ' + @FPSDevice + '.dbo.DevMaster m WITH (NOLOCK) 
							INNER JOIN ' + @FPSDevice + '.dbo.DevCaptureDates c ON m.DeviceId=c.DeviceId 
							WHERE m.DeviceId IN(' + @DeviceIds + ') 
								AND c.SubscriberID=' + CAST(@subscriberId AS varchar(20)) + ''')';
		END;
		ELSE -- call via linkedserver
		BEGIN 
			IF(@IsOnMain=0) --add prefix linked server
				SET @FPSDevice = @LinkedDevice + '.' + @FPSDevice;

			SET @rmtQuery = N'SELECT m.DeviceID, m.DeviceNo, c.FirstSeenDate
							FROM ' + @FPSDevice + '.dbo.DevMaster m WITH (NOLOCK) 
							INNER JOIN ' + @FPSDevice + '.dbo.DevCaptureDates c ON m.DeviceId=c.DeviceId 
							WHERE m.DeviceId IN(' + @DeviceIds + ') 
								AND c.SubscriberID=' + CAST(@subscriberId AS varchar(20)); 	
		END;
		--SELECT @rmtQuery
		EXEC sp_executesql @rmtQuery;
		--select @rmtQuery
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceIDSeen_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceIDSeen_xtest]
(
	@DeviceIds NVARCHAR(max), 
	@subscriberId int = 0
)
AS
BEGIN

	IF(@subscriberId=0)
	SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0 

	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit
																																																																																																																																EXEC [dbo].[admin_get_subdbinfo_xtest] @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT

		DECLARE @rmtQuery nvarchar(max)
		--SELECT @IsOnMain
	
		IF(@IsOnMain=0)
		BEGIN 
			SET @rmtQuery = N'SELECT DeviceID, DeviceNo, FirstSeenDate
							FROM OPENQUERY([' + @LinkedDevice + '],''SELECT m.DeviceID, m.DeviceNo, c.FirstSeenDate 
							FROM ' + @FPSDevice + '.dbo.DevMaster m WITH (NOLOCK) 
							INNER JOIN ' + @FPSDevice + '.dbo.DevCaptureDates c ON m.DeviceId=c.DeviceId 
							WHERE m.DeviceId IN(' + @DeviceIds + ') 
								AND c.SubscriberID=' + CAST(@subscriberId AS varchar(20)) + ''')'
		END
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT m.DeviceID, m.DeviceNo, c.FirstSeenDate
							FROM ' + @FPSDevice + '.dbo.DevMaster m WITH (NOLOCK) 
							INNER JOIN ' + @FPSDevice + '.dbo.DevCaptureDates c ON m.DeviceId=c.DeviceId 
							WHERE m.DeviceId IN(' + @DeviceIds + ') 
								AND c.SubscriberID=' + CAST(@subscriberId AS varchar(20)) 	
		END
		--SELECT @rmtQuery
		EXEC sp_executesql @rmtQuery
		--select @rmtQuery
	END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceNo_withoutOS]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceNo_withoutOS]
(
	@DeviceNos NVARCHAR(max), 
	@subscriberId int = 0
)
AS
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0;
	IF (@subscriberId > 0)
	BEGIN		
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit;
		EXEC dbo.admin_get_subdbinfo @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT;

		DECLARE @rmtQuery nvarchar(max), @formatDeviceNos nvarchar(max), @maxLen int;	 
		SELECT @maxLen = COUNT(1) FROM dbo.SplitString(@deviceNos, ',');

		IF(@IsOnMain=0 AND @maxLen < 150) --check maxlength in OPENQUERY 8000
		BEGIN 
			SELECT @formatDeviceNos = COALESCE(@formatDeviceNos + ',''''', '''''') + CAST(Item AS varchar(50)) + ''''''
			FROM dbo.SplitString(@deviceNos, ',');

			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT DeviceID, DeviceNo FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo IN (' + ISNULL(@formatDeviceNos,'0') +')'')';
		END;
		ELSE
		BEGIN 
			SELECT @formatDeviceNos = COALESCE(@formatDeviceNos + ',''', '''') + CAST(Item AS varchar(50)) + ''''
			FROM dbo.SplitString(@deviceNos, ',');

			IF(@IsOnMain=0) --add prefix linked server
				SET @FPSDevice = @LinkedDevice + '.' + @FPSDevice;

			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM ' + @FPSDevice + '.[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo IN (' + ISNULL(@formatDeviceNos ,'0') +')';	
		END;
	
		EXEC sp_executesql @rmtQuery;
		--select @rmtQuery
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoBylistDeviceNo_withoutOS_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeviceInfoBylistDeviceNo_withoutOS_xtest]
(
	@DeviceNos NVARCHAR(max), 
	@subscriberId int = 0
)
AS
BEGIN
	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM Accounts WITH (NOLOCK) WHERE AccountID > 0
	IF (@subscriberId > 0)
	BEGIN		
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit
																																																																																																																																EXEC [dbo].[admin_get_subdbinfo_xtest] @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT

		DECLARE @rmtQuery nvarchar(max), @formatDeviceNos nvarchar(max), @maxLen int	 
		SELECT @maxLen = COUNT(1) FROM dbo.SplitString(@deviceNos, ',')

		IF(@IsOnMain=0 AND @maxLen < 150) --check maxlength in OPENQUERY 8000
		BEGIN 
			SELECT @formatDeviceNos = COALESCE(@formatDeviceNos + ',''''', '''''') + CAST(Item AS varchar(50)) + ''''''
			FROM dbo.SplitString(@deviceNos, ',')

			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT DeviceID, DeviceNo FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo IN (' + ISNULL(@formatDeviceNos,'0') +')'')'
		END
		ELSE
		BEGIN 
			SELECT @formatDeviceNos = COALESCE(@formatDeviceNos + ',''', '''') + CAST(Item AS varchar(50)) + ''''
			FROM dbo.SplitString(@deviceNos, ',')

			IF(@IsOnMain=0) --add prefix linked server
				SET @FPSDevice = @LinkedDevice + '.' + @FPSDevice

			SET @rmtQuery = N'SELECT DeviceID, DeviceNo
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo IN (' + ISNULL(@formatDeviceNos ,'0') +')'	
		END
	
		EXEC sp_executesql @rmtQuery
		--select @rmtQuery
	END
END














GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoByNo]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DeviceInfoByNo]
(
	@deviceNo nvarchar(50), 
	@subscriberId int = 0,
	@deviceId bigint = 0 output,
	@osName nvarchar(50) = 'N/A' output
)
AS
BEGIN

	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM dbo.Accounts WITH (NOLOCK) WHERE AccountID > 0;

	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit;
		EXEC dbo.admin_get_subdbinfo @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT;

		DECLARE @rmtQuery nvarchar(1000);	 
	
		IF(@IsOnMain=0)
		BEGIN
			SET @rmtQuery = N'SELECT @deviceID=DeviceID, @osName = OsName
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT TOP(1) DeviceID, OsName FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo = ''''' + @deviceNo + ''''''')';
		END;
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT TOP(1) @deviceId=DeviceID, @osName = OsName
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo = ''' + @deviceNo + '''';
		END;
		DECLARE @param nvarchar(500) =N'@deviceId int out, @osName nvarchar(50) out';
		EXEC sp_executesql @rmtQuery, @param, @deviceId=@deviceId output, @osName=@osName output;

		--select @rmtQuery
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_DeviceInfoByNo_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_DeviceInfoByNo_xtest]
(
	@deviceNo nvarchar(50), 
	@subscriberId int = 0,
	@deviceId bigint = 0 output,
	@osName nvarchar(50) = 'N/A' output
)
AS
BEGIN

	IF(@subscriberId=0)
		SELECT TOP 1 @subscriberId= SubscriberId FROM dbo.Accounts WITH (NOLOCK) WHERE AccountID > 0

	IF (@subscriberId > 0)
	BEGIN
		DECLARE @LinkedDevice varchar(100), @FPSDevice varchar(100), @IsOnMain bit
																																																																																																																																EXEC [dbo].[admin_get_subdbinfo_xtest] @subscriberId=@subscriberId
		, @LinkedDevice=@LinkedDevice OUTPUT
		, @FPSDevice=@FPSDevice OUTPUT
		, @IsOnMain=@IsOnMain OUTPUT

		DECLARE @rmtQuery nvarchar(1000)	 
	
		IF(@IsOnMain=0)
		BEGIN
			SET @rmtQuery = N'SELECT @deviceID=DeviceID, @osName = OsName
			FROM OPENQUERY([' + @LinkedDevice + '], ''SELECT TOP(1) DeviceID, OsName FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo = ''''' + @deviceNo + ''''''')'
		END
		ELSE
		BEGIN 
			SET @rmtQuery = N'SELECT TOP(1) @deviceId=DeviceID, @osName = OsName
			FROM [' + @FPSDevice + '].[dbo].[DevMaster] WITH (NOLOCK)	
			WHERE DeviceNo = ''' + @deviceNo + ''''
		END
		DECLARE @param nvarchar(500) =N'@deviceId int out, @osName nvarchar(50) out'
		EXEC sp_executesql @rmtQuery, @param, @deviceId=@deviceId output, @osName=@osName output

		--select @rmtQuery
	END
END














GO
/****** Object:  StoredProcedure [dbo].[Task_CollectArchivingAccounts_NoEvidences]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE	[dbo].[Task_CollectArchivingAccounts_NoEvidences]
AS
/*
	Creator:	20191024@Billy
	Task:		Collect accounts that meet conditions for archiving - Scenario 1 - [Redmine: #109131]
	Database:	FPSLICALL

	Revisions:
		- 20191024@Billy:	Initial - [Redmine: #109131]
*/
BEGIN;
	SET NOCOUNT ON;

	DECLARE	@SubscriberId	INT
		,	@SubscriberDB	NVARCHAR(128)
		,	@Prefix			NVARCHAR(30)
		,	@LimitDate		DATETIME
		;

	DECLARE	@EvidenceQuery	NVARCHAR(MAX)
		,	@EvidenceParam	NVARCHAR(MAX)
		;

	DECLARE	@Evidences AS TABLE (
				ID				INT				IDENTITY(1,1)
			,	AccountId		INT
			,	LevelId			TINYINT
			,	PRIMARY KEY CLUSTERED (AccountId, ID)
			);


SELECT	@EvidenceQuery = N'';
SELECT	@EvidenceQuery += N'\
SELECT	es.ItemId, es.LevelID
FROM	dbo.EvidenceSub AS es WITH (NOLOCK)
WHERE	es.ItemType = 0
	AND	es.SubscriberId = @SubscriberId;
';

	SELECT	@EvidenceParam = N'';
	SELECT	@EvidenceParam += N'@SubscriberId INT';

	SELECT	@SubscriberDB = DB_NAME()
		,	@LimitDate = DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()) - 6, 0)
		;

	EXECUTE	FPSADMIN.FPS_ADMIN.dbo.Admin_GetSubscriberDBInfo @SubscriberId = @SubscriberId OUTPUT, @SubscriberDB = @SubscriberDB, @Prefix = @Prefix OUTPUT;

	IF	ISNULL(@SubscriberId, 0) <= 0
		RETURN;

	INSERT INTO	@Evidences (AccountId, LevelId)
	EXECUTE	FPSADMIN.FPS_EVI.sys.sp_executesql @EvidenceQuery, @EvidenceParam, @SubscriberId;

	IF	ISNULL(@Prefix, N'') <> N''
	-- Logic for subscribers that have prefix: prefix + UserName = username2@OW; UserName2 = username@OW
	BEGIN;
		INSERT INTO	FPS_TASK.dbo.FPS_ArchivingAccounts (SubscriberID, AccountID, Scenario)
		SELECT	@SubscriberId, acc.AccountId, 1
		FROM	dbo.Accounts AS acc WITH (NOLOCK)
		WHERE	NOT EXISTS (SELECT 1 FROM @Evidences AS _evi WHERE _evi.AccountId = acc.AccountID)
			AND	NOT EXISTS (SELECT 1 FROM dbo.Transactions AS _tran WITH (NOLOCK) WHERE _tran.AccountID = acc.AccountID)
			AND	NOT EXISTS (SELECT 1 FROM FPS_TASK.dbo.OW_Customers AS _cust WITH (NOLOCK) WHERE _cust.username = CAST(acc.UserName2 AS VARCHAR(50)))
			AND	NOT EXISTS (SELECT 1 FROM FPS_TASK.dbo.OW_Customers AS _cust WITH (NOLOCK) WHERE _cust.username2 = CAST(@Prefix + acc.UserName AS VARCHAR(50)))
			AND	acc.CreatedDate < @LimitDate;
	END;
	ELSE
	-- Logic for subscribers that don't have prefix: UserName = username@OW => UserName2 = username2@OW; UserName = username2@OW => UserName2 = username@OW
	BEGIN;
		INSERT INTO	FPS_TASK.dbo.FPS_ArchivingAccounts (SubscriberID, AccountID, Scenario)
		SELECT	@SubscriberId, acc.AccountId, 1
		FROM	dbo.Accounts AS acc WITH (NOLOCK)
		WHERE	NOT EXISTS (SELECT 1 FROM @Evidences AS _evi WHERE _evi.AccountId = acc.AccountID)
			AND	NOT EXISTS (SELECT 1 FROM dbo.Transactions AS _tran WITH (NOLOCK) WHERE _tran.AccountID = acc.AccountID)
			AND	NOT EXISTS (SELECT 1 FROM FPS_TASK.dbo.OW_Customers AS _cust WITH (NOLOCK) WHERE _cust.username = CAST(acc.UserName AS VARCHAR(50)))
			AND	NOT EXISTS (SELECT 1 FROM FPS_TASK.dbo.OW_Customers AS _cust WITH (NOLOCK) WHERE _cust.username = CAST(acc.UserName2 AS VARCHAR(50)))
			AND	NOT EXISTS (SELECT 1 FROM FPS_TASK.dbo.OW_Customers AS _cust WITH (NOLOCK) WHERE _cust.username2 = CAST(acc.UserName AS VARCHAR(50)))
			AND	NOT EXISTS (SELECT 1 FROM FPS_TASK.dbo.OW_Customers AS _cust WITH (NOLOCK) WHERE _cust.username2 = CAST(acc.UserName2 AS VARCHAR(50)))
			AND	acc.CreatedDate < @LimitDate;
	END;
END;
GO
/****** Object:  StoredProcedure [dbo].[Total_GetAccountPerDevice]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Total_GetAccountPerDevice]
	@deviceNo nvarchar(50),
	@transDate datetime
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Count total account per device
DB: FPS_SUB
  
Revisions: 20130701@Hannah: use remote server
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	DECLARE @deviceId int =0, @total int =0;

	EXEC dbo.sp_DeviceInfoByNo 
	@deviceNo=@deviceNo, 
	@deviceId=@deviceId output;

	IF(@deviceId > 0)
	BEGIN
		SELECT @total=COUNT(DISTINCT ass.AccountID) FROM dbo.Associations AS ass (NOLOCK)
		WHERE ass.DeviceID=@deviceId
			AND ass.LastAccessedDate >= @transDate;
	END;
	SELECT @total;
END;
GO
GRANT EXECUTE ON [dbo].[Total_GetAccountPerDevice] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Total_GetAccountPerDevice] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Total_GetAccountPerDevice] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Total_GetAccountPerDevice_xtest]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Total_GetAccountPerDevice_xtest]
	@deviceNo nvarchar(50),
	@transDate datetime
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Count total account per device
DB: FPS_SUB
  
Revisions: 20130701@Hannah: use remote server
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON

	DECLARE @deviceId int =0, @total int =0

																																																																EXEC [dbo].[sp_DeviceInfoByNo_xtest] 
	@deviceNo=@deviceNo, 
	@deviceId=@deviceId output

	IF(@deviceId > 0)
	BEGIN
		SELECT @total=COUNT(DISTINCT ass.AccountID) FROM dbo.Associations AS ass (NOLOCK)
		WHERE ass.DeviceID=@deviceId
			AND ass.LastAccessedDate >= @transDate
	END
	SELECT @total
END














GO
GRANT EXECUTE ON [dbo].[Total_GetAccountPerDevice_xtest] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Total_GetAccountPerDevice_xtest] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Total_GetAccountPerDevice_xtest] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[Total_GetDevicePerAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Total_GetDevicePerAccount]
	@username nvarchar(50),
	@transDate datetime
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Count total device per account
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/
BEGIN

	SET NOCOUNT ON;

	DECLARE @accountId int =0, @total int =0;

	SELECT TOP 1 @accountId=Accounts.AccountID 
	FROM dbo.Accounts (NOLOCK)
	WHERE UserName=@username;

	IF(@accountId > 0)
	BEGIN

		SELECT @total=COUNT(DISTINCT ass.DeviceID) FROM dbo.Associations AS ass (NOLOCK)
		WHERE AccountID=@accountId
			AND LastAccessedDate >= @transDate;
	END;

	SELECT @total;
END;
GO
GRANT EXECUTE ON [dbo].[Total_GetDevicePerAccount] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Total_GetDevicePerAccount] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[Total_GetDevicePerAccount] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[UpdAccount]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdAccount]
	@accountId int, 
	@userName2 nvarchar(100)
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Upd account info
DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	IF(@accountId > 0 AND LEN(@userName2) > 1)
	BEGIN
		UPDATE dbo.Accounts WITH (ROWLOCK, UPDLOCK)
		SET UserName2=@userName2
		WHERE AccountID=@accountId;

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[UpdAccount] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[UpdAccount] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[UpdAssociation]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdAssociation]
	@Ass_Id int, 
	@ExceptionID int = NULL,
	@LastAccessedDate datetime = NULL
AS
/*
Created:20130120@Bobby
Task: Migrate fps site to SQL
- Upd association info
  DB: FPS_SUB
  
Revisions:
    
Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;
	IF(@Ass_Id >0)
	BEGIN
		
		UPDATE dbo.Associations  WITH (ROWLOCK, UPDLOCK)
		SET 
			LastAccessedDate=@LastAccessedDate, ExceptionID=@ExceptionID
		WHERE Ass_ID=@Ass_Id;

		RETURN;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[UpdAssociation] TO [fpsWinService] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUsername2]    Script Date: 6/9/2020 4:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUsername2]
	@accountID int,
	@username2 nvarchar(50)
AS
/*
	Created:20130225@kan.nguyen
	Task: update Username2 when its value is null or empty
	DB: FPS_SUB

	Revisions: 
		-20130703@hannah: add condition 
		-bobby@20140604: Check UserName is NULL to support filer index IX_UserName2
	Param's Explanation:
*/
BEGIN
	SET NOCOUNT ON;

	IF(@accountId > 0 AND LEN(@userName2) > 1)
	BEGIN
		SELECT AccountID
			, UserName
		INTO #tmpAcc
		FROM dbo.Accounts WITH (NOLOCK)
		WHERE UserName2 = @username2
			AND AccountID <> @accountID;

		IF(EXISTS(SELECT TOP 1 1 FROM #tmpAcc))
		BEGIN
			UPDATE a
			SET a.UserName2 = NULL
			FROM dbo.Accounts a WITH (ROWLOCK, UPDLOCK)
				INNER JOIN #tmpAcc t 
				ON a.AccountID = t.AccountID;
		END;

		UPDATE dbo.Accounts WITH (ROWLOCK, UPDLOCK)
		SET UserName2 = @username2
		WHERE AccountID = @accountID;

		DROP TABLE #tmpAcc;
	END;
END;
GO
GRANT EXECUTE ON [dbo].[UpdateUsername2] TO [fpsWebAdmin] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[UpdateUsername2] TO [fpsWebSub] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[UpdateUsername2] TO [fpsWinService] AS [dbo]
GO
USE [master]
GO
ALTER DATABASE [FPS_SUB_Winbox] SET  READ_WRITE 
GO
