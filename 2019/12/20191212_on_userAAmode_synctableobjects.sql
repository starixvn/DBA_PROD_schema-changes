


/*
	run script on DB05 and DB05BK1 & MNL site
*/

USE on_user 
go

ALTER TABLE MESSAGE_NOTICE ADD tstamp timestamp
ALTER TABLE msg ADD tstamp timestamp
ALTER TABLE RobotUsers ADD tstamp timestamp
ALTER TABLE RobotUsers_DelLog ADD tstamp timestamp

CREATE NONCLUSTERED INDEX IX_MESSAGE_NOTICE_tstamp ON MESSAGE_NOTICE (tstamp) ON DATA
CREATE NONCLUSTERED INDEX IX_msg_tstamp ON msg (tstamp) ON DATA
CREATE NONCLUSTERED INDEX IX_RobotUsers_tstamp ON RobotUsers (tstamp) ON DATA
CREATE NONCLUSTERED INDEX IX_RobotUsers_DelLog_tstamp ON RobotUsers_DelLog (tstamp) ON DATA
--drop table SystemSettings
CREATE TABLE SystemSettings (VID INT NOT NULL, VName VARCHAR(128), VValue VARCHAR(128))
ALTER TABLE SystemSettings ADD CONSTRAINT PK_SystemSettings PRIMARY KEY CLUSTERED (VID)
GO
INSERT INTO SystemSettings VALUES(1,'MESSAGE_NOTICE','')
INSERT INTO SystemSettings VALUES(2,'msg','')
INSERT INTO SystemSettings VALUES(3,'RobotUsers','')
INSERT INTO SystemSettings VALUES(4,'RobotUsers_DelLog','')