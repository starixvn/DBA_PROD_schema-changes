/*
	Task: Backup master db users and server permission

	Generated on old server and run on new server SITDBDCUST
*/

USE [master]
GO
/****** Object:  User [##MS_PolicyEventProcessingLogin##]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [##MS_PolicyEventProcessingLogin##] FOR LOGIN [##MS_PolicyEventProcessingLogin##] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ANDATEST]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [ANDATEST] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [andrew.lan]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [andrew.lan] FOR LOGIN [andrew.lan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [dba_Cert_User]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [dba_Cert_User] FOR LOGIN [dba_Cert_User] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [jaye.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [jaye.chen] FOR LOGIN [jaye.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nabi.fan]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [nabi.fan] FOR LOGIN [nabi.fan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [NewUMTools]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [NewUMTools] FOR LOGIN [NewUMTools] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdaaron.lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdaaron.lee] FOR LOGIN [rdaaron.lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdaaron.wang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdaaron.wang] FOR LOGIN [rdaaron.wang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDABC]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDABC] FOR LOGIN [RDABC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDadam.huang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDadam.huang] FOR LOGIN [RDadam.huang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDagnes.lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDagnes.lee] FOR LOGIN [RDagnes.lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDalex.kan]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDalex.kan] FOR LOGIN [RDalex.kan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdalfie]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdalfie] FOR LOGIN [rdalfie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDalicia.chu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDalicia.chu] FOR LOGIN [RDalicia.chu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDallen.wu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDallen.wu] FOR LOGIN [RDallen.wu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDamy.chan]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDamy.chan] FOR LOGIN [RDamy.chan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDandy.ho]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDandy.ho] FOR LOGIN [RDandy.ho] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDandy.tseng]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDandy.tseng] FOR LOGIN [RDandy.tseng] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDanny.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDanny.chen] FOR LOGIN [RDanny.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDaustin.su]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDaustin.su] FOR LOGIN [RDaustin.su] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDava.huang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDava.huang] FOR LOGIN [RDava.huang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDbacon]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDbacon] FOR LOGIN [RDbacon] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDben.chang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDben.chang] FOR LOGIN [RDben.chang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdboren.fu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdboren.fu] FOR LOGIN [rdboren.fu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDbruce.liao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDbruce.liao] FOR LOGIN [RDbruce.liao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDcharlie.ma]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDcharlie.ma] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdchloe.lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdchloe.lee] FOR LOGIN [rdchloe.lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDChun.yeh]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDChun.yeh] FOR LOGIN [RDChun.yeh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDCola]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDCola] FOR LOGIN [RDCola] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDcola.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDcola.chen] FOR LOGIN [RDcola.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDdaisy.wu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDdaisy.wu] FOR LOGIN [RDdaisy.wu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDDavid]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDDavid] FOR LOGIN [RDDavid] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDdbaAndy]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDdbaAndy] FOR LOGIN [RDdbaAndy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDdbaJoy]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDdbaJoy] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDdbaSylvia]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDdbaSylvia] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDdbaVictor]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDdbaVictor] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDdean.sung]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDdean.sung] FOR LOGIN [RDdean.sung] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDduncan.huang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDduncan.huang] FOR LOGIN [RDduncan.huang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdeason.chou]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdeason.chou] FOR LOGIN [rdeason.chou] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDechover.kuo]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDechover.kuo] FOR LOGIN [RDechover.kuo] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDedward.lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDedward.lee] FOR LOGIN [RDedward.lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDElena.Lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDElena.Lee] FOR LOGIN [RDElena.Lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDemin.hsieh]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDemin.hsieh] FOR LOGIN [RDemin.hsieh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDeric.fu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDeric.fu] FOR LOGIN [RDeric.fu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDfanny.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDfanny.chen] FOR LOGIN [RDfanny.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDfrank.li]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDfrank.li] FOR LOGIN [RDfrank.li] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDgary.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDgary.chen] FOR LOGIN [RDgary.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDhyman.wu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDhyman.wu] FOR LOGIN [RDhyman.wu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjack.chang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjack.chang] FOR LOGIN [RDjack.chang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjames.chan]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjames.chan] FOR LOGIN [RDjames.chan] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjason.ni]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjason.ni] FOR LOGIN [RDjason.ni] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjeff.chang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjeff.chang] FOR LOGIN [RDjeff.chang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjeff.lin]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjeff.lin] FOR LOGIN [RDjeff.lin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjennifer.kao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjennifer.kao] FOR LOGIN [RDjennifer.kao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDJerry.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDJerry.chen] FOR LOGIN [RDJerry.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjoe.huang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjoe.huang] FOR LOGIN [RDjoe.huang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDJohn.tao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDJohn.tao] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjohnny.yang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjohnny.yang] FOR LOGIN [RDjohnny.yang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjoy.chang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjoy.chang] FOR LOGIN [RDjoy.chang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdjunhan.lin]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdjunhan.lin] FOR LOGIN [rdjunhan.lin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDjustice.wu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDjustice.wu] FOR LOGIN [RDjustice.wu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDkaren.wang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDkaren.wang] FOR LOGIN [RDkaren.wang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdkarenwang ]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdkarenwang ] FOR LOGIN [rdkarenwang ] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdkarin.lien]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdkarin.lien] FOR LOGIN [rdkarin.lien] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDkenny.chiang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDkenny.chiang] FOR LOGIN [RDkenny.chiang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDkevin.wu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDkevin.wu] FOR LOGIN [RDkevin.wu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDKid.Shih]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDKid.Shih] FOR LOGIN [RDKid.Shih] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDlawrence.lin]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDlawrence.lin] FOR LOGIN [RDlawrence.lin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDleo.lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDleo.lee] FOR LOGIN [RDleo.lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDliyang.hsiao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDliyang.hsiao] FOR LOGIN [RDliyang.hsiao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDluc.tsao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDluc.tsao] FOR LOGIN [RDluc.tsao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDluna.ho]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDluna.ho] FOR LOGIN [RDluna.ho] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDmaggie.tseng]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDmaggie.tseng] FOR LOGIN [RDmaggie.tseng] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDmartin.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDmartin.chen] FOR LOGIN [RDmartin.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdmike.lin]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdmike.lin] FOR LOGIN [rdmike.lin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDmontero.liu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDmontero.liu] FOR LOGIN [RDmontero.liu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDmorris.hsieh]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDmorris.hsieh] FOR LOGIN [RDmorris.hsieh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDnathan.lu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDnathan.lu] FOR LOGIN [RDnathan.lu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDNick.Chi]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDNick.Chi] FOR LOGIN [RDNick.Chi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDrachel.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDrachel.chen] FOR LOGIN [RDrachel.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDrdsy.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDrdsy.chen] FOR LOGIN [RDrdsy.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDsingz.hsieh]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDsingz.hsieh] FOR LOGIN [RDsingz.hsieh] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDsobi.chan]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDsobi.chan] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDsobi.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDsobi.chen] FOR LOGIN [RDsobi.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDstanley.wang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDstanley.wang] FOR LOGIN [RDstanley.wang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdsvntrack]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdsvntrack] FOR LOGIN [rdsvntrack] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDsy.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDsy.chen] FOR LOGIN [RDsy.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdtandy.tien]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdtandy.tien] FOR LOGIN [rdtandy.tien] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDtaphy.chao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDtaphy.chao] FOR LOGIN [RDtaphy.chao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDtenchi.wang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDtenchi.wang] FOR LOGIN [RDtenchi.wang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDtommy.fang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDtommy.fang] FOR LOGIN [RDtommy.fang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDtony.huang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDtony.huang] FOR LOGIN [RDtony.huang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDtony.yu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDtony.yu] FOR LOGIN [RDtony.yu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDtroy.chen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDtroy.chen] FOR LOGIN [RDtroy.chen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDWalter.hsu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDWalter.hsu] FOR LOGIN [RDWalter.hsu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDwei.liu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDwei.liu] FOR LOGIN [RDwei.liu] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [rdwen.chung]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [rdwen.chung] FOR LOGIN [rdwen.chung] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDXinXian]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDXinXian] FOR LOGIN [RDXinXian] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDYC.Pao]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDYC.Pao] FOR LOGIN [RDYC.Pao] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDyolanda.wu]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDyolanda.wu] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDzake.liang]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDzake.liang] FOR LOGIN [RDzake.liang] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [RDZoe.Lee]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [RDZoe.Lee] FOR LOGIN [RDZoe.Lee] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [SSB_Login]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [SSB_Login] FOR LOGIN [SSB_Login] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [UMTools]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [UMTools] FOR LOGIN [UMTools] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vndbaDeployment]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [vndbaDeployment] FOR LOGIN [vndbaDeployment] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnelodie]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [vnelodie] FOR LOGIN [vnelodie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnhelen]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [vnhelen] FOR LOGIN [vnhelen] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnjamie]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [vnjamie] FOR LOGIN [vnjamie] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnkathy]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [vnkathy] FOR LOGIN [vnkathy] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [vnsophia]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [vnsophia] FOR LOGIN [vnsophia] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [##MS_AgentSigningCertificate##]    Script Date: 4/14/2022 9:37:22 AM ******/
CREATE USER [##MS_AgentSigningCertificate##] FOR LOGIN [##MS_AgentSigningCertificate##]
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'ANDATEST'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'andrew.lan'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'jaye.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'nabi.fan'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdaaron.lee'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdaaron.wang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDABC'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDadam.huang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDagnes.lee'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDalex.kan'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDalicia.chu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDallen.wu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDamy.chan'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDandy.ho'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDandy.tseng'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDanny.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDaustin.su'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDava.huang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDbacon'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDben.chang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdboren.fu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDbruce.liao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDcharlie.ma'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdchloe.lee'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDChun.yeh'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDCola'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDcola.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDdaisy.wu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDDavid'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDdbaAndy'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDdbaJoy'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDdbaSylvia'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDdbaVictor'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDdean.sung'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDduncan.huang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdeason.chou'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDechover.kuo'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDedward.lee'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDElena.Lee'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDemin.hsieh'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDeric.fu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDfanny.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDfrank.li'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDgary.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDhyman.wu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjack.chang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjames.chan'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjason.ni'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjeff.chang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjeff.lin'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjennifer.kao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDJerry.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjoe.huang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDJohn.tao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjohnny.yang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjoy.chang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdjunhan.lin'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDjustice.wu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDkaren.wang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdkarenwang '
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdkarin.lien'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDkenny.chiang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDkevin.wu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDKid.Shih'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDlawrence.lin'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDleo.lee'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDliyang.hsiao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDluc.tsao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDluna.ho'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDmaggie.tseng'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDmartin.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdmike.lin'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDmontero.liu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDmorris.hsieh'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDnathan.lu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDNick.Chi'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDrachel.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDrdsy.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDsingz.hsieh'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDsobi.chan'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDsobi.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDstanley.wang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDsy.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdtandy.tien'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDtaphy.chao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDtenchi.wang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDtommy.fang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDtony.huang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDtony.yu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDtroy.chen'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDWalter.hsu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDwei.liu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'rdwen.chung'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDXinXian'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDYC.Pao'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDyolanda.wu'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDzake.liang'
GO
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'RDZoe.Lee'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vndbaDeployment'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnelodie'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnjamie'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnkathy'
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'vnsophia'
GO
