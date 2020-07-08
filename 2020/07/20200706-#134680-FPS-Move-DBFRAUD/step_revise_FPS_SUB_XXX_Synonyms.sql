
/*
    Task: Move DBFRAUD to new Server
		+ Revise FPS_SUB_XXX databases
    Server: DBFRAUD

	run on master;
*/

use master;
go

declare @synonyms_AIO table (dbname varchar(128), shortname varchar(128), fullname varchar(128));

DECLARE @command varchar(1000)
SELECT @command = 'use [?] select ''[?]'' as dbname
	 , schema_name(schema_id) + ''.'' + name as shortname
     , base_object_name as fullname
	from sys.synonyms 
	where DB_NAME() like ''%FPS_SUB%'';'

insert into @synonyms_AIO
EXEC sp_MSforeachdb @command

select t.*
	,syn.new_fullname,  cmd.command 
from @synonyms_AIO t
cross apply (
	select substring(fullname, CHARINDEX('.', fullname, 1)+1, 128) as new_fullname
) as syn
cross apply (
	select *
	from (values 
		('USE ' + t.dbname + ';'),
		('GO'),
		('DROP SYNONYM ' + t.shortname + ';'),
		('CREATE SYNONYM '+t.shortname+' FOR '+syn.new_fullname+';'),
		('GO')
	) cmd (command)
) as cmd 