ALTER VIEW [dbo].[vw_FW_Users] 
/*
	created: 20190622@Daniel
	Task: Data Security for DW servers - create view for customer table
	DB: DBDW/FN, DBDW2/FN
*/
AS
SELECT [UserId]
      ,'' [FirstName]
      ,'' [LastName]
      ,'' [Email]
      ,[Status]
      ,[Creator]
      ,[Editor]
      ,[CreateDate]
      ,[UpdateDate]
      ,'' [IPCreator]
      ,'' [IPEditor]
      ,[ForceChangePwd]
      ,'' [Department]
      ,'' [AuthorizedBy]
  FROM [dbo].[FW_Users]
GO
