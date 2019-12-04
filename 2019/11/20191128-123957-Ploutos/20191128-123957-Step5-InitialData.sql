/*
	Creator:	20191120@Sophia
	Task:		Description - [Redmine: #123957]
	Server:		DBPLO.bodb_Ploutos
*/

 use bodb_Ploutos
 GO 
 
INSERT INTO Brand 
(BrandCode,
BrandName,
BrandPrefix,
BrandUrl,
LicenseeID)
VALUES ('ivorysport', 'ivorysport','IVO','http://www.ivorysport.com/',185),
('Opal88', 'Opal88','OPA','www.opal88.com',191),
('Nova88', 'Nova88','NOV','www.Nova88.com',363)


INSERT INTO MarketBrand (
BrandCode,
CurrencyCode,
CountryCode)
VALUES 
('ivorysport','MYR','MY'),
('ivorysport','THB','TH'),
('ivorysport','CNY','CN'),
('ivorysport','IDR','ID'),
--('ivorysport','VND','TH'),
('ivorysport','VND','KH'),
--('ivorysport','VND','MY'),
('Nova88','MYR','MY'),
('Nova88','THB','TH'),
('Nova88','CNY','CN'),
('Nova88','IDR','ID'),
('Opal88','MYR','CN'),
('Opal88','USD','CN'),
('Opal88','THB','CN'),
('Opal88','EUR','CN'),
('Opal88','AUD','CN'),
('Opal88','GBP','CN'),
('Opal88','CNY','CN'),
('Opal88','IDR','CN'),
('Opal88','JPY','CN'),
('Opal88','CHF','CN'),
('Opal88','KRW','CN'),
('Opal88','VND','CN'),
('Opal88','INR','CN'),
('Opal88','MMK','CN'),
('Opal88','KHR','CN')


INSERT INTO GameDetail (GameName, GameCode, GameType,ProductId)
VALUES
('Allbet','0211','CA','21'),
('Number Game','0161','RNG','2'),
('Virtual Soccer','0180','RNG','5'),
('Virtual Horse Racing','0181','RNG','5'),
('Virtual Greyhound','0182','RNG','5'),
('Virtual Speedway','0183','RNG','5'),
('Virtual F1','0184','RNG','5'),
('Virtual Cycling','0185','RNG','5'),
('Virtual Tennis','0186','RNG','5'),
('Virtual Soccer League','0190','RNG','27'),
('Virtual Soccer Nation','0191','RNG','27'),
('Virtual Soccer Euro','0192','RNG','27'),
('Virtual Basketball','0193','RNG','27'),
('Virtual Horse','0194','RNG','27'),
('Virtual Sports Parlay','0199','RNG','27'),
('RNG Game','0208','RNG','6'),
('Macau Games','0212','RNG','22'),
('Pragmatic Play RNG Games','0248','RNG','32'),
('Parlay','00','SB','0'),
('Soccer','01','SB','0'),
('Golf','010','SB','0'),
('Motorsports','011','SB','0'),
('Swimming','012','SB','0'),
('Water Polo','014','SB','0'),
('Diving','015','SB','0'),
('Boxing','016','SB','0'),
('Table Tennis','018','SB','0'),
('Basketball','02','SB','0'),
('Athletics','022','SB','0'),
('Handball','024','SB','0'),
('Darts','025','SB','0'),
('Rugby','026','SB','0'),
('Field Hockey','028','SB','0'),
('Winter Sport','029','SB','0'),
('Football','03','SB','0'),
('Entertainment','031','SB','0'),
('Net Ball','032','SB','0'),
('Cycling','033','SB','0'),
('Rowing','037','SB','0'),
('Ice Hockey','04','SB','0'),
('E Sports','043','SB','0'),
('Muay Thai','044','SB','0'),
('Tennis','05','SB','0'),
('Cricket','050','SB','0'),
('Volleyball','06','SB','0'),
('Billiards','07','SB','0'),
('Baseball','08','SB','0'),
('Badminton','09','SB','0'),
('Other Sports','099','SB','0')