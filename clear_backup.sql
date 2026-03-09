EXEC master.dbo.xp_delete_file
0,
N'C:\Backup\',
N'bak',
DATEADD(day,-30 ,GETDATE())
