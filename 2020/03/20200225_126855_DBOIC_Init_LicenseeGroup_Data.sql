USE [bodb_OIC]
GO

/*
	Created: 20200225@Hogan
	DB: DBOIC.bodb_OIC
	Task: Add Group into Client functions [RedmineID: #126855]
*/

SET NOCOUNT ON;

TRUNCATE TABLE dbo.LicenseeGroup
GO

IF EXISTS(SELECT 1 FROM dbo.Licensee WHERE LicenseeGroupId IS NOT NULL)
	UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
	SET LicenseeGroupId = NULL
	WHERE LicenseeGroupId IS NOT NULL
GO

SET IDENTITY_INSERT dbo.LicenseeGroup ON

INSERT INTO dbo.LicenseeGroup(Id,[Name])
     VALUES (1,'Hengcai'),
			(2,'Fun88'),
			(3,'Chester'),
			(4,'Billion Town'),
			(5,'Wanfang'),
			(6,'BE7'),
			(7,'M88'),
			(8,'ZhiFeng'),
			(9,'BBIN'),
			(10,'Heji'),
			(11,'BoboRS'),
			(12,'ZZun88'),
			(13,'Aoncash'),
			(14,'Alek''s'),
			(15,'HuangMa'),
			(16,'818Bet'),
			(17,'WiningFT'),
			(18,'W88'),
			(19,'Tripleone'),
			(20,'Totedaddy'),
			(21,'AG'),
			(22,'TGO'),
			(23,'Sunrise'),
			(24,'OG'),
			(25,'Mayfair'),
			(26,'Mayayule'),
			(27,'Lucky88'),
			(28,'KeenOcean'),
			(29,'IGPTech'),
			(30,'Honbet'),
			(31,'24tech'),
			(32,'HongChow'),
			(33,'Suncity')
			
SET IDENTITY_INSERT dbo.LicenseeGroup OFF
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 1
 WHERE RegisteredLicenseeName IN ('Boma365', 'Hengcai88', 'GESAB')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 2
 WHERE RegisteredLicenseeName IN ('asiabet88', 'TLC', 'IBO', 'OPEBet', 'zt828', 'Gameroom', 'Bobbet', 'Tianbo')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 3
 WHERE RegisteredLicenseeName IN ('3star88', 'ECLBET', 'Mybet88', 'WINCLUB88')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 4
 WHERE RegisteredLicenseeName IN ('DBP', 'Monaco')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 5
 WHERE RegisteredLicenseeName IN ('Wanfang', 'KUTECH')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 6
 WHERE RegisteredLicenseeName IN ('BE7', 'Luckywin88')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 7
 WHERE RegisteredLicenseeName IN ('mansion88', 'Happy8')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 8
 WHERE RegisteredLicenseeName IN ('Mopgaming', 'Raisetech', 'TopGame', 'JIDU', 'Wanbo')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 9
 WHERE RegisteredLicenseeName IN ('HAIFA', 'BBIN2', 'BBIN3')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 10
 WHERE RegisteredLicenseeName IN ('Happy1668', 'YAYOU')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 11
 WHERE RegisteredLicenseeName IN ('Bobo88', 'ig128', 'A1game', 'txwl002', 'sbt88', 'weicai', 'tcycyl', 'shicaigw', 'DingTai', 'G2Win', 'MTech')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 12
 WHERE RegisteredLicenseeName IN ('Zzun88', 'Man1878')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 13
 WHERE RegisteredLicenseeName IN ('Aoncash', 'M8bola', 'Q8bola', 'NBCbet', 'Unobet', 'Winn69', 'Axiawin', 'Ratugg')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 14
 WHERE RegisteredLicenseeName IN ('BigGaming', 'PKbet', 'PanguGame', 'CGame', 'BETSUN')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 15
 WHERE RegisteredLicenseeName IN ('HuangMa', 'WinWin')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 32
 WHERE RegisteredLicenseeName IN ('HongChow', 'TangChao', 'HCVIP')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 16
 WHERE RegisteredLicenseeName IN ('818Bet', 'SSSGaming', 'BWGaming')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 17
 WHERE RegisteredLicenseeName IN ('GamingSoft', 'Dade', 'Nbbet', 'BetDeal', 'Xtu168')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 18
 WHERE RegisteredLicenseeName IN ('W88', 'GPIGAME', 'MAX88', 'ALPHA88', 'VN88', 'Win88', 'DF88', 'Asian88', 'BOG22')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 19
 WHERE RegisteredLicenseeName IN ('Entaplay', 'Tripleone', 'MICL', 'laba360')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 20
 WHERE RegisteredLicenseeName IN ('Ty777')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 21
 WHERE RegisteredLicenseeName IN ('AG', 'AMG')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 22
 WHERE RegisteredLicenseeName IN ('TGO', '365online', 'YBTech', 'BOSSB', 'YTX')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 23
 WHERE RegisteredLicenseeName IN ('Sunrise', 'Sunriseb2b')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 24
 WHERE RegisteredLicenseeName IN ('Avia', 'MARS')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 25
 WHERE RegisteredLicenseeName IN ('MayFair', 'Vwin', 'MrCat', 'Fugui', 'TitanOne', 'VWIN66', 'WKCUR', 'WKPHIL')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 26
 WHERE RegisteredLicenseeName IN ('Mayayule', 'Dachen')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 27
 WHERE RegisteredLicenseeName IN ('Lucky88', '11bet', 'Fabet', 'One88', 'Debet', 'Zbet', 'Sunwin', 'Five88')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 28
 WHERE RegisteredLicenseeName IN ('KeenOcean', 'K8VN')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 29
 WHERE RegisteredLicenseeName IN ('IGPTech', 'AEUG')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 30
 WHERE RegisteredLicenseeName IN ('HONBET', 'Newhonbet')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 31
 WHERE RegisteredLicenseeName IN ('24Tech', 'MRCATSB', '24AVIA')
GO

UPDATE dbo.Licensee WITH (ROWLOCK, UPDLOCK)
   SET LicenseeGroupId = 33
 WHERE RegisteredLicenseeName IN ('SunGame', 'Sun988', 'SSSSEA')
GO