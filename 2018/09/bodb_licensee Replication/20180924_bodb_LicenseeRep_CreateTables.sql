/*

	Task: Create tables for new bodb_Licensee (DB05x HA project - Migrate bodb_licensee to DBCUST for replicating to DB052/053)
	Server: DBCUST, DB053, DB06, DBTP

*/


USE [bodb_Licensee]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[UserPwd] [varchar](50) NOT NULL,
	[UserSalt] [varchar](50) NOT NULL,
	[UserRole] [varchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Status] [varchar](30) NOT NULL,
	[Creator] [int] NULL,
	[CreateDate] [datetime] NULL,
	[LicenseeName] [varchar](50) NULL,
	[isInternal] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [user_table]
) ON [user_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Systems]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Systems](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SystemName] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_Systems] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SystemLicensee]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLicensee](
	[SystemID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_SystemLicensee] PRIMARY KEY CLUSTERED 
(
	[SystemID] ASC,
	[LicenseeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
/****** Object:  Table [dbo].[Sport_Bettype_Reference]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sport_Bettype_Reference](
	[Bettype] [int] NOT NULL,
	[Sporttype] [smallint] NOT NULL,
	[isLicensee] [bit] NOT NULL,
	[BettypeRef] [int] NULL,
	[SporttypeRef] [smallint] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_Sport_Bettype_Reference] PRIMARY KEY CLUSTERED 
(
	[Bettype] ASC,
	[Sporttype] ASC,
	[isLicensee] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
/****** Object:  Table [dbo].[Resellers]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Resellers](
	[ResellerID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[ResellerName] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[ResellerType] [tinyint] NULL,
 CONSTRAINT [PK_Resellers] PRIMARY KEY CLUSTERED 
(
	[ResellerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ResellerName] ON [dbo].[Resellers] 
(
	[ResellerName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_index]
GO
/****** Object:  Table [dbo].[Product3rd]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product3rd](
	[Productid] [int] NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[ProductPrefix] [varchar](10) NULL,
	[OfferSingle] [bit] NULL,
 CONSTRAINT [PK_Product3rd] PRIMARY KEY CLUSTERED 
(
	[Productid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Product3rd_ProductName] ON [dbo].[Product3rd] 
(
	[ProductName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_index]
GO
/****** Object:  Table [dbo].[On_User]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[On_User](
	[custid] [int] NULL,
	[reload_time] [smalldatetime] NULL,
	[ServerID] [int] NOT NULL,
	[on_userid] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[IP] [varchar](15) NOT NULL,
	[iskickedout] [bit] NULL,
	[NetSessionID] [varchar](30) NOT NULL,
 CONSTRAINT [PK_On_User] PRIMARY KEY NONCLUSTERED 
(
	[on_userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [on_user_table]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [CIX_on_userid] ON [dbo].[On_User] 
(
	[on_userid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [on_user_table]
GO
CREATE NONCLUSTERED INDEX [IX_custid] ON [dbo].[On_User] 
(
	[custid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [on_user_index]
GO
CREATE NONCLUSTERED INDEX [IX_ServerID] ON [dbo].[On_User] 
(
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [on_user_index]
GO
/****** Object:  Table [dbo].[LrfDomain]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LrfDomain](
	[Id] [int] NOT NULL,
	[DomainName] [varchar](200) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Protocol] [varchar](10) NULL,
 CONSTRAINT [PK_LrfDomain] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseeUserFunctions]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeUserFunctions](
	[UserFuncionId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[UserId] [int] NOT NULL,
	[FunctionId] [int] NOT NULL,
	[LicenseeId] [int] NOT NULL,
 CONSTRAINT [PK_LicenseeUserFunction] PRIMARY KEY CLUSTERED 
(
	[UserFuncionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_LicenseeUserFunction] ON [dbo].[LicenseeUserFunctions] 
(
	[LicenseeId] ASC,
	[UserId] ASC,
	[FunctionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_index]
GO
/****** Object:  Table [dbo].[LicenseeUser]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeUser](
	[LicenseeID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[isActive] [bit] NOT NULL,
	[PageAccess] [varchar](500) NULL,
	[ModifyDate] [datetime] NULL,
	[ModifyBy] [int] NULL,
 CONSTRAINT [PK_LicenseeUser] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC,
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [user_table]
) ON [user_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseeSpecialCust]    Script Date: 09/23/2018 23:01:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeSpecialCust](
	[Licenseeid] [int] NOT NULL,
	[Custid] [int] NOT NULL,
	[ugroup] [varchar](3) NOT NULL,
	[ugroup_old] [varchar](3) NOT NULL,
	[modifyby] [int] NOT NULL,
	[modifydate] [datetime] NOT NULL,
 CONSTRAINT [PK_LicenseeSpecialCust] PRIMARY KEY CLUSTERED 
(
	[Custid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseeSourcedSetting]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeSourcedSetting](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[SiteName] [nvarchar](50) NULL,
	[LicenseeID] [int] NOT NULL,
	[SourcedLicenseeID] [int] NOT NULL,
	[SourcedCurrencyID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Roleid] [tinyint] NULL,
	[EffectiveDate] [smalldatetime] NULL,
	[SourcedId] [int] NULL,
	[SourcedSiteName] [nvarchar](50) NULL,
	[EndDate] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_LicenseeSourcedSetting_1] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [licensee_table]
GO
CREATE CLUSTERED INDEX [PK_LicenseeSourcedSetting] ON [dbo].[LicenseeSourcedSetting] 
(
	[LicenseeID] ASC,
	[SourcedId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
GO
/****** Object:  Table [dbo].[Licensees]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Licensees](
	[LicenseeID] [int] NOT NULL,
	[LicenseeName] [varchar](50) NOT NULL,
	[Description] [varchar](100) NULL,
	[IsDeposit] [bit] NULL,
	[AffectedDate] [datetime] NULL,
	[IsActive] [bit] NOT NULL,
	[IsKPIActive] [bit] NOT NULL,
	[IsOneWorkActive] [bit] NOT NULL,
	[BrandName] [varchar](100) NOT NULL,
	[CompanyName] [varchar](100) NOT NULL,
	[IsAllowedMemberComm] [bit] NOT NULL,
	[EditBetSetting] [bit] NULL,
 CONSTRAINT [PK_Licensees] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_LicenseeName] ON [dbo].[Licensees] 
(
	[LicenseeName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_index]
GO
/****** Object:  Table [dbo].[LicenseeReseller]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeReseller](
	[ResellerID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[TnxRate] [money] NULL,
 CONSTRAINT [PK_LicenseeReseller] PRIMARY KEY CLUSTERED 
(
	[ResellerID] ASC,
	[LicenseeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
/****** Object:  Table [dbo].[LicenseeProduct3rd]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeProduct3rd](
	[LicenseeID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Comm] [bit] NOT NULL,
	[Winloss] [bit] NOT NULL,
	[EffectiveDate] [smalldatetime] NULL,
 CONSTRAINT [PK_LicenseeProduct3rd] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
/****** Object:  Table [dbo].[LicenseeMultiCurrencyConfig]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeMultiCurrencyConfig](
	[Recommend] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[FromDate] [smalldatetime] NOT NULL,
	[ToDate] [smalldatetime] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_LicenseeMultiCurrencyConfig] PRIMARY KEY CLUSTERED 
(
	[Recommend] ASC,
	[Currency] ASC,
	[FromDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LicenseeGroupComm]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeGroupComm](
	[id] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Licenseeid] [int] NOT NULL,
	[GroupName] [varchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SBComm] [decimal](9, 8) NOT NULL,
	[RacingComm] [decimal](9, 8) NOT NULL,
	[NGComm] [decimal](9, 8) NOT NULL,
	[color] [varchar](20) NULL,
	[IsDefault] [bit] NOT NULL,
	[LCComm] [decimal](9, 8) NOT NULL,
	[RNGComm] [decimal](9, 8) NOT NULL,
	[Parlaycomm] [decimal](9, 8) NULL,
	[AllbetComm] [decimal](9, 8) NULL,
 CONSTRAINT [PK_LicenseeGroupComm] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseeFunctions]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeFunctions](
	[LicenseeFunctionId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LicenseeId] [int] NOT NULL,
	[FunctionId] [int] NOT NULL,
 CONSTRAINT [PK_LicenseeFunctions] PRIMARY KEY CLUSTERED 
(
	[LicenseeFunctionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
/****** Object:  Table [dbo].[LicenseeCustComm]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeCustComm](
	[LicenseeID] [int] NOT NULL,
	[CustID] [int] NOT NULL,
	[SBComm] [decimal](9, 8) NULL,
	[RacingComm] [decimal](9, 8) NULL,
	[NGComm] [decimal](9, 8) NULL,
	[GroupCommID] [int] NOT NULL,
	[LCComm] [decimal](9, 8) NOT NULL,
	[RNGComm] [decimal](9, 8) NOT NULL,
	[Parlaycomm] [decimal](9, 8) NULL,
	[AllbetComm] [decimal](9, 8) NULL,
 CONSTRAINT [PK_LicenseeCustComm] PRIMARY KEY CLUSTERED 
(
	[CustID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [user_table]
) ON [user_table]
GO
CREATE NONCLUSTERED INDEX [IX_LicenseeGroup] ON [dbo].[LicenseeCustComm] 
(
	[LicenseeID] ASC,
	[GroupCommID] ASC
)
INCLUDE ( [NGComm],
[RacingComm],
[SBComm]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [user_table]
GO
/****** Object:  Table [dbo].[LicenseeCust]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeCust](
	[LicenseeID] [int] NOT NULL,
	[CustID] [int] NOT NULL,
	[RoleID] [tinyint] NOT NULL,
	[Currency] [int] NOT NULL,
	[CurrencyName] [varchar](20) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_LicenseeCust] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC,
	[CustID] ASC,
	[RoleID] ASC,
	[Currency] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_RoleID] ON [dbo].[LicenseeCust] 
(
	[RoleID] ASC
)
INCLUDE ( [LicenseeID],
[CustID]) WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_index]
GO
/****** Object:  Table [dbo].[LicenseeCurrencyBAGroup]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeCurrencyBAGroup](
	[LicenseeID] [int] NOT NULL,
	[Currency] [int] NOT NULL,
	[ugroup] [varchar](3) NOT NULL,
	[ModifyBy] [int] NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.LicenseeCurrencyBAGroup] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC,
	[Currency] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [BA_DATA]
) ON [BA_DATA]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseeBAHistory]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseeBAHistory](
	[ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[CustID] [int] NOT NULL,
	[OnDate] [datetime] NOT NULL,
	[OffDate] [datetime] NULL,
	[OnBy] [int] NOT NULL,
	[OffBy] [int] NULL,
	[GroupComm] [decimal](9, 8) NOT NULL,
	[1x2Comm] [decimal](9, 8) NOT NULL,
	[OtherComm] [decimal](9, 8) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[Ugroup] [varchar](3) NULL,
 CONSTRAINT [PK_LicenseeBAHistory] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [BA_DATA]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [CIX_LicenseeCustIDStatus] ON [dbo].[LicenseeBAHistory] 
(
	[LicenseeID] ASC,
	[CustID] ASC,
	[Status] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [BA_DATA]
GO
CREATE NONCLUSTERED INDEX [IX_custid_ondate_offdate] ON [dbo].[LicenseeBAHistory] 
(
	[CustID] ASC,
	[OnDate] ASC,
	[OffDate] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [BA_INDEX]
GO
/****** Object:  Table [dbo].[LicenseeBAConfig]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseeBAConfig](
	[LicenseeID] [int] NOT NULL,
	[1x2Comm] [decimal](9, 8) NOT NULL,
	[OtherComm] [decimal](9, 8) NOT NULL,
	[EnableBA] [bit] NOT NULL,
	[ModifyBy] [int] NOT NULL,
	[ModifyDate] [datetime] NOT NULL,
	[groupa] [decimal](9, 8) NOT NULL,
	[groupb] [decimal](9, 8) NOT NULL,
	[groupc] [decimal](9, 8) NOT NULL,
	[groupd] [decimal](9, 8) NOT NULL,
 CONSTRAINT [PK_LicenseeBAConfig] PRIMARY KEY CLUSTERED 
(
	[LicenseeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [BA_DATA]
) ON [BA_DATA]
GO
/****** Object:  Table [dbo].[Labels]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Labels](
	[LicenseeID] [int] NOT NULL,
	[LabelID] [int] NOT NULL,
	[LabelName] [varchar](50) NOT NULL,
	[AffectedDate] [datetime] NULL,
	[IsKPISummary] [bit] NOT NULL,
 CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED 
(
	[LabelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Functions](
	[FunctionId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Url] [varchar](200) NOT NULL,
	[IsMenu] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DisplayOrder] [int] NOT NULL,
	[IsNew] [bit] NOT NULL,
	[FunctionKey] [nvarchar](100) NULL,
	[Environment] [varchar](10) NULL,
	[IsFunction] [bit] NULL,
 CONSTRAINT [PK_Functions] PRIMARY KEY CLUSTERED 
(
	[FunctionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CurrencyUser]    Script Date: 09/23/2018 23:01:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CurrencyUser](
	[usrID] [int] NOT NULL,
	[LicenseeID] [int] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[SystemID] [int] NOT NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_LicenseeCurrencybyCust] PRIMARY KEY CLUSTERED 
(
	[usrID] ASC,
	[LicenseeID] ASC,
	[CurrencyID] ASC,
	[SystemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [licensee_table]
) ON [licensee_table]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 09/23/2018 23:01:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Country](
	[countrySHORT] [varchar](2) NOT NULL,
	[countryLONG] [varchar](64) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[countrySHORT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [DATA]
) ON [DATA]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_Functions_Name]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_Name]  DEFAULT (N'') FOR [Name]
GO
/****** Object:  Default [DF_Functions_Description]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_Description]  DEFAULT (N'') FOR [Description]
GO
/****** Object:  Default [DF_Functions_ParentId]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_ParentId]  DEFAULT ((0)) FOR [ParentId]
GO
/****** Object:  Default [DF_Functions_Url]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_Url]  DEFAULT ('') FOR [Url]
GO
/****** Object:  Default [DF_Functions_IsMenu]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_IsMenu]  DEFAULT ((0)) FOR [IsMenu]
GO
/****** Object:  Default [DF_Functions_IsActive]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_Functions_DisplayOrder]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_DisplayOrder]  DEFAULT ((0)) FOR [DisplayOrder]
GO
/****** Object:  Default [DF_Functions_IsNew]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  CONSTRAINT [DF_Functions_IsNew]  DEFAULT ((0)) FOR [IsNew]
GO
/****** Object:  Default [DF__Functions__IsFun__38996AB5]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Functions] ADD  DEFAULT ((1)) FOR [IsFunction]
GO
/****** Object:  Default [DF_Labels_IsKPISummary]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Labels] ADD  CONSTRAINT [DF_Labels_IsKPISummary]  DEFAULT ((0)) FOR [IsKPISummary]
GO
/****** Object:  Default [DF_LicenseeBAConfig_1x2Comm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  CONSTRAINT [DF_LicenseeBAConfig_1x2Comm]  DEFAULT ((0)) FOR [1x2Comm]
GO
/****** Object:  Default [DF_LicenseeBAConfig_OtherComm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  CONSTRAINT [DF_LicenseeBAConfig_OtherComm]  DEFAULT ((0)) FOR [OtherComm]
GO
/****** Object:  Default [DF_LicenseeBAConfig_EnableBA]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  CONSTRAINT [DF_LicenseeBAConfig_EnableBA]  DEFAULT ((0)) FOR [EnableBA]
GO
/****** Object:  Default [DF_LicenseeBAConfig_ModifyDate]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  CONSTRAINT [DF_LicenseeBAConfig_ModifyDate]  DEFAULT (getdate()) FOR [ModifyDate]
GO
/****** Object:  Default [DF__LicenseeB__group__3E52440B]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  DEFAULT ((0)) FOR [groupa]
GO
/****** Object:  Default [DF__LicenseeB__group__3F466844]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  DEFAULT ((0)) FOR [groupb]
GO
/****** Object:  Default [DF__LicenseeB__group__403A8C7D]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  DEFAULT ((0)) FOR [groupc]
GO
/****** Object:  Default [DF__LicenseeB__group__412EB0B6]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAConfig] ADD  DEFAULT ((0)) FOR [groupd]
GO
/****** Object:  Default [DF_LicenseeBAHistory_OnDate]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeBAHistory] ADD  CONSTRAINT [DF_LicenseeBAHistory_OnDate]  DEFAULT (getdate()) FOR [OnDate]
GO
/****** Object:  Default [DF_LicenseeCustComm_GroupCommID]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeCustComm] ADD  CONSTRAINT [DF_LicenseeCustComm_GroupCommID]  DEFAULT ((0)) FOR [GroupCommID]
GO
/****** Object:  Default [DF__LicenseeC__LCCom__440B1D61]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeCustComm] ADD  DEFAULT ((0)) FOR [LCComm]
GO
/****** Object:  Default [DF__LicenseeC__RNGCo__44FF419A]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeCustComm] ADD  DEFAULT ((0)) FOR [RNGComm]
GO
/****** Object:  Default [DF_LicenseeCustComm__Parlaycomm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeCustComm] ADD  CONSTRAINT [DF_LicenseeCustComm__Parlaycomm]  DEFAULT ((0)) FOR [Parlaycomm]
GO
/****** Object:  Default [DF_LicenseeFunctions_LicenseeId]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeFunctions] ADD  CONSTRAINT [DF_LicenseeFunctions_LicenseeId]  DEFAULT ((0)) FOR [LicenseeId]
GO
/****** Object:  Default [DF_LicenseeFunctions_FunctionId]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeFunctions] ADD  CONSTRAINT [DF_LicenseeFunctions_FunctionId]  DEFAULT ((0)) FOR [FunctionId]
GO
/****** Object:  Default [DF_LicenseeGroupComm_IsActive]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  CONSTRAINT [DF_LicenseeGroupComm_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF_LicenseeGroupComm_SBComm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  CONSTRAINT [DF_LicenseeGroupComm_SBComm]  DEFAULT ((0)) FOR [SBComm]
GO
/****** Object:  Default [DF_LicenseeGroupComm_RacingComm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  CONSTRAINT [DF_LicenseeGroupComm_RacingComm]  DEFAULT ((0)) FOR [RacingComm]
GO
/****** Object:  Default [DF_LicenseeGroupComm_NGComm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  CONSTRAINT [DF_LicenseeGroupComm_NGComm]  DEFAULT ((0)) FOR [NGComm]
GO
/****** Object:  Default [DF__LicenseeG__IsDef__4CA06362]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF__LicenseeG__LCCom__4D94879B]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  DEFAULT ((0)) FOR [LCComm]
GO
/****** Object:  Default [DF__LicenseeG__RNGCo__4E88ABD4]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  DEFAULT ((0)) FOR [RNGComm]
GO
/****** Object:  Default [DF_LicenseeGroupComm_ParlayComm]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeGroupComm] ADD  CONSTRAINT [DF_LicenseeGroupComm_ParlayComm]  DEFAULT ((0)) FOR [Parlaycomm]
GO
/****** Object:  Default [DF__LicenseePr__Comm__5070F446]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeProduct3rd] ADD  DEFAULT ((0)) FOR [Comm]
GO
/****** Object:  Default [DF__LicenseeP__Winlo__5165187F]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeProduct3rd] ADD  DEFAULT ((0)) FOR [Winloss]
GO
/****** Object:  Default [DF__Licensees__IsAct__52593CB8]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__Licensees__IsKPI__534D60F1]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ((0)) FOR [IsKPIActive]
GO
/****** Object:  Default [DF__Licensees__IsOne__5441852A]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ((0)) FOR [IsOneWorkActive]
GO
/****** Object:  Default [DF__Licensees__Brand__5535A963]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ('') FOR [BrandName]
GO
/****** Object:  Default [DF__Licensees__Compa__5629CD9C]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ('') FOR [CompanyName]
GO
/****** Object:  Default [DF__Licensees__IsAll__571DF1D5]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ((0)) FOR [IsAllowedMemberComm]
GO
/****** Object:  Default [DF__Licensees__EditB__5812160E]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[Licensees] ADD  DEFAULT ((0)) FOR [EditBetSetting]
GO
/****** Object:  Default [DF__LicenseeS__IsAct__5629CD9C]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeSourcedSetting] ADD  CONSTRAINT [DF__LicenseeS__IsAct__5629CD9C]  DEFAULT ((1)) FOR [IsActive]
GO
/****** Object:  Default [DF__LicenseeS__EndDa__571DF1D5]    Script Date: 09/23/2018 23:01:07 ******/
ALTER TABLE [dbo].[LicenseeSourcedSetting] ADD  CONSTRAINT [DF__LicenseeS__EndDa__571DF1D5]  DEFAULT ('2050-01-01') FOR [EndDate]
GO
/****** Object:  Default [DF_LicenseeUserFunction_UserId]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[LicenseeUserFunctions] ADD  CONSTRAINT [DF_LicenseeUserFunction_UserId]  DEFAULT ((0)) FOR [UserId]
GO
/****** Object:  Default [DF_LicenseeUserFunction_FunctionId]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[LicenseeUserFunctions] ADD  CONSTRAINT [DF_LicenseeUserFunction_FunctionId]  DEFAULT ((0)) FOR [FunctionId]
GO
/****** Object:  Default [DF_LicenseeUserFunctions_LicenseeId]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[LicenseeUserFunctions] ADD  CONSTRAINT [DF_LicenseeUserFunctions_LicenseeId]  DEFAULT ((0)) FOR [LicenseeId]
GO
/****** Object:  Default [DF_LrfDomain_Domain]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[LrfDomain] ADD  CONSTRAINT [DF_LrfDomain_Domain]  DEFAULT ('') FOR [DomainName]
GO
/****** Object:  Default [DF_LrfDomain_IsActive]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[LrfDomain] ADD  CONSTRAINT [DF_LrfDomain_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF_on_user_reload_time]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[On_User] ADD  CONSTRAINT [DF_on_user_reload_time]  DEFAULT (getdate()) FOR [reload_time]
GO
/****** Object:  Default [DF_on_user_ServerID]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[On_User] ADD  CONSTRAINT [DF_on_user_ServerID]  DEFAULT ((0)) FOR [ServerID]
GO
/****** Object:  Default [DF_on_user_IP]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[On_User] ADD  CONSTRAINT [DF_on_user_IP]  DEFAULT (N'') FOR [IP]
GO
/****** Object:  Default [DF_on_user_iskickedout]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[On_User] ADD  CONSTRAINT [DF_on_user_iskickedout]  DEFAULT ((0)) FOR [iskickedout]
GO
/****** Object:  Default [DF_on_user_NetSessionID]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[On_User] ADD  CONSTRAINT [DF_on_user_NetSessionID]  DEFAULT ('') FOR [NetSessionID]
GO
/****** Object:  Default [DF_SystemLicensee_IsActive]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[SystemLicensee] ADD  CONSTRAINT [DF_SystemLicensee_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF__Users__isInterna__656C112C]    Script Date: 09/23/2018 23:01:08 ******/
ALTER TABLE [dbo].[Users] ADD  DEFAULT ((0)) FOR [isInternal]
GO
