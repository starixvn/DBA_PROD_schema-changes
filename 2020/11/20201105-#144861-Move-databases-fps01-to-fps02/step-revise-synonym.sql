/*
    Task: Move some dbs from fps_01 to fps_02
		+ Revise synonym
    Server: FPS_DB02\FPS_01
	
*/


USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_12BET];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO
USE [FPS_SUB_ALPHA];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_Newhonbet];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO
USE [FPS_SUB_W88];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_BBIN];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_FUN88];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.ToolAccounts;
CREATE SYNONYM rmt.ToolAccounts FOR [FPS_LOG].[dbo].[ToolAccounts];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.Actions;
CREATE SYNONYM rmt.Actions FOR [FPS_ADMIN].[dbo].[Actions];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.SubDBServers;
CREATE SYNONYM rmt.SubDBServers FOR [FPS_ADMIN].[dbo].[SubDBServers];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.Subscribers;
CREATE SYNONYM rmt.Subscribers FOR [FPS_ADMIN].[dbo].[Subscribers];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.SubscriberTrusty;
CREATE SYNONYM rmt.SubscriberTrusty FOR [FPS_ADMIN].[dbo].[SubscriberTrusty];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.Users;
CREATE SYNONYM rmt.Users FOR [FPS_ADMIN].[dbo].[Users];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.AddException;
CREATE SYNONYM rmt.AddException FOR [FPS_EVI].[dbo].[AddException];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.EvidenceMaster;
CREATE SYNONYM rmt.EvidenceMaster FOR [FPS_EVI].[dbo].[EvidenceMaster];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.EvidenceSub;
CREATE SYNONYM rmt.EvidenceSub FOR [FPS_EVI].[dbo].[EvidenceSub];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.EvidenceTypes;
CREATE SYNONYM rmt.EvidenceTypes FOR [FPS_EVI].[dbo].[EvidenceTypes];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.Exceptions;
CREATE SYNONYM rmt.Exceptions FOR [FPS_EVI].[dbo].[Exceptions];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.GetEvidenceByIDAndType;
CREATE SYNONYM rmt.GetEvidenceByIDAndType FOR [FPS_EVI].[dbo].[GetEvidenceByIDAndType];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.RetractException;
CREATE SYNONYM rmt.RetractException FOR [FPS_EVI].[dbo].[RetractException];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.rptAccountDevice;
CREATE SYNONYM rmt.rptAccountDevice FOR [FPS_RPT].[dbo].[rptAccountDevice];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.rptActions;
CREATE SYNONYM rmt.rptActions FOR [FPS_RPT].[dbo].[rptActions];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.rptDBStats;
CREATE SYNONYM rmt.rptDBStats FOR [FPS_RPT].[dbo].[rptDBStats];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.RuleSettingHistories;
CREATE SYNONYM rmt.RuleSettingHistories FOR [FPS_ADMIN].[dbo].[RuleSettingHistories];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.RuleSettings;
CREATE SYNONYM rmt.RuleSettings FOR [FPS_ADMIN].[dbo].[RuleSettings];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.RuleSettingsDetail;
CREATE SYNONYM rmt.RuleSettingsDetail FOR [FPS_ADMIN].[dbo].[RuleSettingsDetail];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM rmt.RuleSettingsDetailHistories;
CREATE SYNONYM rmt.RuleSettingsDetailHistories FOR [FPS_ADMIN].[dbo].[RuleSettingsDetailHistories];
GO
USE [FPS_SUB_M88];
GO
DROP SYNONYM dbo.rptDbSpaceUsed;
CREATE SYNONYM dbo.rptDbSpaceUsed FOR [FPS_RPT].[dbo].[rptDbSpaceUsed];
GO