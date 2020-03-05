

-- run on each DB: bodb_Licensee, bodb_ost, bodb02, MonDB, ServiceBroker

--check & map orphan users

SELECT dp.type_desc, dp.SID,sp.sid, dp.name AS user_name ,
	'ALTER USER ', dp.name, 'WITH LOGIN = ', sp.name  
FROM sys.database_principals AS dp  
	INNER JOIN sys.server_principals AS sp ON dp.name = sp.name
WHERE sp.sid <> dp.sid 

