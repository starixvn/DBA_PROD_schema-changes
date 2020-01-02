USE [bodb_CustomerLog]
GO

/*
	Created: 20191203@Parsons
	DB: DBLOG.bodb_CustomerLog
	Task: Setup billing terms by Currency  [#120005]
	Description: Insert into DBLOG.bodb_CustomerLog.LogAction
*/

DECLARE @LA_ChargeRateSettingByCurrencyModify VARCHAR(50) = 'LA_ChargeRateSettingByCurrencyModify'

INSERT INTO [dbo].[LogAction]
           ([ActionID]
           ,[SPName]
           ,[ActionNameEN]
           ,[ActionNameCH]
           ,[ActionNameCS]
           ,[ActionNameJP]
           ,[ActionNameIT]
           ,[ActionNameTH]
           ,[ActionNameKO]
           ,[IsInternal]
           ,[ActionNameVI]
           ,[ActionNameCN])
     VALUES
           (5568,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify,0,@LA_ChargeRateSettingByCurrencyModify,@LA_ChargeRateSettingByCurrencyModify)
GO